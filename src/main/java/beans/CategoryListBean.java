package beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.Category;

public class CategoryListBean {
	public List<Category> getCategoryList() throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql = "SELECT * FROM Category";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		List<Category> categoryList = new ArrayList<>();
		Category newCategory = null;
		while (rs.next()) {
			newCategory = new Category(rs.getInt("category_id"), rs.getNString("category_name"));
			categoryList.add(newCategory);
		}
		rs.close();
		stmt.close();
		conn.close();
		return categoryList;
	}
}
