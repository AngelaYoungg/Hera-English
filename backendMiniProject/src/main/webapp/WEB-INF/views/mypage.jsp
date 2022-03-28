<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>My Page | Hera English</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="${path}/resource/assets6/assets/sun (1).svg" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${path}/resource/assets6/css/styles.css" rel="stylesheet" />
</head>
<body>
<form id='form' method="post" action="alluserinfo">
	<div class="d-flex" id="wrapper">
		<div class="border-end bg-white" id="sidebar-wrapper">
			<div class="sidebar-heading border-bottom bg-light">My Page</div>
			<div class="list-group list-group-flush">
				<a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="#!">수강 신청</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="#!">학습 자료실</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="#!">나의 학습</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="#!">나의 정보</a>
			</div>
		</div>
		<!-- Page content wrapper-->
		<div id="page-content-wrapper">
			<!-- Top navigation-->
			<nav
				class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
				<div class="container-fluid">
					<button class="btn btn-primary" id="sidebarToggle">My Menu</button>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mt-2 mt-lg-0">
							<li class="nav-item active"><a class="nav-link" href="#!">Home</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- Page content-->
			<div class="container">
				<div class="text-center mt-5">
					
					<br>
					<h1>Winter Special Lecture</h1>
					<br>
					<p class="lead">신청이 완료되었습니다</p>
				</div>
			
				<div class="d-grid w-25 mx-auto">
					<input type="submit" class="btn btn-primary btn-block" value='조회'>	  
				</div>
			</div>
		</div>
	</div>
	</form>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="${path}/resource/assets6/js/scripts.js"></script>
</body>
</html>