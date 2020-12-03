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

import models.Cart;
import models.Member;

public class PublicCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	float totalPrice = 0;
	List<Cart> listCarts = new ArrayList<>();

	public PublicCartController() {
		super();
	}

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		totalPrice = 0;
		try {
			int id = Integer.parseInt(request.getParameter("aid"));
			listCarts.removeIf(obj -> obj.getId() == id);
		} catch (Exception e) {
		}
		Member userLogin = (Member) session.getAttribute("userLogin");
		if (userLogin == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		listCarts = (List<Cart>) session.getAttribute("listCarts");
		for (Cart objCart : listCarts) {
			totalPrice += objCart.getPro().getPrice() * objCart.getCounter();
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
			int num = Integer.parseInt(request.getParameter("anum"));

			List<Integer> listNum = new ArrayList<>();
			for (Cart objCart : listCarts) {
				if (objCart.getPro().getId() == idPro) {
					if (num == 1) {
						objCart.setCounter(objCart.getCounter() + 1);
						totalPrice += objCart.getPro().getPrice();
						listNum.add(objCart.getCounter());
					} else if (objCart.getCounter() > 0) {
						objCart.setCounter(objCart.getCounter() - 1);
						totalPrice -= objCart.getPro().getPrice();
						listNum.add(objCart.getCounter());
					} else {
						out.print(listNum);
					}
				}
			}
			int totalPriceInt = (int) totalPrice;
			listNum.add(totalPriceInt);
			out.print(listNum);
		}
	}
}
