package controllers.admins.order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.CartDao;
import models.Cart;

public class AdminDetailOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CartDao cartDao;

	public AdminDetailOrderController() {
		super();
		cartDao = new CartDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		List<Cart> listCart = cartDao.getItemsByOrderId(id);
		request.setAttribute("listCart", listCart);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/order/order_detail.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
