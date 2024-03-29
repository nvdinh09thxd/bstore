package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import models.Categories;
import models.Products;
import util.DBConnectionUtil;

public class ProductsDAO extends AbstractDAO {

	public List<Products> getNewProducts() {
		con = DBConnectionUtil.getConnection();
		List<Products> listItems = new ArrayList<>();
		String sql = "SELECT * FROM products p JOIN categories c ON p.cat_id = c.id WHERE c.parent_id = 1 ORDER BY p.id";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN " + rs.getString("picture");
				st2 = con.createStatement();
				rs2 = st2.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				Products item = new Products(rs.getInt("id"), rs.getString("name"), arPictures, rs.getInt("rating"),
						rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("number"),
						new Categories(rs.getInt("cat_id"), rs.getInt("parent_id"), rs.getString("c.name")));
				listItems.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, rs2, st2, st, con);
		}
		return listItems;
	}

	public List<Products> getSaleProducts() {
		con = DBConnectionUtil.getConnection();
		List<Products> listItems = new ArrayList<>();
		String sql = "SELECT * FROM products p JOIN categories c ON p.cat_id = c.id WHERE c.parent_id = 2 ORDER BY p.id";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN " + rs.getString("picture");
				st2 = con.createStatement();
				rs2 = st2.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				Products item = new Products(rs.getInt("id"), rs.getString("name"), arPictures, rs.getInt("rating"),
						rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("number"),
						new Categories(rs.getInt("cat_id"), rs.getInt("parent_id"), rs.getString("c.name")));
				listItems.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, st, con);
		}
		return listItems;
	}

	public List<Products> getProductsByIdCat(int catId) {
		con = DBConnectionUtil.getConnection();
		List<Products> listItems = new ArrayList<>();
		String sql = "SELECT * FROM products p JOIN categories c ON p.cat_id = c.id WHERE p.cat_id = ? ORDER BY p.id";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, catId);
			rs = pst.executeQuery();
			while (rs.next()) {
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN " + rs.getString("picture");
				st2 = con.createStatement();
				rs2 = st2.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				Products item = new Products(rs.getInt("id"), rs.getString("name"), arPictures, rs.getInt("rating"),
						rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("number"),
						new Categories(rs.getInt("cat_id"), rs.getInt("parent_id"), rs.getString("c.name")));
				listItems.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, con);
		}
		return listItems;
	}

	public Products getProduct(int id) {
		Products itemPro = null;
		con = DBConnectionUtil.getConnection();
		String sql = "SELECT * FROM products p JOIN categories c ON p.cat_id = c.id WHERE p.id = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN " + rs.getString("picture");
				st2 = con.createStatement();
				rs2 = st2.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				itemPro = new Products(rs.getInt("id"), rs.getString("name"), arPictures, rs.getInt("rating"),
						rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("number"),
						new Categories(rs.getInt("cat_id"), rs.getInt("parent_id"), rs.getString("c.name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, con);
		}
		return itemPro;
	}

	public List<Products> findAll() {
		con = DBConnectionUtil.getConnection();
		List<Products> listItems = new ArrayList<>();
		String sql = "SELECT * FROM products p JOIN categories c ON p.cat_id = c.id ORDER BY p.id";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN " + rs.getString("picture");
				st2 = con.createStatement();
				rs2 = st2.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				Products item = new Products(rs.getInt("id"), rs.getString("name"), arPictures, rs.getInt("rating"),
						rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("number"),
						new Categories(rs.getInt("cat_id"), rs.getInt("parent_id"), rs.getString("c.name")));
				listItems.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, st, con);
		}
		return listItems;
	}

	public int addPro(Products product) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sqlPro = "INSERT INTO products (name, picture, price, cat_id) VALUES (?, ?, ?, ?)";

		try {
			String picture = "(";
			String newPic = "";
			for (String obj : product.getArPicture()) {
				String sqlPic = "INSERT INTO product_detail (name) VALUES (?)";
				pst = con.prepareStatement(sqlPic);
				pst.setString(1, obj);
				pst.executeUpdate();
				String sqlSel = "SELECT id FROM product_detail ORDER BY id DESC LIMIT 1";
				st = con.createStatement();
				rs = st.executeQuery(sqlSel);
				while (rs.next()) {
					picture += rs.getInt("id") + ",";
				}
			}
			int idx = picture.length() - 1;
			newPic = picture.substring(0, idx) + ')' + picture.substring(idx + 1);

			pst2 = con.prepareStatement(sqlPro);
			pst2.setString(1, product.getName());
			pst2.setString(2, newPic);
			pst2.setFloat(3, product.getPrice());
			pst2.setInt(4, product.getCat().getId());
			result = pst2.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

	public int updateNumber(Products pro) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sqlPro = "UPDATE products SET number = number - ? WHERE id = ?";

		try {
			pst = con.prepareStatement(sqlPro);
			pst.setInt(1, pro.getNumber());
			pst.setInt(2, pro.getId());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;

	}

	public int editPro(Products product) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sqlPro = "UPDATE products SET name = ?, picture = ?, price = ?, cat_id = ? WHERE id = ?";

		try {
			ArrayList<String> arPicture = new ArrayList<>(); 
			String sqlPic = "SELECT picture FROM products WHERE id = ?";
			pst = con.prepareStatement(sqlPic);
			pst.setInt(1, product.getId());
			rs = pst.executeQuery();
			
			if (rs.next()) {
				String ar = rs.getString("picture");
				String arP = ar.substring(1, ar.length()-1);
				arPicture = new ArrayList<String>(Arrays.asList(arP.split(",")));
			}
			String delPic = "DELETE FROM product_detail WHERE id = ?";
			for (String pic : arPicture) {
				pst = con.prepareStatement(delPic);
				pst.setString(1, pic);
				pst.executeUpdate();
			}
			
			String picture = "(";
			String newPic = "";
			for (String obj : product.getArPicture()) {
				String sqlPicIns = "INSERT INTO product_detail (name) VALUES (?)";
				pst = con.prepareStatement(sqlPicIns);
				pst.setString(1, obj);
				pst.executeUpdate();
				String sqlSel = "SELECT id FROM product_detail ORDER BY id DESC LIMIT 1";
				st = con.createStatement();
				rs = st.executeQuery(sqlSel);
				while (rs.next()) {
					picture += rs.getInt("id") + ",";
				}
			}
			int idx = picture.length() - 1;
			newPic = picture.substring(0, idx) + ')' + picture.substring(idx + 1);

			pst2 = con.prepareStatement(sqlPro);
			pst2.setString(1, product.getName());
			pst2.setString(2, newPic);
			pst2.setFloat(3, product.getPrice());
			pst2.setInt(4, product.getCat().getId());
			pst2.setInt(5, product.getId());
			result = pst2.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}
}
