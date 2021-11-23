<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="header.jsp">
	<c:param name="title"
		value="cPhone | Thanh toán"></c:param>
</c:import>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/checkout-style.css">
</head>
<body>
	<div id="body">
		<div class="container">
			<div class="col-md-6">
				<h2>Thông tin đơn hàng</h2>
				<form action="<c:url value='/checkout' />">
					<div class="form-group">
						<label for="email">Email</label> <input type="email"
							class="form-control" id="email" placeholder="*Bắt buộc - nhập email"
							name="email" required>
					</div>
					<div class="form-group">
						<label for="phone">Số điện thoại</label> <input type="text"
							class="form-control" id="phone"
							placeholder="*Bắt buộc - nhập số điện thoại" name="phone" required>
					</div>
					<div class="form-group">
						<label for="address">Địa chỉ</label> <input type="text"
							class="form-control" id="address"
							placeholder="*Bắt buộc - nhập địa chỉ giao hàng" name="address" required>
					</div>
					<div class="form-group">
						<label for="code">Mã giảm giá (nếu có)</label> <input type="text"
							class="form-control" id="code"
							placeholder="Nhập mã giảm giá (nếu có)" name="code">
					</div>
					<button type="submit" class="btn btn-success">Xác nhận đặt
						hàng</button>
				</form>
			</div>
			<div class="col-md-6">
				<h2>Sản phẩm đặt mua</h2>
				<c:import url="cart.jsp" />
			</div>
		</div>
	</div>
</body>
</html>

<c:import url="footer.jsp"></c:import>