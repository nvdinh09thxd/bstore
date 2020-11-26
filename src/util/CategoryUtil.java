package util;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import daos.CatDao;
import models.Categories;

public class CategoryUtil {

	// Hiển thị danh mục đa cấp
	public static void showCat(HttpServletRequest request, JspWriter out, int parentId, String menu)
			throws IOException {
		CatDao catDao = new CatDao();
		ArrayList<Categories> listCatCon = catDao.getCatParent(parentId);
		if (listCatCon.size() > 0) {
			out.println("<ul>");
			for (Categories cat : listCatCon) {
				out.println("<li><a href='" + request.getContextPath() + "/cat?cid=" + cat.getId() + "'>" + menu + cat.getName() + "</a>");
				showCat(request, out, cat.getId(), menu + "|---"); // đệ quy
			}
			out.println("</ul>");
		} else {
			out.println("</li>");
		}
	}
}
