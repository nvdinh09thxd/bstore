package controllers.admins.report;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.ProductsDAO;
import models.Products;

public class AdminReportProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductsDAO proDao;

	public AdminReportProductController() {
		super();
		proDao = new ProductsDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Products> listProducts = proDao.findAll();
		request.setAttribute("listProducts", listProducts);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/report/report.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
