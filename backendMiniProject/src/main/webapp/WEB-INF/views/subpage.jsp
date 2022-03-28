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
        <title>겨울방학특강 신청 | Hera English</title>
        <link rel="icon" type="image/x-icon" href="${path}/resource/assets4/assets/sun (1).svg" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${path}/resource/assets4/css/styles.css" rel="stylesheet" />
         <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
      $(function () {
        $("#form").submit(function () {
          let name = $("#name").val();
     
          if (!name) {
            alert("이름을 입력하세요");
            $("#name").focus();
            return false;
          }
        });
      });
    
    </script>
        
    </head>
    <body>
        <div
      class="image-container"
      style="background-image: url('${path}/resource/assets4/assets/back.png')" 
    > 
        <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
                <a class="navbar-brand" href="/">Hera - English</a>
        </nav>
        <div class="container" >
            <div class="text-center mt-5">
                <h1>Winter Special Lecture</h1>
                <p class="lead">겨울방학특강 신청서 작성</p>
            </div>
        </div>

        <div class="mt-3 w-50 mx-auto">
            <form id='form' method="post" action="/subpage">
                <div class="input-group mb-2">
                    <span class="input-group-text title">Student Id</span>
                    <input type="text" class="form-control" id="id" name="id" value=${id} readOnly>
                </div>
                <div class="input-group mb-2">
                    <span class="input-group-text title">Name</span> 
                    <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요">
                </div>
               <div class="input-group mb-2">
                <span class="input-group-text title">Class</span>
                <span class="form-control"><input type="radio" name='type' value="월수금" checked name="type">&nbsp;월수금 &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name='type' value="화목" name="type">&nbsp;화목 &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name='type' value="토일" name="type">토일</span>
            </div>
                <div class="input-group mb-2">
                    <span class="input-group-text title">Time</span>
                    <select class="form-select" id='time2' name="time">
                        <option value="2:00-3:50">2:00-3:50</option>
                        <option value="4:00-5:50">4:00-5:50</option>
                        <option value="6:00-7:50">6:00-7:50</option>
                        <option value="8:00-9:50">8:00-9:50</option>
                    </select>
                </div>
                <div class="d-grid">
                    <input type="submit" class="btn btn-primary btn-block" value='Submit'>
                </div>
            </form>
        </div>
        </div>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <script src="${path}/resource/assets4/js/scripts.js"></script>
    </body>
</html>