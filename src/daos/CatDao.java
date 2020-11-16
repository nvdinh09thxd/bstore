package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Categories;
import util.DBConnectionUtil;

public class CatDao extends AbstractDAO {

	public List<Categories> getItems() {
		con = DBConnectionUtil.getConnection();
		List<Categories> listItems = new ArrayList<>();
		String sql = "SELECT * FROM categories ORDER BY id";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Categories item = new Categories(rs.getInt("id"), rs.getInt("parent_id"), rs.getString("name"));
				listItems.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, st, con);
		}
		return listItems;
	}

	public int addItem(Categories item) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO categories (name) VALUES (?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, item.getName());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

	public int delItem(int catId) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "DELETE FROM categories WHERE ID = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, catId);
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

	public Categories getItem(int catId) {
		con = DBConnectionUtil.getConnection();
		Categories item = null;
		String sql = "SELECT * FROM categories WHERE id = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, catId);
			rs = pst.executeQuery();
			if (rs.next()) {
				item = new Categories(rs.getInt("id"), rs.getInt("parent_id"), rs.getString("name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, con);
		}
		return item;
	}

	public int editItem(Categories item) {
		int result = 0;
		con = DBConnectionUtil.getConnection();
		String sql = "UPDATE categories SET name = ? WHERE id = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, item.getName());
			pst.setInt(2, item.getId());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, con);
		}
		return result;
	}

	public int numberOfItems() {
		con = DBConnectionUtil.getConnection();
		String sql = "SELECT COUNT(*) AS count FROM categories";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if (rs.next()) {
				return rs.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, st, con);
		}
		return 0;
	}
}
