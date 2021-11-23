<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:import url="header.jsp">
	<c:param name="title"
		value="cPhone - Mua sắm điện thoại tiện lợi | ${productInfo.name}"></c:param>
</c:import>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/product-style.css">
</head>
<body>
	<div id="body">
		<div class="container">
			<div class="col-sm-6 col-md-4" id="img-box">
				<img class="img-responsive" src="${productInfo.imageSource}"
					alt="${productInfo.name}">
			</div>
			<div class="col-sm-6 col-md-8" id="info-box">
				<h2>${productInfo.name}</h2>
				<p id="price">
					<fmt:setLocale value="vi-VN"/>
					<strong><fmt:formatNumber type="number" value="${productInfo.price}" />đ</strong>
				</p>
				<div id="rating">
					<i class="glyphicon glyphicon-star checked"></i> <i
						class="glyphicon glyphicon-star checked"></i> <i
						class="glyphicon glyphicon-star checked"></i> <i
						class="glyphicon glyphicon-star checked"></i> <i
						class="glyphicon glyphicon-star checked"></i> <span>${productInfo.ratingNumber}
						đánh giá</span>
				</div>
				<div id="promotion">
					<p>${productInfo.promotion}</p>
				</div>
				<div id="description">
					<p>${productInfo.description}</p>	
				</div>
				<a href="<c:url value='/add-cart?action=add&id=${productInfo.id}'/>" class="btn btn-success">Thêm vào giỏ hàng</a>
			</div>
		</div>
	</div>
</body>
</html>

<c:import url="footer.jsp"></c:import>