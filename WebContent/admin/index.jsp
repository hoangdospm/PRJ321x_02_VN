<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/admin-index-style.css">
<link rel="shortcut icon" href="../images/cphone-logo-02.png" type="image/png">
<title>Trình quản trị cPhone</title>
</head>
<body>
<!-- prevent access admin's dashboard without login -->
<% if(session.getAttribute("loginSuccess") == null 
		|| session.getAttribute("loginSuccess").equals("false")) {
	session.setAttribute("message", "Bạn cần đăng nhập để vào trình duyệt quản trị!");
	response.sendRedirect("../login.jsp");
} %>

<ul class="nav nav-stacked navbar-fixed-top col-md-2" id="menu">
	<li class="active"><a>Chào mừng <strong><%= session.getAttribute("username") %></strong>!</a></li>
	<li><a href="#">Danh mục</a></li>
	<li><a href="#">Sản phẩm</a></li>
	<li><a href="#">Đơn hàng</a></li>
	<li><a href="#">Khách hàng</a></li>
	<li><a href="#">Bài viết</a></li>
	<li><a href="#">Người dùng</a></li>
    <li><a href="#">Cài đặt</a></li>
    <li><a href="../logout">Đăng xuất</a></li>
</ul>

<div class="col-md-10 col-md-offset-2">
		<table class="table">
			<thead>
				<tr>
					<th></th>
					<th>Sản phẩm</th>
					<th>Giá tiền</th>
					<th>Số lượng</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><img class="img-responsive thumbnail-img"
						src="../images/cart-1.jpg"></td>
					<td>
						<p>Apple Watch Series 6 Nhôm</p>
						<p>Chọn màu: Space Gray</p>
						<p>Kích thước màn hình: 40mm</p>
						<p>Model: GPS</p>
						<p>Chọn dây: Dây thể thao</p>
					</td>
					<td>9.350.000 đ</td>
					<td>1</td>
				</tr>
				<tr>
					<td><img class="img-responsive thumbnail-img"
						src="../images/cart-2.jpg"></td>
					<td>
						<p>iPhone 13 Pro Max</p>
						<p>Chọn màu: Graphite</p>
						<p>Dung lượng: 128GB</p>
					</td>
					<td>32.950.000 đ</td>
					<td>1</td>
				</tr>
				<tr>
					<td></td>
					<td>Tổng tiền</td>
					<td>42.300.000 đ</td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>

</body>
</html>