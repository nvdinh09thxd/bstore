package controllers.publics;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.ProDetailDao;
import daos.ProductsDAO;
import models.ProDetail;
import models.Products;

public class PublicDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductsDAO proDao;
	ProDetailDao proDetailDao;

	public PublicDetailController() {
		super();
		proDao = new ProductsDAO();
		proDetailDao = new ProDetailDao();
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
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("aid"));
		String review = request.getParameter("areview");
		System.out.println(review);
		ProDetail pro = new ProDetail(0, new Products(id), "", review);
		if (proDetailDao.add(pro) > 0) {
			out.print("Đã lưu!");
		} else {
			out.print("Xảy ra lỗi!");
		}
	}

}
