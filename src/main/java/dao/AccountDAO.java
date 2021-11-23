package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.DBContext;
import model.Account;

public class AccountDAO {
	public void insertAccount(Account acc) throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql = "INSERT INTO Account VALUES (?, ?, ?, ?, ?, ?)";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, acc.getMail());
		stmt.setString(2, acc.getPassword());
		stmt.setInt(3, acc.getRole());
		stmt.setString(4, acc.getUsername());
		stmt.setString(5, acc.getAddress());
		stmt.setString(6, acc.getPhone());
		stmt.executeUpdate();
		stmt.close();
		conn.close();
	}
	
	public boolean isExistAccount(String userMail) throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql = "SELECT count(*) as count FROM Account WHERE user_mail=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, userMail);
		ResultSet rs = stmt.executeQuery();
		rs.next();
		int count = rs.getInt("count");
		rs.close();
		stmt.close();
		conn.close();
		return count > 0;
	}
	
	public boolean validateAccount(Account acc) throws Exception {
		Connection conn = new DBContext().getConnection();
		String sql = "SELECT count(*) as count FROM Account WHERE user_mail=? AND password=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, acc.getMail());
		stmt.setString(2, acc.getPassword());
		ResultSet rs = stmt.executeQuery();
		rs.next();
		int count = rs.getInt("count");
		rs.close();
		stmt.close();
		conn.close();
		return count > 0;
	}
}
