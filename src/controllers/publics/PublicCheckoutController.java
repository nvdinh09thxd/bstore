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

import daos.OrdersDao;
import models.Cart;
import models.Member;
import models.Orders;

public class PublicCheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrdersDao ordersDao;

	public PublicCheckoutController() {
		super();
		ordersDao = new OrdersDao();
	}

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Cart> listCarts = new ArrayList<>();
		float totalPrice = 0;
		Member userLogin = (Member) session.getAttribute("userLogin");
		if (userLogin == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		} else {
			listCarts = (List<Cart>) session.getAttribute("listCarts");
			for (Cart objCart : listCarts) {
				totalPrice += objCart.getPro().getPrice() * objCart.getCounter();
			}
			request.setAttribute("totalPrice", totalPrice);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/public/checkout-shipping.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		int idMember = Integer.parseInt(request.getParameter("id"));
		String note = request.getParameter("note");
		float total = Float.parseFloat(request.getParameter("total"));
		Orders order = new Orders(0, new Member(idMember), total, note, null, true);
		if (ordersDao.add(order) == 0)
			ordersDao.edit(order);
		response.sendRedirect(request.getContextPath() + "/index?msg=2");
	}

}
