package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Cart;
import models.Products;
import util.DBConnectionUtil;

public class CartDao extends AbstractDAO {

	public int add(Cart card) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO cart (id_pro, number, id_order) VALUES (?, ?, ?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, card.getPro().getId());
			pst.setInt(2, card.getNumber());
			pst.setInt(3, card.getOrder().getId());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

	public List<Cart> getItemsByOrderId(int id) {
		con = DBConnectionUtil.getConnection();
		List<Cart> listItems = new ArrayList<>();
		String sql = "SELECT * FROM cart c JOIN products p ON c.id_pro = p.id WHERE id_order = ? ORDER BY c.id";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				String sqlPicture = "SELECT * FROM product_detail WHERE id IN " + rs.getString("picture");
				st = con.createStatement();
				rs2 = st.executeQuery(sqlPicture);
				ArrayList<String> arPictures = new ArrayList<>();
				while (rs2.next()) {
					arPictures.add(rs2.getString("name"));
				}
				Cart item = new Cart(rs.getInt("id"),
						new Products(rs.getString("name"), arPictures, rs.getFloat("price")), rs.getInt("number"));
				listItems.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, con);
		}
		return listItems;
	}
}
