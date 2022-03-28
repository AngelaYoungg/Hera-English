<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login | Hera English</title>
    <style>
        .image-container {
        height: 700px;
        }
        th {
        width: 100px;
        text-align: left;
        font-size: 1.2em; 
      }
        #social-icons {
        width: 100px;
        margin: 30px;
      }
        .logo-container {
        left: 50px;
        position: absolute;
        top: 20px;
        z-index: 3;
      }
        .logo-container .brand {
        font-size: 20px;
        color: #FFFFFF;
        line-height: 20px;
        float: left;
        margin-left: 10px;
        margin-top: 10px;
        width: 60px
      }
    </style>
    <link rel="icon" type="image/x-icon" href="${path}/resource/assets2/assets/img/sun (1).svg" />
    <!-- Font Awesome icons (free version)-->
    <script
      src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
      crossorigin="anonymous"
    ></script>
    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <!-- Core theme CSS (includes Bootstrap)-->
   
    <c:set var="path" value="${pageContext.request.contextPath}" />
        <link rel="stylesheet" href="${path}/resource/assets2/css/styles.css">
   
   
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
      $(function () {
    	  let result = `${result}`;
    	  if(result != "") {
    		  alert(result);  
    	  }
    	  
    	  
        $("#form").submit(function () {
          let id = $("#id").val();
          let password = $("#password").val();
          if (!id) {
            alert("아이디를 입력하세요");
            $("#id").focus();
            return false;
          } else if (!password) {
            alert("비밀번호를 입력하세요");
            $("#password").focus();
            return false;
          }
        });
      });
    </script>
  </head>

  <body>
    <div
      class="image-container"
      style="background-image: url('${path}/resource/assets2/assets/img/back.PNG')" 
    >
    <a href="/">   
        <div class="logo-container">
          <div class="brand">Hera - English</div>
        </div>
      </a>
    <!-- Masthead-->
    <div class="masthead">
      <div class="masthead-content text-white">
        <div class="container-fluid px-4 px-lg-0">
          <h1 class="fst-italic lh-1 mb-4">Login</h1>
          <div id="main">
      <form id="form" method="post" action="/login">
        <table>
          <tr>
              <th>Id</th>
              <td><input type="text" id="id" name="id"/></td>
          </tr>
          <tr>
              <th>Password</th>
              <td><input type="password" id="password" name="password"/></td>
          </tr>
          <tr>
          <th><td> <div class="form-check form-switch ps-0">
          <input class="form-check-input ms-auto mt-1" type="checkbox" id="flexSwitchCheckDefault">
          <label class="form-check-label ms-2" for="flexSwitchCheckDefault">Remember me</label> </td></th> 
          <tr>
            <td></td>
            <td style="padding: 20px; text-align: center">
              <!-- <input type="submit" value="Login" />&nbsp;&nbsp;
              <input type="reset" value="Cancel" /> -->
              <button type="submit" value="Login" class="btn btn-secondary w-auto me-1 mb-0">Login</button>&nbsp;&nbsp;
              <button type="reset" value="Cancel" class="btn btn-secondary w-auto me-1 mb-0">Cancel</button>
            </td>
          </tr>
        </table>
         
      </form>
      </div>
    </div> 
    <!-- Social Icons-->
    <!-- For more icon options, visit https://fontawesome.com/icons?d=gallery&p=2&s=brands-->
    <div class="social-icons">
      <div
        class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0"
      >
        <a class="btn btn-dark m-3" href="#!"><i class="fab fa-twitter"></i></a>
        <a class="btn btn-dark m-3" href="#!"
          ><i class="fab fa-facebook-f"></i
        ></a>
        <a class="btn btn-dark m-3" href="#!"
          ><i class="fab fa-instagram"></i
        ></a>
      </div>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="${path}/resource/assets4/js/scripts.js"></script>
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
  </body>
</html>