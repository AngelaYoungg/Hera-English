<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" sizes="96x96"
	href="${path}/resource/assets/img/sun (1).svg" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Hera English | hello :)</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />

<link rel="stylesheet" href="${path}/resource/assets/css/bootstrap.css">
<link rel="stylesheet" href="${path}/resource/assets/css/gaia.css">

<link
	href="https://fonts.googleapis.com/css?family=Cambo|Poppins:400,600"
	rel="stylesheet" type="text/css" />
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="${path}/resource/assets/css/fonts/pe-icon-7-stroke.css"
	rel="stylesheet" />
</head>

<body>
	<nav class="navbar navbar-default navbar-transparent navbar-fixed-top"
		color-on-scroll="200">
		<div class="container">
			<div class="navbar-header">
				<button id="menu-toggle" type="button" class="navbar-toggle"
					data-toggle="collapse" data-target="#example">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
					<span class="icon-bar bar3"></span>
				</button>
				<a href="#" class="navbar-brand"> Hera - English </a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right navbar-uppercase">
				<c:choose> 
						<c:when test="${empty id}">
							<li class="nav=item"></li>
						</c:when>
						<c:otherwise>
							<li class="nav=item"><a class="nav-link">${id}님
									환영합니다^^</a></li>
						</c:otherwise>
					</c:choose>
				
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <i class="fa fa-share-alt"></i>
							Community
					</a>
						<ul class="dropdown-menu dropdown-danger">
							<li><a href="mypage"><i class="fa fa-bank"></i>My Page</a></li>
							<li><a href="#"><i class="fa fa-book"></i>Online
									BookClub</a></li>
							<li><a href="#"><i class="fa fa-caret-square-o-right"></i>Hera-media</a>
							</li>
						</ul></li>
					<li><a href="signup" class="navbar-brand">Sign Up</a> <c:choose>
							<c:when test="${empty id }">
								<a href="login" class="navbar-brand">MyLogin</a>
							</c:when>
							<c:otherwise>
								<a class="navbar-brand" href="logout">LogOut</a>
							</c:otherwise>
						</c:choose></li>


				</ul>
			</div>
		</div>
	</nav>
	<div class="section section-header">
		<div class="parallax">
			<a href="./subpage"> <img src="resource/assets/img/001.jpg"
				style="width: 100vw;">
			</a>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row">
				<div class="title-area">
					<h2>Circular System</h2>
					<div class="separator separator-danger">✻</div>
					<p class="description">어휘와 문법을 중심으로 쓰기, 말하기, 읽기 및 듣기 영역을 원형의 순환
						관계처럼 유기적으로 학습하는 전체 교육 시스템입니다. 성적향상과 실력향상, 두 마리 토끼를 잡습니다.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="info-icon">
						<div class="icon text-danger">
							<i class="pe-7s-notebook"></i>
						</div>
						<h3>Grammar</h3>
						<p class="description">Grammar Daily Test와 Verbal Test는 실력 향상의
							열쇠, 하나의 Subject 로 이루어진 Grammar + Vocabulary 학습</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="info-icon">
						<div class="icon text-danger">
							<i class="pe-7s-note2"></i>
						</div>
						<h3>Reading</h3>
						<p class="description">각 영역에서 다루는 주제, 콘텐츠를 통일시켜 영어에 투자하는 시간 대비
							효율성 극대화, 세계 유수 신문 및 'TIME'에 실린 최신 기사를 자료로 활용</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="info-icon">
						<div class="icon text-danger">
							<i class="pe-7s-pen"></i>
						</div>
						<h3>Writing</h3>
						<p class="description">글을 통한 영어식 사고력(논리력) 확장, 매 주 Essay
							Writing 을 통한 원어민 선생님과의 만남</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="section section-our-team-freebie">
		<!-- <div class="parallax filter filter-color-red"> -->
		<div class="image"
			style="background-image: url('resource/assets/img/middle.png')"></div>
		<div class="container">
			<div class="content">
				<div class="row">
					<div class="title-area"></div>
				</div>
				<div class="team">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div class="row">
								<div class="col-md-4">
									<div class="card card-member">
										<div class="content">
											<div class="avatar avatar-danger">
												<img alt="..." class="img-circle"
													src="resource/assets/img/faces/elman.PNG" />
											</div>
											<div class="description">
												<h3 class="title">Elementary</h3>
												<p class="text">5grade / 6grade</p>
												<img src="resource/assets/img/writing.PNG">
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="card card-member">
										<div class="content">
											<div class="avatar avatar-danger">
												<img alt="..." class="img-circle"
													src="resource/assets/img/faces/middle.PNG" />
											</div>
											<div class="description">
												<h3 class="title">Middle</h3>
												<p class="text">1grade / 2grade / 3grade</p>
												<img src="resource/assets/img/writing2.PNG">
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="card card-member">
										<div class="content">
											<div class="avatar avatar-danger">
												<img alt="..." class="img-circle"
													src="resource/assets/img/faces/high.PNG" />
											</div>
											<div class="description">
												<h3 class="title">High</h3>
												<p class="text">1grade / 2grade / 3grade</p>
												<img src="resource/assets/img/writing3.PNG">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<div class="section section-our-clients-freebie">
		<div class="container">
			<div class="title-area">
				<h2>Just In Time</h2>
				<div class="separator separator-danger">∎</div>
				<h5 class="subtitle text-gray">원하는 영역을 제 때, 딱! 맞춰 집중 학습하는 단과
					프로그램</h5>
			</div>

			<ul class="nav nav-text" role="tablist">
				<li class="active"><a href="#testimonial1" role="tab"
					data-toggle="tab">
						<div class="image-clients">
							<img alt="..." class="img" src="resource/assets/img/stu1.PNG" />
						</div>
				</a></li>
				<li><a href="#testimonial2" role="tab" data-toggle="tab">
						<div class="image-clients">
							<img alt="..." class="img-circle"
								src="resource/assets/img/stu2.PNG" />
						</div>
				</a></li>
				<li><a href="#testimonial3" role="tab" data-toggle="tab">
						<div class="image-clients">
							<img alt="..." class="img" src="resource/assets/img/stu3.PNG" />
						</div>
				</a></li>
				<li><a href="#testimonial4" role="tab" data-toggle="tab">
						<div class="image-clients">
							<img alt="..." class="img-circle"
								src="resource/assets/img/stu4.PNG" />
						</div>
				</a></li>
			</ul>

			<div class="tab-content">
				<div class="tab-pane active" id="testimonial1">
					<p class="description">
					<h3>Essay Writing</h3>
					간단한 문장 쓰기부터 고급 에세이까지 수준별로 나누어 체계적인 Writing 학습을 하는 수업입니다.
					</p>
				</div>
				<div class="tab-pane" id="testimonial2">
					<p class="description">
					<h3>Book Club</h3>
					스테디셀러부터 뉴베리상 수상작까지 유명 원서를 다양한 액티비티와 함께 읽어보는 수업입니다.
					</p>
				</div>
				<div class="tab-pane" id="testimonial3">
					<p class="description">
					<h3>TOEFL</h3>
					TOEFL 지문 독해력 향상을 위해 토플에 필요한 어휘와 다양한 Skill을 접하고 학습하는 수업입니다.
					</p>
				</div>
				<div class="tab-pane" id="testimonial4">
					<p class="description">
					<h3>Speaking</h3>
					Small Talking, Speech, Presentation, Debate까지 영어 말하기의 실력과 자신감을 향상
					시키는 수업입니다.
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="section section-small section-get-started">
		<div class="parallax filter">
			<div class="image"
				style="background-image: url('resource/assets/img/005.png')"></div>
			<div class="container">
				<div class="title-area">
					<h2 class="text-white">Do you want to study with me?</h2>
					<div class="separator line-separator">♦</div>
					<p class="description">Let us create the ideas and wisdom to
						flow like rivers and seas in face of an enormous storm. ​ With
						that inner peace, a motivation to accomplish is born. Once at that
						stage, we are able to start everything meaningfully.</p>
				</div>

				<div class="button-get-started">
					<a href="#gaia" class="btn btn-danger btn-fill btn-lg">Contact
						Us</a>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer footer-big footer-color-black" data-color="black">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-3">
					<div class="info">
						<h5 class="title">Hera-Social</h5>
						<nav>
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="#">Find subject</a></li>
								<li><a href="#">Discover Projects</a></li>
								<li><a href="#">Our Portfolio</a></li>
								<li><a href="#">About Us</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-3 col-md-offset-1 col-sm-3">
					<div class="info">
						<h5 class="title">Help and Support</h5>
						<nav>
							<ul>
								<li><a href="#">How to study</a></li>
								<li><a href="#">How it works</a></li>
								<li><a href="#">Terms &amp; Conditions</a></li>
								<li><a href="#">Class Policy</a></li>
								<li><a href="#">Live Class</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-3 col-sm-3">
					<div class="info">
						<h5 class="title">Latest News</h5>
						<nav>
							<ul>
								<li><a href="#"> <i class="fa fa-twitter"></i> <b>Get
											Shit Done</b> The best kit in the market is here, just give it a
										try and let us...
										<hr class="hr-small" />
								</a></li>
								<li><a href="#"> <i class="fa fa-twitter"></i> We've
										just been featured on <b> Awwwards Website</b>! Thank you
										everybody for...
								</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-2 col-md-offset-1 col-sm-3">
					<div class="info">
						<h5 class="title">Follow us on</h5>
						<nav>
							<ul>
								<li><a href="#"
									class="btn btn-social btn-facebook btn-simple"> <i
										class="fa fa-facebook-square"></i> Facebook
								</a></li>
								<li><a href="#"
									class="btn btn-social btn-dribbble btn-simple"> <i
										class="fa fa-instagram"></i> Instagram
								</a></li>
								<li><a href="#"
									class="btn btn-social btn-twitter btn-simple"> <i
										class="fa fa-twitter"></i> Twitter
								</a></li>
								<li><a href="#"
									class="btn btn-social btn-reddit btn-simple"> <i
										class="fa fa-google-plus-square"></i> Google+
								</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<hr />
			<div class="copyright">
				©
				<script>
            document.write(new Date().getFullYear());
          </script>
				Creative Tim, made with love
			</div>
		</div>
	</footer>
</body>

<!--   core js files    -->
<script src="${path}/resource/assets/js/jquery.min.js"
	type="text/javascript"></script>
<script src="${path}/resource/assets/js/bootstrap.js"
	type="text/javascript"></script>

<!--  js library for devices recognition -->
<script type="text/javascript"
	src="${path}/resource/assets/js/modernizr.js"></script>

<!--  script for google maps   -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js"></script>

<!--   file where we handle all the script from the Gaia - Bootstrap Template   -->
<script type="text/javascript" src="${path}/resource/assets/js/gaia.js"></script>
</html>