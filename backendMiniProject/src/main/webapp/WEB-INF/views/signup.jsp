<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <c:set var="path" value="${pageContext.request.contextPath}" />
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
    <title>Sign Up | Hera English</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        .image-container {
        height: 700px;
        }
        th {
        width: 100px;
        text-align: left;
        font-size: 1.2em; 
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
       .container {
            width: 400px;
        }
        .input-group-text {
            display: inline-block;
            width: 130px;
        }
        .title {
            text-align: center;
            font-weight: bold;
        }
    </style>
    <link rel="icon" type="image/x-icon" href="${path}/resource/assets3/assets/img/sun (1).svg" />
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
    <link href="css/styles.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
     <link rel="stylesheet" href="${path}/resource/assets3/css/styles.css">
    <script>
        $(function () {
            $('#form').submit(function() {
                let name = $('#name').val();
                let id = $('#id').val();
                let password1 = $('#password1').val();
                let password2 = $('#password2').val();
                let email = $('#email').val();
                if(!name) {
                    alert('이름을 입력하세요');
                    $('#name').focus();
                    return false;
                } else if(!id){
                    alert('아이디를 입력하세요');
                    $('#id').focus();
                    return false;
                } else if(!password1){
                    alert('비밀번호를 입력하세요');
                    $('#password1').focus();
                    return false;
                } else if(password1!=password2){
                    alert('비밀번호와 비밀번호 확인이 다릅니다.');
                    $('#password2').focus();
                    return false;
                } else if(!email) {
                    alert('이메일을 입력하세요');
                    $('#email').focus();
                    return false;
                } else if(!email.includes('@')) {
                    alert('이메일 형식이 바르지 않습니다.');
                    $('#email').focus();
                    return false;
                }
            });
        });
    </script>
  </head>

  <body>
    <div
      class="image-container"
      style="background-image: url('${path}/resource/assets3/assets/img/back.jpg')" 
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
          <h1 class="fst-italic lh-1 mb-4">Welcome!</h1>
           <p class="mb-5">Knowledge is power. everything there is to know about it.. Welcoming for every Child.</p>
        </div>
        <div class="container mt-3">
        <h5 class='title'>Register in Hera-English</h5>
        <form id='form' method="post" action="/signup">
            <div class="input-group mb-2">
                <span class="input-group-text title">Name</span>
                <input type="text" class="form-control" id="name" name="name"><br>
            </div>
            <div class="input-group mb-2">
                <span class="input-group-text title">Id</span>
                <input type="text" class="form-control" id="id" name="id">
            </div>
            <div class="input-group mb-2">
                <span class="input-group-text title">Password</span>
                <input type="password" class="form-control" id="password1" name="password">
            </div>
            <div class="input-group mb-2">
                <span class="input-group-text title">Re-Password</span>
                <input type="password" class="form-control" id="password2" name="password1">
            </div>
            <div class="input-group mb-2">
                <span class="input-group-text title">E-mail</span>
                <input type="text" class="form-control" id="email" name="email">
            </div>
            
            <div class="d-grid">
                <input type="submit" class="btn btn-primary btn-block" value='Get Started'>
            </div>
        </form>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
  </body>
</html>