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

import daos.ProductsDAO;
import models.Cart;
import models.Orders;
import models.Products;

public class PublicIndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductsDAO productDao;
	List<Cart> listCarts;
	List<Products> listNewProducts;
	List<Products> listSaleProducts;

	public PublicIndexController() {
		super();
		productDao = new ProductsDAO();
		listNewProducts = new ArrayList<>();
		listSaleProducts = new ArrayList<>();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("listCarts") == null) {
			listCarts = new ArrayList<>();
		}
		if (listNewProducts.size() == 0) {
			listNewProducts = productDao.getNewProducts();
		}
		if (listSaleProducts.size() == 0) {
			listSaleProducts = productDao.getSaleProducts();
		}
		request.setAttribute("listNewProducts", listNewProducts);
		request.setAttribute("listSaleProducts", listSaleProducts);
		RequestDispatcher rd = request.getRequestDispatcher("/views/public/index.jsp");
		rd.forward(request, response);
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int idx = 0;

		if (session.getAttribute("listCarts") != null) {
			listCarts = (List<Cart>) session.getAttribute("listCarts");
			idx = listCarts.size();
		}
		int idPro = Integer.parseInt(request.getParameter("aidPro"));
		Products pro = productDao.getProduct(idPro);
		boolean check = false;
		// Kiểm tra sản phẩm đã có trong giỏ hàng chưa?
		// Nếu đã có thì tăng số lượng lên 1
		for (Cart objCart : listCarts) {
			if (objCart.getPro().getId() == idPro) {
				objCart.setNumber(1 + objCart.getNumber());
				check = true;
				break;
			}
		}
		// Nếu chưa có thì thêm vào giỏ hàng
		if (!check) {
			Cart cart = new Cart(idx, pro, 1, new Orders());
			listCarts.add(cart);
		}
		if (session.getAttribute("listCarts") == null) {
			session.setAttribute("listCarts", listCarts);
		}
		out.print(listCarts.size());
	}
}
