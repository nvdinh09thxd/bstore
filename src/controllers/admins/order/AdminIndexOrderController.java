package controllers.admins.order;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.OrdersDao;
import models.Orders;

public class AdminIndexOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrdersDao ordersDao;

	public AdminIndexOrderController() {
		super();
		ordersDao = new OrdersDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Orders> listOrders = ordersDao.findAll();
		request.setAttribute("listOrders", listOrders);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/order/index.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("aid"));
		String src = request.getParameter("asrc");
		int idx = src.lastIndexOf("/");
		String linkUrl = src.substring(0, idx + 1);
		String picName = src.substring(idx + 1);
		String fileName = "";
		boolean active = true;
		if (picName.equals("tick.png")) {
			fileName = linkUrl + "cancel.png";
			active = false;
		} else {
			fileName = linkUrl + "tick.png";
		}
		
		Orders order = new Orders(id, active);
		if (ordersDao.changeStt(order) > 0) {
			out.print(fileName);
		} else {
			out.print(src);
		}
	}

}