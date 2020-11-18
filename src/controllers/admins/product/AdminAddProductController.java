package controllers.admins.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import constants.GlobalConstant;
import daos.CatDao;
import daos.ProductsDAO;
import models.Categories;
import models.Products;
import util.FileUtil;

@MultipartConfig
public class AdminAddProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductsDAO proDao;
	CatDao catDao;

	public AdminAddProductController() {
		super();
		proDao = new ProductsDAO();
		catDao = new CatDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Categories> listCats = catDao.findAll();
		request.setAttribute("listCats", listCats);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/product/add.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String name = request.getParameter("name");
		int idCat =Integer.parseInt(request.getParameter("category"));
		float price = Float.parseFloat(request.getParameter("price"));
		String preview = request.getParameter("preview");
		String detail = request.getParameter("detail");
		
		String fileName = FileUtil.uploadFile(request, "picture", GlobalConstant.DIR_UPLOAD);

		Products product = new Products(0, name, fileName, 0, (float) 0.0, price, 0, new Categories(idCat, 0, ""));

		if (proDao.addPro(product) > 0) {
			response.sendRedirect(request.getContextPath() + "/admin/product/index?msg=1");
		} else {
			System.out.println("no");
		}

	}

}
