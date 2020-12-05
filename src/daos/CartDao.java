package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Cart;
import models.Member;
import models.Products;
import util.DBConnectionUtil;

public class CartDao extends AbstractDAO {

	public int addList(List<Cart> listCarts) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO cart (id_pro, counter, id_member) VALUES (?, ?, ?)";
		try {
			pst = con.prepareStatement(sql);
			for (Cart objCart : listCarts) {
				pst.setInt(1, objCart.getPro().getId());
				pst.setInt(2, objCart.getCounter());
				pst.setInt(3, objCart.getMember().getId());
				result = pst.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

	public int add(Cart card) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO cart (id_pro, counter, id_member, id_order) VALUES (?, ?, ?, ?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, card.getPro().getId());
			pst.setInt(2, card.getCounter());
			pst.setInt(3, card.getMember().getId());
			pst.setInt(4, card.getOrderId());
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
		String sql = "UPDATE cart SET counter = ? WHERE id_pro = ? AND id_member = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, card.getCounter());
			pst.setInt(2, card.getPro().getId());
			pst.setInt(3, card.getMember().getId());
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
				Cart item = new Cart(rs.getInt("id"), new Products(rs.getString("name"), arPictures, rs.getFloat("price")),
						rs.getInt("counter"), new Member(rs.getInt("id_member")), rs.getInt("id_order"));
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
