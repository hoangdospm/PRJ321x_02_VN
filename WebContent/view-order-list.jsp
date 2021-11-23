<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="header.jsp">
	<c:param name="title" value="cPhone | Thông tin đơn hàng"></c:param>
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
			<h2 class="col-xs-12">Thông tin đơn hàng</h2>
			<table class="table">
				<thead>
					<tr>
						<th>Mã</th>
						<th>Thời gian</th>
						<th>Địa chỉ</th>
						<th>Mã giảm giá</th>
						<th>Tình trạng</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items='${orderList}'>
						<tr>
							<td><c:out value="${item.id}" /></td>
							<td><c:out value="${item.orderDate}" /></td>
							<td><c:out value="${item.address}" /></td>
							<td><c:out value="${item.discountCode}" /></td>
							<td>
								<c:choose>
									<c:when test="${item.status == 0}">
										<c:out value="Chờ thanh toán" />
									</c:when>
									<c:when test="${item.status == 1}">
										<c:out value="Thanh toán thành công" />
									</c:when>
									<c:when test="${item.status == 2}">
										<c:out value="Giao hàng thành công" />
									</c:when>
									<c:otherwise>
										<c:out value="Hủy đơn hàng" />
									</c:otherwise>
								</c:choose>
							</td>
							<td><a href="<c:url value='/order-detail?id=${item.id}' />">Xem</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>

<c:import url="footer.jsp"></c:import>