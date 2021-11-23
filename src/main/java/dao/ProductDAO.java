package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.Product;

public class ProductDAO {
	
	public Product searchProductById(int id) throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql = "SELECT * FROM Products WHERE product_id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		
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
		}
		
		rs.close();
		stmt.close();
		conn.close();
		return newProduct;
	}
	
	public List<Product> searchProductByName(String productName) throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql = "SELECT * FROM Products WHERE product_name LIKE N'%"+productName+"%'";
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();

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
	
	public List<Product> searchProductByCategory(String category) throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql = "SELECT * FROM Products WHERE product_category=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1,category);
		ResultSet rs = stmt.executeQuery();
		
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
}
