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
				Products item = new Products(rs.getInt("id"), rs.getString("name"), rs.getString("picture"),
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
				Products item = new Products(rs.getInt("id"), rs.getString("name"), rs.getString("picture"),
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
}
