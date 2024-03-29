<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html class="no-js" lang="vi">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><decorator:title default="Master-layout" /></title>
<link rel="shortcut icon" type="image/x-icon"
	href="assets/user/img/favicon.png">
<link rel="stylesheet" href="assets/user/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/user/css/icons.min.css">
<link rel="stylesheet" href="assets/user/css/plugins.css">
<link rel="stylesheet" href="assets/user/css/style.css">
<script src="assets/user/js/vendor/modernizr-2.8.3.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
	<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
	<decorator:body />
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
	<%@include file="/WEB-INF/views/layouts/user/modal.jsp"%>
	<script src="assets/user/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="assets/user/js/popper.min.js"></script>
	<script src="assets/user/js/bootstrap.min.js"></script>
	<script src="assets/user/js/plugins.js"></script>
	<script src="assets/user/js/ajax-mail.js"></script>
	<script src="assets/user/js/main.js"></script>

	<script>
		$(document).ready(function() {
			const priceElements = document.querySelectorAll(".show-price");
			priceElements.forEach(function(element) {
				const price = parseFloat(element.textContent);
				const formattedPrice = price.toLocaleString("vi-VN", {
					style : "currency",
					currency : "VND"
				});
				element.textContent = formattedPrice;
			});
		});
	</script>

</body>

</html>