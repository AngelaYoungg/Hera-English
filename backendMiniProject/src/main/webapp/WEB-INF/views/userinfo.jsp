<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>신청 완료 | Hera English</title>
        <link rel="icon" type="image/x-icon" href="${path}/resource/assets5/assets/sun (1).svg" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${path}/resource/assets5/css/styles.css" rel="stylesheet" />
        
         <script src="http://code.jquery.com/jquery-latest.min.js"></script>

    </head>
    <body>
        <div
      class="image-container"
      style="background-image: url('${path}/resource/assets5/assets/back.png')" 
    > 
        <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                <a class="navbar-brand" href="/">Hera - English</a>
        </nav>
         <form id='form' method="post" action="/userinfo">
        </form>
       <div class="container">
            <div class="text-center mt-5">
            <br>
            <br>
                <h1>Winter Special Lecture</h1>
                <br>
               <p class="lead">신청이 완료되었습니다</p>
                <p class="lead">마이페이지에서 확인하실 수 있습니다</p>
            </div>
        </div>
        <!--  <div class="d-grid w-25 mx-auto">
                <input type="submit" class="btn btn-primary btn-block" value='My Page 확인하기'>
            </div> -->
    </div>
 
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <script src="${path}/resource/assets5/js/scripts.js"></script>
    </body>
</html>