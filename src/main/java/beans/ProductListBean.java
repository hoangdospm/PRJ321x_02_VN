 package beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.Product;

public class ProductListBean {
	public List<Product> getProductList(String type) throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql;
		if (type.equals("all")) {
			sql = "SELECT * FROM Products";
		} else if (type.equals("phone")) {
			sql = "SELECT * FROM Products WHERE product_category = 1";
		} else {
			sql = "SELECT * FROM Products WHERE product_category != 1";
		}
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		List<Product> productList = new ArrayList<>();
		Product newProduct = null;
		while (rs.next()) {
			newProduct = 	new Product(rs.getInt("product_id"),
										rs.getNString("product_name"),
										rs.getNString("product_describe"),
										rs.getNString("product_promotion"),
										rs.getInt("product_price"),
										rs.getString("product_img_source"),
										rs.getString("product_brand"),
										rs.getInt("product_category"),
										rs.getInt("product_rating_number"));
			productList.add(newProduct);
		}
		rs.close();
		stmt.close();
		conn.close();
		return productList;
	}
	
	public int getCountProduct() throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql = "SELECT count(*) as count FROM Products";
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		int count = rs.getInt("count");
		rs.close();
		stmt.close();
		return count;
	}
}
