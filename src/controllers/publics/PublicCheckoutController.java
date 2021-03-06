package controllers.publics;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.CartDao;
import daos.OrdersDao;
import daos.ProductsDAO;
import models.Cart;
import models.Member;
import models.Orders;
import models.Products;

public class PublicCheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrdersDao ordersDao;
	CartDao cartDao;
	ProductsDAO proDao;
	List<Cart> listCarts;

	public PublicCheckoutController() {
		super();
		ordersDao = new OrdersDao();
		cartDao = new CartDao();
		proDao = new ProductsDAO();
		listCarts = new ArrayList<>();
	}

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		float totalPrice = 0;
		Member userLogin = (Member) session.getAttribute("userLogin");
		if (userLogin == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		listCarts = (List<Cart>) session.getAttribute("listCarts");
		for (Cart objCart : listCarts) {
			totalPrice += objCart.getPro().getPrice() * objCart.getNumber();
		}
		request.setAttribute("totalPrice", totalPrice);
		RequestDispatcher rd = request.getRequestDispatcher("/views/public/shipping.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		Member userLogin = (Member) session.getAttribute("userLogin");
		if (userLogin == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		int idMember = Integer.parseInt(request.getParameter("id"));
		String note = request.getParameter("note");
		float total = Float.parseFloat(request.getParameter("total"));
		Orders order = new Orders(0, new Member(idMember), total, note, null, true);
		int idOrder = ordersDao.add(order);
		for (Cart objCart : listCarts) {
			objCart.getOrder().setId(idOrder);
			cartDao.add(objCart);
			Products pro = new Products(objCart.getPro().getId(), objCart.getNumber());
			proDao.updateNumber(pro);
		}
		session.removeAttribute("listCarts");
		response.sendRedirect(request.getContextPath() + "/index?msg=2");
	}

}
