package daos;

import java.sql.SQLException;

import models.Orders;
import models.ProDetail;
import util.DBConnectionUtil;

public class OrdersDao extends AbstractDAO {

	public int add(Orders order) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO orders (id_user, total) VALUES (?, ?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, order.getIdUser());
			pst.setFloat(2, order.getTotal());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

	public int edit(ProDetail pro) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "UPDATE cart SET counter = counter + 1 WHERE id_pro = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, pro.getPro().getId());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

}
