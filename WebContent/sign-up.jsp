<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="header.jsp">
	<c:param name="title"
		value="cPhone | Đăng ký tài khoản"></c:param>
</c:import>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/sign-up-style.css">
</head>
<body>
	<div id="body">
		<div class="container">
			<div class="col-md-6 col-md-offset-3">
				<h2>Đăng ký tài khoản</h2>
				<c:if test="${sessionScope.signUpMessage != null}">
					<p class="message"> ${sessionScope.signUpMessage} </p>
				</c:if>
				<form action="<c:url value='/sign-up' />">
					<div class="form-group">
						<label for="email">Email đăng nhập</label> <input type="email"
							class="form-control" id="email" placeholder="Bắt buộc - nhập email"
							name="email" required>
					</div>
					<div class="form-group">
						<label for="password">Mật khẩu</label> <input type="password"
							class="form-control" id="password" placeholder="Bắt buộc - mật khẩu tối thiểu 6 ký tự"
							name="password" required>
					</div>
					<div class="form-group">
						<label for="password2">Xác nhận lại mật khẩu</label> <input type="password"
							class="form-control" id="password2" placeholder="Bắt buộc - nhập xác nhận mật khẩu"
							name="password2" required>
					</div>
					<div class="form-group">
						<label for="phone">Số điện thoại</label> <input type="text"
							class="form-control" id="phone"
							placeholder="Nhập số điện thoại của bạn" name="phone">
					</div>
					<div class="form-group">
						<label for="address">Địa chỉ</label> <input type="text"
							class="form-control" id="address"
							placeholder="Nhập địa chỉ" name="address">
					</div>
					<div class="form-group">
						<label for="username">Tên gọi</label> <input type="text"
							class="form-control" id="username"
							placeholder="Để chúng thôi gọi bạn dễ dàng hơn" name="username">
					</div>
					<button type="submit" class="btn btn-success">Đăng ký tài khoản</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

<c:import url="footer.jsp"></c:import>