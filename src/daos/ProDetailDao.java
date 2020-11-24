package daos;

import java.sql.SQLException;

import models.ProDetail;
import util.DBConnectionUtil;

public class ProDetailDao extends AbstractDAO {

	public int add(ProDetail pro) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO product_detail (id_pro, review) VALUES (?, ?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, pro.getPro().getId());
			pst.setString(2, pro.getReview());
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
