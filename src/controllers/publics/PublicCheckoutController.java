package controllers.publics;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.CartDao;
import daos.OrdersDao;
import models.Member;
import models.Orders;

public class PublicCheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CartDao cartDao;
	OrdersDao ordersDao;

	public PublicCheckoutController() {
		super();
		cartDao = new CartDao();
		ordersDao = new OrdersDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member userLogin = (Member) session.getAttribute("userLogin");
		if (userLogin == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		} else {
			float totalPrice = cartDao.getTotalPrice(userLogin.getId());
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
