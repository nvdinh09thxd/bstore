package controllers.publics;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.CartDao;
import models.Cart;
import models.Member;
import models.Products;

public class PublicCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CartDao cartDao;

	public PublicCartController() {
		super();
		cartDao = new CartDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			int id = Integer.parseInt(request.getParameter("aid"));
			cartDao.delete(id);
		} catch (Exception e) {
		}
		Member userLogin = (Member) session.getAttribute("userLogin");
		if (userLogin != null) {
			List<Cart> listCarts = cartDao.findCartByMember(userLogin.getId());
			request.setAttribute("listCarts", listCarts);
		} else {
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/public/cart.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member userLogin = (Member) session.getAttribute("userLogin");
		if (userLogin == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		} else {
			PrintWriter out = response.getWriter();
			int idPro = Integer.parseInt(request.getParameter("aidPro"));
			int idMember = Integer.parseInt(request.getParameter("aidMember"));
			int num = Integer.parseInt(request.getParameter("anum"));
			Cart cart = new Cart(0, new Products(idPro), 0, new Member(idMember), null);
			List<Integer> listNum = new ArrayList<>();
			if (num == 1) {
				cartDao.increase(cart);
				int counter = cartDao.getCounter(idPro, idMember);
				int totalPrice = cartDao.getTotalPrice(userLogin.getId());
				listNum.add(counter);
				listNum.add(totalPrice);
				out.print(listNum);
			} else if (cartDao.getCounter(idPro, idMember) > 0) {
				cartDao.reduce(cart);
				int counter = cartDao.getCounter(idPro, idMember);
				int totalPrice = cartDao.getTotalPrice(userLogin.getId());
				listNum.add(counter);
				listNum.add(totalPrice);
				out.print(listNum);
			} else {
				out.print(listNum);
			}
		}
	}

}