package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Cart;
import models.Products;
import util.DBConnectionUtil;

public class CartDao extends AbstractDAO {

	public List<Cart> findAll() {
		con = DBConnectionUtil.getConnection();
		List<Cart> listItems = new ArrayList<>();
		String sql = "SELECT * FROM cart c JOIN products p ON c.id_pro = p.id ORDER BY c.id";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Cart item = new Cart(rs.getInt("id"),
						new Products(rs.getInt("id"), rs.getString("name"), rs.getString("picture"), rs.getFloat("price")),
						rs.getInt("counter"));
				listItems.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, st, con);
		}
		return listItems;
	}

	public int add(Cart card) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO cart (id_pro) VALUES (?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, card.getPro().getId());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

	public int edit(Cart card) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "UPDATE cart SET counter = counter + 1 WHERE id_pro = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, card.getPro().getId());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

}
