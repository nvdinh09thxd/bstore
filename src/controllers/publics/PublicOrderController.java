package controllers.publics;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.CartDao;
import daos.OrdersDao;
import models.Orders;
import models.User;

public class PublicOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CartDao cartDao;
	OrdersDao ordersDao;

	public PublicOrderController() {
		super();
		cartDao = new CartDao();
		ordersDao = new OrdersDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		User userLogin = (User) session.getAttribute("userLogin");
		if (userLogin == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		} else {
			int totalPrice = cartDao.getTotalPrice(userLogin.getId());
			Orders order = new Orders(0, userLogin.getId(), totalPrice, null);
			if (ordersDao.add(order) == 0)
				ordersDao.edit(order);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
