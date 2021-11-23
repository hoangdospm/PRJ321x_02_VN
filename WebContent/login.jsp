<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="header.jsp">
	<c:param name="title" value="cPhone | Đăng nhập tài khoản"></c:param>
</c:import>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/login-style.css">
<link rel="shortcut icon" href="images/cphone-logo-02.png"
	type="image/png">
</head>
<body>
	<div class="container-fluid" id="background-login">
		<div class="contrainer">
			<div class="col-sm-4 col-sm-offset-2" id="brand">
				<h1>cPhone</h1>
				<p>Mua sắm tiện lợi. Phân phối các sản phẩm Apple, Samsung, OPPO
					chính hãng với giá tốt nhất đến khách hàng.</p>
			</div>
			<div class="col-sm-4" id="form-login">
				<h2>Đăng nhập</h2>
				<c:if test="${sessionScope.loginMessage != null}">
					<p class="login-message">${sessionScope.loginMessage}</p>
				</c:if>
				<!-- get cookie of username and password that remembered -->
				<form action="<c:url value='/login' />">
					<div class="form-group">
						<label for="email">Tài khoản:</label> <input type="email"
							class="form-control" id="email" placeholder="Nhập email của bạn"
							name="email" required>
					</div>
					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							class="form-control" id="password" placeholder="Nhập mật khẩu"
							name="password" required>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="remember">
							Remember me</label>
					</div>
					<button type="submit" class="btn btn-success">Submit</button>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>