package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Revenue;
import models.User;
import util.DBConnectionUtil;

public class RevenueDao extends AbstractDAO {

	public List<Revenue> findAll() {
		con = DBConnectionUtil.getConnection();
		List<Revenue> listItems = new ArrayList<>();
		String sql = "SELECT * FROM revenue r JOIN users u ON r.id_user = u.id ORDER BY r.id";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Revenue item = new Revenue(rs.getInt("r.id"), rs.getFloat("total"), rs.getTimestamp("date"),
						new User(rs.getInt("id_user"), "", "", rs.getString("u.fullname")));
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
