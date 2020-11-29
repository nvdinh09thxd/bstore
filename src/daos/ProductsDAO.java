package daos;

import java.sql.SQLException;
import java.util.ArrayList;
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
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN "+rs.getString("picture");
				st2 = con.createStatement();
				rs2 = st2.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				Products item = new Products(rs.getInt("id"), rs.getString("name"), arPictures,
						rs.getInt("rating"), rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("preview"),
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

	public List<Products> getSaleProducts() {
		con = DBConnectionUtil.getConnection();
		List<Products> listItems = new ArrayList<>();
		String sql = "SELECT * FROM products p JOIN categories c ON p.cat_id = c.id WHERE c.parent_id = 2 ORDER BY p.id";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN "+rs.getString("picture");
				st2 = con.createStatement();
				rs2 = st2.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				Products item = new Products(rs.getInt("id"), rs.getString("name"), arPictures,
						rs.getInt("rating"), rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("preview"),
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
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN "+rs.getString("picture");
				st2 = con.createStatement();
				rs2 = st2.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				Products item = new Products(rs.getInt("id"), rs.getString("name"), arPictures,
						rs.getInt("rating"), rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("preview"),
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
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN "+rs.getString("picture");
				st2 = con.createStatement();
				rs2 = st2.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				itemPro = new Products(rs.getInt("id"), rs.getString("name"), arPictures,
						rs.getInt("rating"), rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("preview"),
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
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN "+rs.getString("picture");
				st2 = con.createStatement();
				rs2 = st2.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				Products item = new Products(rs.getInt("id"), rs.getString("name"), arPictures,
						rs.getInt("rating"), rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("preview"),
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

//	public int addPro(Products product) {
//		int result = 0;
//		con = DBConnectionUtil.getConnection();
//		String sql = "INSERT INTO products (name, old_price, price, cat_id) VALUES (?, ?, ?, ?)";
//		
//		try {
//			System.out.println(product.getArPicture().get(0));
//			for (String obj : product.getArPicture()) {
//				String sqlInsert = "INSERT INTO product_detail (name) VALUES (?)";
//			}
//			
////			pst = con.prepareStatement(sql);
////			pst.setString(1, product.getName());
//////			pst.setString(2, product.getPicture());
////			pst.setFloat(2, product.getOldPrice());
////			pst.setFloat(3, product.getPrice());
////			pst.setInt(4, product.getCat().getId());
////			result = pst.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			DBConnectionUtil.close(pst, con);
//		}
//		return result;
//	}
}
