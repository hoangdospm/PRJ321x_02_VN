<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<table class="table">
	<thead>
		<tr>
			<th>Hình ảnh</th>
			<th>Sản phẩm</th>
			<th>Giá tiền</th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		<c:set var="sumCart" value="${0}"></c:set>
		<c:forEach var="item" items="${cart.productList}">
			<tr>
				<td><img class="img-responsive thumbnail-img"
					src="${item.productData.imageSource}"></td>
				<td>
					<p><strong>${item.productData.name}</strong></p>
					<p>${item.productData.description}</p>
				</td>
				<fmt:setLocale value="vi-VN"/>
				<td>
					<p><fmt:formatNumber type="number" value="${item.productData.price}" />đ</p>
					<p>SL: ${item.amountProduct}</p>
				</td>
				<td><a href="<c:url value='/add-cart?action=delete&id=${item.productData.id}' />" class="btn btn-default btn-xs delete-btn">Xóa</a></td>
				<c:set var="sumCart" value="${sumCart + item.productData.price * item.amountProduct}"/>
			</tr>
		</c:forEach>
		<tr>
			<td></td>
			<td>Tổng tiền</td>
			<td><fmt:formatNumber type="number" value="${sumCart}" />đ</td>
			<td></td>
		</tr>
	</tbody>
</table>
