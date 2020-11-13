package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Products;
import util.DBConnectionUtil;

public class ProductsDAO extends AbstractDAO {
	public List<Products> getItems() {
		con = DBConnectionUtil.getConnection();
		List<Products> listItems = new ArrayList<>();
		String sql = "SELECT * FROM products ORDER BY id";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Products item = new Products(rs.getInt("id"), rs.getString("name"), rs.getString("picture"), rs.getInt("rating"),
						rs.getFloat("old_price"), rs.getFloat("price"), rs.getInt("preview"), rs.getInt("cat_id"));
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
