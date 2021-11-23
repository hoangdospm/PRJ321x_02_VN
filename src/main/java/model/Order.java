package model;

import java.util.Date;
import java.util.List;

public class Order {
	private int id;
	private Date orderDate;
	private List<ProductOrder> productList;
	private int totalMoney;
	private int status;
	private String discountCode;
	private String address;
	private String userMail;
	private String userPhone;
	private Date receiveDate;
	
	public Order() {
		super();
	}

	public Order(int id, Date orderDate, List<ProductOrder> productList, int totalMoney, int status,
			String discountCode, String address, String userMail, String userPhone, Date receiveDate) {
		super();
		this.id = id;
		this.orderDate = orderDate;
		this.productList = productList;
		this.totalMoney = totalMoney;
		this.status = status;
		this.discountCode = discountCode;
		this.address = address;
		this.userMail = userMail;
		this.userPhone = userPhone;
		this.receiveDate = receiveDate;
	}

	public Order(int status, String discountCode, String address, String userMail, String userPhone, Date receiveDate) {
		super();
		this.status = status;
		this.discountCode = discountCode;
		this.address = address;
		this.userMail = userMail;
		this.userPhone = userPhone;
		this.receiveDate = receiveDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public List<ProductOrder> getProductList() {
		return productList;
	}

	public void setProductList(List<ProductOrder> productList) {
		this.productList = productList;
	}

	public int getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(int totalMoney) {
		this.totalMoney = totalMoney;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getDiscountCode() {
		return discountCode;
	}

	public void setDiscountCode(String discountCode) {
		this.discountCode = discountCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public Date getReceiveDate() {
		return receiveDate;
	}

	public void setReceiveDate(Date receiveDate) {
		this.receiveDate = receiveDate;
	}
}
