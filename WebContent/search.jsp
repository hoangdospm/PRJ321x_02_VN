<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="header.jsp">
	<c:param name="title" value="cPhone - Mua sắm điện thoại tiện lợi"></c:param>
</c:import>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/body-style.css">
</head>
<body>

	<div id="body">

		<div class="container">
			<c:if
				test="${productListSearch == null || productListSearch.size() == 0}">
				<h2 class="col-xs-12">Không có kết quả cho từ khóa
					"${param.keyword}"</h2>
			</c:if>
			<c:if
				test="${productListSearch != null && productListSearch.size() > 0}">
				<h2 class="col-xs-12">Kết quả cho từ khóa "${param.keyword}"</h2>
			</c:if>
			<div class="product-list col-sm-12 row-flex">
				<c:forEach var="item" items='${productListSearch}'>
					<c:import url="list.jsp">
						<c:param name="id" value="${item.id}"></c:param>
						<c:param name="name" value="${item.name}"></c:param>
						<c:param name="price" value="${item.price}"></c:param>
						<c:param name="promotion" value="${item.promotion}"></c:param>
						<c:param name="imageSource" value="${item.imageSource}"></c:param>
						<c:param name="ratingNumber" value="${item.ratingNumber}"></c:param>
					</c:import>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>

<c:import url="footer.jsp"></c:import>