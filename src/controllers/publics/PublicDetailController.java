package controllers.publics;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.ProductsDAO;
import models.Products;

public class PublicDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductsDAO proDao;

	public PublicDetailController() {
		super();
		proDao = new ProductsDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (Exception e) {
		}
		Products itemPro = proDao.getProduct(id);
		request.setAttribute("itemPro", itemPro);
		RequestDispatcher rd = request.getRequestDispatcher("/views/public/single-product.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
