package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Cart;
import models.Products;
import models.User;
import util.DBConnectionUtil;

public class CartDao extends AbstractDAO {

	public List<Cart> findCartByUser(int idUser) {
		con = DBConnectionUtil.getConnection();
		List<Cart> listItems = new ArrayList<>();
		String sql = "SELECT * FROM cart c JOIN products p ON c.id_pro = p.id WHERE id_user = ? ORDER BY c.id";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, idUser);
			rs = pst.executeQuery();
			while (rs.next()) {
				Cart item = new Cart(rs.getInt("id"), new Products(rs.getInt("p.id"), rs.getString("name"),
						rs.getString("picture"), rs.getFloat("price")), rs.getInt("counter"),
						new User(rs.getInt("id_user")), rs.getTimestamp("date"));
				listItems.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, con);
		}
		return listItems;
	}

	public int add(Cart card) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO cart (id_pro, id_user) VALUES (?, ?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, card.getPro().getId());
			pst.setInt(2, card.getUser().getId());
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
		String sql = "UPDATE cart SET counter = counter + 1 WHERE id_pro = ? AND id_user = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, card.getPro().getId());
			pst.setInt(2, card.getUser().getId());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

	public void increase(Cart cart) {
		con = DBConnectionUtil.getConnection();
		String sql = "UPDATE cart SET counter = counter + 1 WHERE id_pro = ? AND id_user = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, cart.getPro().getId());
			pst.setInt(2, cart.getUser().getId());
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
	}
	
	public void reduce(Cart cart) {
		con = DBConnectionUtil.getConnection();
		String sql = "UPDATE cart SET counter = counter - 1 WHERE id_pro = ? AND id_user = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, cart.getPro().getId());
			pst.setInt(2, cart.getUser().getId());
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
	}

	public int getCounter(int idPro, int idUser) {
		con = DBConnectionUtil.getConnection();
		String sql = "SELECT counter FROM cart WHERE id_pro = ? AND id_user = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, idPro);
			pst.setInt(2, idUser);
			rs = pst.executeQuery();
			while (rs.next()) {
				return rs.getInt("counter");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, con);
		}
		return 0;
	}

	public void delete(int id) {
		con = DBConnectionUtil.getConnection();
		String sql = "DELETE FROM cart WHERE id = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, con);
		}
	}

	public int getTotalPrice(int idUser) {
		con = DBConnectionUtil.getConnection();
		String sql = "SELECT SUM(p.price*c.counter) AS total FROM cart c JOIN products p ON c.id_pro = p.id WHERE id_user = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, idUser);
			rs = pst.executeQuery();
			while (rs.next()) {
				return rs.getInt("total");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, con);
		}
		return 0;
	}

}
