package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.Cart;
import model.Order;
import model.ProductCart;
import model.ProductOrder;

public class OrderDAO {
	
	public void insertOrder(Order newOrder, Cart newCart) throws Exception {
		Connection conn = new DBContext().getConnection();
		
		//insert order to database
		String sql = "INSERT INTO Orders (user_mail, user_phone, order_address, order_discount_code, order_status)"
								+ "OUTPUT inserted.order_id "
								+ "VALUES (?, ?, ?, ?, 1)";
		PreparedStatement stmtOrder = conn.prepareStatement(sql);
		stmtOrder.setString(1, newOrder.getUserMail());
		stmtOrder.setString(2, newOrder.getUserPhone());
		stmtOrder.setNString(3, newOrder.getAddress());
		stmtOrder.setString(4, newOrder.getDiscountCode());
		ResultSet rs = stmtOrder.executeQuery();
		rs.next();
		int newOrderId = rs.getInt(1);
		rs.close();
		stmtOrder.close();
		
		//add order detail to data base
		sql = "INSERT INTO Orders_detail VALUES (?, ?, ?, ?)";
		PreparedStatement stmtOrderDetail = conn.prepareStatement(sql);
		for (ProductCart item : newCart.getProductList()) {
			stmtOrderDetail.setInt(1, newOrderId);
			stmtOrderDetail.setInt(2, item.getProductData().getId());
			stmtOrderDetail.setInt(3, item.getAmountProduct());
			stmtOrderDetail.setInt(4, item.getProductData().getPrice());
			stmtOrderDetail.executeUpdate();
		}
		stmtOrderDetail.close();
		conn.close();
	}
	
	public List<Order> getOrderList(String email) throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql = "SELECT * FROM Orders WHERE user_mail=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, email);
		ResultSet rs = stmt.executeQuery();
		
		List<Order> orderList = new ArrayList<>();
		Order newOrder = null;
		int id;
		while (rs.next()) {
			id = rs.getInt("order_id");
			newOrder = new Order();
			newOrder.setId(id);
			newOrder.setStatus(rs.getInt("order_status"));
			newOrder.setOrderDate(rs.getDate("order_date"));
			newOrder.setDiscountCode(rs.getString("order_discount_code"));
			newOrder.setAddress(rs.getString("order_address"));
			orderList.add(newOrder);
		}
		
		rs.close();
		stmt.close();
		conn.close();
		return orderList;
	}
	
	public List<ProductOrder> getProductList(int id) throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql = "SELECT product_id, amount_product, price_product,"
					+ "(SELECT product_name FROM Products WHERE product_id = Orders_detail.product_id) as product_name,"
					+ "(SELECT product_img_source FROM Products WHERE product_id = Orders_detail.product_id) as product_img_source,"
					+ "(SELECT product_describe FROM Products WHERE product_id = Orders_detail.product_id) as product_description"
					+ " FROM Orders_detail WHERE order_id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		
		List<ProductOrder> productOrderList = new ArrayList<>();
		ProductOrder newProductOrder = null;
		while (rs.next()) {
			newProductOrder = new ProductOrder(id,
											rs.getInt("product_id"),
											rs.getInt("amount_product"),
											rs.getInt("price_product"),
											rs.getNString("product_name"),
											rs.getNString("product_description"),
											rs.getString("product_img_source"));
			productOrderList.add(newProductOrder);
		}
		
		rs.close();
		stmt.close();
		conn.close();
		return productOrderList;
	}
}
