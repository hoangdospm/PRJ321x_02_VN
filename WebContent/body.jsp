<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/body-style.css">
<title>Body of Home page</title>
</head>
<body>
<div id="body">
	<div class="container-fluid" id="banner">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	      <li data-target="#myCarousel" data-slide-to="3"></li>
	      <li data-target="#myCarousel" data-slide-to="4"></li>
	    </ol>
	
	    <div class="carousel-inner">
	      <div class="item active">
	        <img src="images/banner-1.png" alt="Banner Product" style="width:100%;">
	      </div>
	      <div class="item">
	        <img src="images/banner-2.png" alt="Banner Product" style="width:100%;">
	      </div>
	      <div class="item">
	        <img src="images/banner-3.png" alt="Banner Product" style="width:100%;">
	      </div>      
	      <div class="item">
	        <img src="images/banner-4.png" alt="Banner Product" style="width:100%;">
	      </div>
	      <div class="item">
	        <img src="images/banner-5.png" alt="Banner Product" style="width:100%;">
	      </div>
	    </div>
	    
	    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	</div>
	
	<jsp:useBean id="productListBean" scope="page" class="beans.ProductListBean"></jsp:useBean>

	<div class="container">
		<div class="row" id="best-seller">
			<div class="title col-sm-12">
				<h2 class="col-xs-12">Danh sách sản phẩm</h2>
				<div class="related-tag col-xs-12">
					<a href="<c:url value='/search?keyword=apple'/>" class="btn btn-default">#Apple</a>
					<a href="<c:url value='/search?keyword=samsung'/>" class="btn btn-default">#Samsung</a>
					<a href="<c:url value='/search?keyword=xiaomi'/>" class="btn btn-default">#Xiaomi</a>
				</div>
			</div>

				<div class="product-list col-sm-12 row-flex">
					<c:set var="productList"
						value='${productListBean.getProductList("all")}'></c:set>

					<c:forEach var="item" items='${productList}'>
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
</div>
</body>
</html>