package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Member;
import models.Orders;
import util.DBConnectionUtil;

public class OrdersDao extends AbstractDAO {

	public int add(Orders order) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO orders (id_member, total, note) VALUES (?, ?, ?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, order.getMember().getId());
			pst.setFloat(2, order.getTotal());
			pst.setString(3, order.getNote());
			pst.executeUpdate();
			String sqlSelect = "SELECT id FROM orders ORDER BY id DESC LIMIT 1";
			st = con.createStatement();
			rs = st.executeQuery(sqlSelect);
			if(rs.next()) {
				return rs.getInt("id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

	public List<Orders> findAll() {
		con = DBConnectionUtil.getConnection();
		List<Orders> listItems = new ArrayList<>();
		String sql = "SELECT * FROM orders o JOIN members m ON o.id_member = m.id ORDER BY o.id";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Orders item = new Orders(rs.getInt("id"), new Member(rs.getString("firstname"), rs.getString("lastname")),
						rs.getFloat("total"), rs.getString("note"), rs.getTimestamp("date"), rs.getBoolean("status"));
				listItems.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, st, con);
		}
		return listItems;
	}

	public int changeStt(Orders order, int idUser) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sqlStatus = "UPDATE orders SET status = ? WHERE id = ?";
		String sqlInsert = "INSERT INTO revenue (total, id_user) VALUES (?, ?)";
		try {
			pst = con.prepareStatement(sqlStatus);
			pst.setBoolean(1, order.isStatus());
			pst.setInt(2, order.getId());
			pst.executeUpdate();
			
			pst = con.prepareStatement(sqlInsert);
			pst.setFloat(1, order.getTotal());
			pst.setInt(2, idUser);
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

}
