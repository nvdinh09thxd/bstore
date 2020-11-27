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
import models.Member;
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
		request.setAttribute("listNewProducts", listNewProducts);
		request.setAttribute("listSaleProducts", listSaleProducts);
		RequestDispatcher rd = request.getRequestDispatcher("/views/public/index.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int idPro = Integer.parseInt(request.getParameter("aidPro"));
		int idMember = Integer.parseInt(request.getParameter("aidMember"));
		Cart card = new Cart(0, new Products(idPro), 1, new Member(idMember), null);
		if (cartDao.add(card) > 0) {
			List<Cart> listCarts = cartDao.findCartByMember(idMember);
			out.print(listCarts.size());
		} else {
			if (cartDao.edit(card) > 0) {
				List<Cart> listCarts = cartDao.findCartByMember(idMember);
				out.print(listCarts.size());
			} else {
				out.print("Xảy ra lỗi!");
			}
		}
	}

}
