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
import daos.ProductsDAO;
import models.Cart;
import models.Products;

public class PublicIndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductsDAO productDao;
	CartDao cartDao;

	public PublicIndexController() {
		super();
		productDao = new ProductsDAO();
		cartDao = new CartDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Products> listNewProducts = productDao.getNewProducts();
		List<Products> listSaleProducts = productDao.getSaleProducts();
		List<Cart> listCarts = cartDao.findAll();
		request.setAttribute("listNewProducts", listNewProducts);
		request.setAttribute("listSaleProducts", listSaleProducts);
		request.setAttribute("listCarts", listCarts);
		RequestDispatcher rd = request.getRequestDispatcher("/views/public/index.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("aid"));
		Cart card = new Cart(0, new Products(id), 1);
		if (cartDao.add(card) > 0) {
			out.print("ok");

		} else {
			if (cartDao.edit(card) > 0) {
				out.print("ok2");

			} else {
				out.print("nok");

			}
		}
	}

}
