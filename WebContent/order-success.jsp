<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="header.jsp">
	<c:param name="title"
		value="cPhone | Thanh toán thành công"></c:param>
</c:import>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/order-success-style.css">
</head>
<body>
<div id="body">
		<div class="container">
			<h1>Đặt hàng thành công</h1>
			<p>Bấm vào đây để chuyển về <a href="<c:url value='/'/>">trang chủ</a><p>
		</div>
	</div>
</body>
</html>

<c:import url="footer.jsp"></c:import>