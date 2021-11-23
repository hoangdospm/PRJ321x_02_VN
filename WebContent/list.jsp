<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="product-item-box col-md-3 col-xs-6">
	<div class="product-item">
		<div class="product-item-img">
			<a href="<c:url value="/product?id=${param.id}"/>"> <img
				class="img-responsive" src="${param.imageSource}" alt="${param.name}">
			</a>
		</div>
		<div class="product-item-name">
			<a href="<c:url value="/product?id=${param.id}"/>">
				<p>${param.name}</p>
			</a>
		</div>
		<div class="product-item-price">
			<fmt:setLocale value="vi-VN"/>
			<p><fmt:formatNumber type="number" value="${param.price}" />đ</p>
		</div>
		<div class="product-item-describe">
			<p>${param.promotion}</p>
		</div>
		<div class="product-item-rating">
			<i class="glyphicon glyphicon-star checked"></i> <i
				class="glyphicon glyphicon-star checked"></i> <i
				class="glyphicon glyphicon-star checked"></i> <i
				class="glyphicon glyphicon-star checked"></i> <i
				class="glyphicon glyphicon-star checked"></i> <span>${param.ratingNumber}
				đánh giá</span>
		</div>
	</div>
</div>