<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/header-style.css">
<title>${param.title}</title>
</head>
<body>
	<nav class="navbar navbar-inverse" id="main-menu">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="home.jsp"> <img id="logo"
					src="images/cphone-logo-03.png" alt="cphone logo">
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<jsp:useBean id="categoryListBean" scope="page"
						class="beans.CategoryListBean"></jsp:useBean>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Sản phẩm<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<c:set var="categoryList"
								value='${categoryListBean.getCategoryList()}'></c:set>
							<c:forEach var="item" items='${categoryList}'>
								<li><a href="<c:url value='/category?id=${item.id}' />">${item.name}</a></li>
							</c:forEach>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left"
					action="<c:url value='/search'/>">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Nhập từ khóa"
							name="keyword">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a data-toggle="modal" href="#myModal"> Giỏ hàng <c:if
								test="${cart != null && cart.productList.size() > 0}">
								<c:set var="numProduct" value="${0}" />
								<c:forEach var="item" items="${cart.productList}">
									<c:set var="numProduct"
										value="${numProduct + item.amountProduct}" />
								</c:forEach>
								<span class="label label-danger">${numProduct}</span>
							</c:if>
					</a></li>
					<c:if test="${loginAccount == null}">
						<li><a href="login.jsp">Đăng nhập</a></li>
						<li><a href="sign-up.jsp">Đăng ký</a></li>
					</c:if>
					<c:if test="${loginAccount != null}">
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#"><strong>${loginAccount.mail}</strong><span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value='/order-list' />">Thông tin đơn hàng</a></li>
								<li><a href="<c:url value='/logout' />">Đăng xuất</a></li>
							</ul></li>
					</c:if>
				</ul>
			</div>

		</div>

		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Giỏ hàng</h4>
					</div>
					<div class="modal-body">
						<c:import url="cart.jsp"></c:import>
					</div>
					<div class="modal-footer">
						<a href="<c:url value='checkout.jsp'/>" class="btn btn-primary">Đặt
							hàng</a>
						<button type="button" class="btn btn-default" data-dismiss="modal">Trở
							về</button>
					</div>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>