package controllers.publics;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.ProductsDAO;
import models.Products;

public class PublicCatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductsDAO proDao;

	public PublicCatController() {
		super();
		proDao = new ProductsDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		int catId = 0;
		try {
			catId = Integer.parseInt(request.getParameter("cid"));
		} catch (Exception e) {
		}
		List<Products> listProductsByIdCat = proDao.getProductsByIdCat(catId);
		request.setAttribute("listProductsByIdCat", listProductsByIdCat);
		RequestDispatcher rd = request.getRequestDispatcher("/views/public/shop-gird.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
