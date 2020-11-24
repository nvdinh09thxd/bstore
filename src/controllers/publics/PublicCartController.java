package controllers.publics;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.CartDao;
import models.Cart;

public class PublicCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CartDao cartDao;

	public PublicCartController() {
		super();
		cartDao = new CartDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("aid"));
			cartDao.delete(id);
		} catch (Exception e) {}
		List<Cart> listCarts = cartDao.findAll();
		request.setAttribute("listCarts", listCarts);
		RequestDispatcher rd = request.getRequestDispatcher("/views/public/cart.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("aid"));
		int num = Integer.parseInt(request.getParameter("anum"));
		Cart cart = new Cart(id, null, 0);
		if (num == 1) {
			cartDao.increase(cart);
			int counter = cartDao.getCounter(id);
			out.print(counter);
		} else if (cartDao.getCounter(id) > 0) {
			cartDao.reduce(cart);
			int counter = cartDao.getCounter(id);
			out.print(counter);
		} else {
			out.print(0);
		}
	}

}
