<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:import url="header.jsp">
	<c:param name="title" value="cPhone | Thông tin đơn hàng chi tiết"></c:param>
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
			<h2 class="col-xs-12">Thông tin sản phẩm trong đơn hàng</h2>
			<table class="table">
				<thead>
					<tr>
						<th></th>
						<th>Mã</th>
						<th>Sản phẩm</th>
						<th>Thông tin</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items='${productOrderList}'>
						<tr>
							<td>
								<img class="img-responsive thumbnail-img" src="${item.imageSource}">
							</td>
							<td><c:out value="${item.productId}" /></td>
							<td>
								<p><strong><c:out value="${item.nameProduct}" /></strong></p>
								<p><c:out value="${item.description}" /></p>
							</td>
							<td>
								<p><fmt:formatNumber type="number" value="${item.priceProduct}" />đ</p>
								<p>SL: ${item.amountProduct}</p>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>

<c:import url="footer.jsp"></c:import>