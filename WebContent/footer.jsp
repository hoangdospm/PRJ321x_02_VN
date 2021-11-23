<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/footer-style.css">
<title>Footer</title>
</head>
<body>
	<div class="container-fluid" id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-4 col-xs-6">
					<h3>Thông tin</h3>
					<ul>
						<li><a href="home.jsp">Về chúng tôi</a></li>
						<li><a href="home.jsp">Khuyến mại</a></li>
						<li><a href="home.jsp">Chính sách thanh toán</a></li>
						<li><a href="home.jsp">Chính sách bảo mật</a></li>
						<li><a href="home.jsp">Chính sách vận chuyển</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-4 col-xs-6">
					<h3>Sản phẩm</h3>
					<ul>
						<jsp:useBean id="categoryListBean" scope="page"
							class="beans.CategoryListBean"></jsp:useBean>
						<c:set var="categoryList"
							value='${categoryListBean.getCategoryList()}'></c:set>
						<c:forEach var="item" items='${categoryList}'>
							<li><a href="<c:url value='/category?id=${item.id}' />">${item.name}</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-md-3 col-sm-4 col-xs-6">
					<h3>Liên hệ</h3>
					<ul>
						<li>Hotline: 190080xx</li>
						<li>Email: support@cphone.vn</li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-6">
					<h3>Địa chỉ</h3>
					<ul>
						<li>Hà Nội: Số 74, đường Cầu Giấy, quận Cầu giấy</li>
						<li>Hải Phòng: Số 1, đường Trần Khát Chân, quận Trần Phú</li>
						<li>TP.HCM: Số 45, đường Cách Mạng Tháng 8, quận 8</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>