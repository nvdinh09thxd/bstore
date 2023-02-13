package controllers.admins.report;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.RevenueDao;
import models.Revenue;

public class AdminReportRevenueController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RevenueDao revDao;

	public AdminReportRevenueController() {
		super();
		revDao = new RevenueDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Revenue> listRevenues = revDao.findAll();
		request.setAttribute("listRevenues", listRevenues);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/report/revenue.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
