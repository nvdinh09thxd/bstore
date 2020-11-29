package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Categories;
import util.DBConnectionUtil;

public class CatDao extends AbstractDAO {

	public List<Categories> findNew() {
		con = DBConnectionUtil.getConnection();
		List<Categories> listItems = new ArrayList<>();
		String sql = "SELECT * FROM categories WHERE parent_id = 1 ORDER BY id";
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

	public List<Categories> findSale() {
		con = DBConnectionUtil.getConnection();
		List<Categories> listItems = new ArrayList<>();
		String sql = "SELECT * FROM categories WHERE parent_id = 2 ORDER BY id";
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

	public List<Categories> findAll() {
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

	public ArrayList<Categories> getCatParent(int id) {
		ArrayList<Categories> listCat = new ArrayList<>();
		con = DBConnectionUtil.getConnection();
		String sql = "SELECT * FROM categories WHERE parent_id = ? ORDER BY id DESC";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			while (rs.next()) {
				Categories objCat = new Categories(rs.getInt("id"), rs.getInt("parent_id"), rs.getString("name"));
				listCat.add(objCat);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, con);
		}
		return listCat;
	}

	public List<Categories> findParent() {
		con = DBConnectionUtil.getConnection();
		List<Categories> listItems = new ArrayList<>();
		String sql = "SELECT * FROM categories WHERE parent_id != 0 ORDER BY id";
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

}
