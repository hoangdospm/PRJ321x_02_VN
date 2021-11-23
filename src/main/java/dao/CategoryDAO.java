package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.DBContext;
import model.Category;

public class CategoryDAO {
	public Category searchCategoryById(String id) throws Exception  {
		Connection conn = new DBContext().getConnection();
		String sql = "SELECT * FROM Category WHERE category_id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, id);
		ResultSet rs = stmt.executeQuery();
		Category newCategory = null;
		while (rs.next()) {
			newCategory = new Category(rs.getInt("category_id"), rs.getNString("category_name"));
		}
		stmt.close();
		conn.close();
		return newCategory;
	}
}
