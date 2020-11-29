package controllers.admins.product;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import constants.GlobalConstant;
import daos.CatDao;
import daos.ProductsDAO;
import models.Categories;
import models.Products;
import util.FileUtil;

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
		List<Categories> listCats = catDao.findParent();
		request.setAttribute("listCats", listCats);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/product/add.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String name = "";
		int idCat = 0;
		float price = 0;

		ArrayList<String> arPictures = new ArrayList<>();
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {
			String root = getServletContext().getRealPath("/");
			File path = new File(root + GlobalConstant.DIR_UPLOAD);
			if (!path.exists()) {
				path.mkdirs();
			}
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				List<FileItem> items = upload.parseRequest(request);
				Iterator<FileItem> iterator = items.iterator();
				while (iterator.hasNext()) {
					FileItem item = (FileItem) iterator.next();
					if (!item.isFormField()) {
						String fileName = FileUtil.rename(item.getName());
						File uploadedFile = new File(path + File.separator + fileName);
						if (fileName != "") {
							item.write(uploadedFile);
							arPictures.add(fileName);
						} else {
							System.out.println("file not found");
						}
					} else {
						if (item.getFieldName().equals("name")) {
							name = item.getString();
						}
						if (item.getFieldName().equals("category")) {
							idCat = Integer.parseInt(item.getString());
						}
						if (item.getFieldName().equals("price")) {
							price = Float.parseFloat(item.getString());
						}
					}
				}
			} catch (FileUploadException e) {
				System.out.println(e);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else {
			System.out.println("Not Multipart");
		}

		Products product = new Products(0, name, arPictures, 0, (float) 0.0, price, 0, new Categories(idCat, 0, ""));

		if (proDao.addPro(product) > 0) {
			response.sendRedirect(request.getContextPath() + "/admin/product/index?msg=1");
		} else {
			System.out.println("no");
		}

	}

}
