<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page | Hera English</title>
<link rel="icon" type="image/x-icon"
	href="${path}/resource/assets7/assets/sun (1).svg" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${path}/resource/assets7/css/styles.css" rel="stylesheet" />
  <!-- Latest compiled and minified CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    .container {
      width: 500px;
    }

    .input-group-text {
      display: inline-block;
      width: 90px;
    }

    .title {
      text-align: center;
      font-weight: bold;
    }
  </style>
</head>
<body>
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
			<form id='form' method="post" action="/alluserinfo">
   <br>
	   <h5 class='title'>특강 신청 조회</h5>
	   <button id="query" class="btn btn-primary btn-block">refresh</button><br><br>
	   <table id="lecture_table" class="table">
	     <thead class="table-secondary" style="text-align: center;">
	       <tr>
	         <th>Student Id</th>
	         <th>Name</th>
	         <th>Class</th>
	         <th>Time</th>
	       </tr>
	     </thead>
	     <tbody>
	       <c:forEach items="${users }" var="user">
	       <tr>
	         <td>${user.id }</td>	
	         <td>${user.name }</td>		
	         <td>${user.type }</td>	
	         <td>${user.time }</td>	
	       </tr>
	       </c:forEach>
	     </tbody>
	   </table>	
	   </form>
  </div>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script >
  	$(function () {
		$('#query').click(function () {
			/* $('#table > tbody').empty(); */
			$('#table > tbody').detach();
			$.ajax({
				type:"post",
				async:false,
				url:"http://localhost:8090/alluserinfo_json",
				success: function(data, textStatus){
					var jsonInfo=JSON.parse(data);
					var table = $("#table");
					for(var cnt in jsonInfo.users ){
						var tr = $('<tr></tr>');
						table.append(tr);
				        tr.append($('<td></td>').text(jsonInfo.users[cnt].id));
				        tr.append($('<td></td>').text(jsonInfo.users[cnt].name));
				        tr.append($('<td></td>').text(jsonInfo.users[cnt].type));
				        tr.append($('<td></td>').text(jsonInfo.users[cnt].time));
					}
				},
			      error:function(data,textStatus){
				         alert("에러가 발생했습니다.");ㅣ
				},
				  complete:function(data,textStatus){
				}
			});
		});
	});
  	</script>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="${path}/resource/assets7/js/scripts.js"></script>
</body>
</html>