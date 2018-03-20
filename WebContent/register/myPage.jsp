<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Title here -->
<title>It's Personal Mypage!</title>
<!-- Description, Keywords and Author -->
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Styles -->
<!-- Bootstrap CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- Portfolio CSS -->
<link href="../css/prettyPhoto.css" rel="stylesheet">
<!-- Font awesome CSS -->
<link href="../css/font-awesome.min.css" rel="stylesheet">
<!-- Custom Less -->
<link href="../css/less-style.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="../css/style.css" rel="stylesheet">
<!--[if IE]><link rel="stylesheet" href="css/ie-style.css"><![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="#">
</head>

<body>

	<!-- Page Wrapper -->
	<div class="wrapper">

		<!-- Header Start -->

		<div class="header">
			<div class="container">
				<!-- Header top area content -->
				<div class="header-top">
					<div class="row">

						<div class="col-md-4 col-md-offset-8 col-sm-4 col-sm-offset-8">
							<!-- Header top right content search box -->
							<div class=" header-search">
								<form class="form" role="form">
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Search..."> <span
											class="input-group-btn">
											<button class="btn btn-default" type="button" style="height:32px">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
									
								</form>
							</div>
						</div>
						
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-5">
						<!-- Link -->
						<a href="/TodayLunch/Mypage_p/myPage.lunch"> <!-- Logo area -->
							<div class="logo">
								<img class="img-responsive" src="../img/logo.png" alt="" />
								<!-- Heading -->
								<h1>오늘의 점심</h1>
								<!-- Paragraph -->
								<p>강남역 주변의 점심 뷔페 메뉴</p>
							</div>
						</a>
					</div>
			
					<div class="col-md-8 col-sm-7">
						<!-- Navigation -->
						<nav class="navbar navbar-default navbar-right" role="navigation">
						<div class="container-fluid">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span> <span
										class="icon-bar"></span> <span class="icon-bar"></span> <span
										class="icon-bar"></span>
								</button>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li><a href="/TodayLunch/main.lunch"><img
											src="../img/nav-menu/nav1.jpg" class="img-responsive" alt="" />
											Home</a></li>
									<li class="dropdown hidden-xs"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown"><img
											src="../img/nav-menu/nav2.jpg" class="img-responsive" alt="" />
											MyPage <b class="caret"></b></a>
										<ul class="dropdown-menu dropdown-md">
											<li>
												<div class="row">
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item">
															<!-- Heading -->
															<h3>식권 구매</h3>
															<!-- Image -->
															<img src="../img/dish/dish1.jpg" class="img-responsive"
																alt="" width="150px" height="150px" />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_p/buySik.lunch" class="btn btn-danger btn-xs">Buy</a>
														</div>
													</div>
													
													<!--회원 수정-->
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item">
															<!-- Heading -->
															<h3>회원 수정</h3>
															<!-- Image -->
															<img src="../img/dish/dish2.jpg" class="img-responsive"
																alt="" width="150px" height="150px" " />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_p/updateInfo.lunch" class="btn btn-danger btn-xs">Go</a>
														</div>
													</div>
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item">
															<!-- Heading -->
															<h3>사용 내역</h3>
															<!-- Image -->
															<img src="../img/dish/dish3.jpg" class="img-responsive"
																alt="" width="150px" height="150px" "/>
															<!-- Button -->
															<a href="/TodayLunch/Mypage_p/sikInfo.lunch" class="btn btn-danger btn-xs">Check</a>
														</div>
													</div>
												</div>
											</li>
										</ul></li>
									<li class="dropdown visible-xs"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown"> Page <b
											class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="/TodayLunch/Mypage_p/buySik.lunch">Buy</a></li>
											<li><a href="/TodayLunch/Mypage_p/sikInfo.lunch">Check</a></li>
											<li><a href="/TodayLunch/Mypage_p/updateInfo.lunch">Personal</a></li>
										</ul></li>
									<li><a href="index.html"><img
											src="../img/nav-menu/nav1.jpg" class="img-responsive" alt="" />
											Shop List</a></li>
									<li><a href="/TodayLunch/Login/logout.lunch"><img
											src="../img/nav-menu/nav1.jpg" class="img-responsive" alt="" />
											Logout</a></li>
								</ul>
							</div>
							<!-- /.navbar-collapse -->
						</div>
						<!-- /.container-fluid --> </nav>
					</div>
				</div>
			</div>
			<!-- / .container -->
		</div>

		<!-- Header End -->

		<!-- Banner Start -->

		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="../img/crown-white.png" alt="" />
				<!-- Heading -->
				<h2 class="white">ME ! ${p_id }</h2>
				<ol class="breadcrumb">
					<li><a href="/TodayLunch/main.lunch">Home</a></li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Shopping Start -->

			<div class="shopping">
				<div class="container">
					<!-- Shopping items content -->
					<div class="shopping-content">
						<div class="row">

							<div class="col-md-3 col-sm-4 col-sm-offset-2">
								<!-- Shopping items -->
								<div class="shopping-item">
									<!-- Image -->
									<a href="/TodayLunch/Mypage_p/buySik.lunch"><img class="img-responsive"
										src="../img/shopping/shop1.jpg" alt="" /></a>
									<!-- Shopping item name / Heading -->
									<h4 class="center">
										<a href="/TodayLunch/Mypage_p/buySik.lunch">식권 구매</a>
									</h4>
									<!-- <span class="item-price pull-right"></span> -->
									<div class="clearfix"></div>

									<!-- Buy now button -->
									<div class="visible-xs">
										<a class="btn btn-danger btn-sm" href="/TodayLunch/Mypage_p/buySik.lunch">Buy Now</a>
									</div>
								</div>
							</div>

							<div class="col-md-3 col-sm-4">
								<!-- Shopping items -->
								<div class="shopping-item">
									<!-- Image -->
									<a href="/TodayLunch/Mypage_p/sikInfo.lunch"><img class="img-responsive"
										src="../img/shopping/shop1.jpg" alt="" /></a>
									<!-- Shopping item name / Heading -->
									<h4 class="center">
										<a href="/TodayLunch/Mypage_p/sikInfo.lunch">사용 내역</a>
									</h4>
									<!-- <span class="item-price pull-right"></span> -->
									<div class="clearfix"></div>

									<!-- Buy now button -->
									<div class="visible-xs">
										<a class="btn btn-danger btn-sm" href="/TodayLunch/Mypage_p/sikInfo.lunch">Check Now</a>
									</div>
								</div>
							</div>


							<!-- Showcase End -->

							<!--식권사용-->
							<div class="col-md-3 col-sm-4">
								<!-- Shopping items -->
								<div class="shopping-item">
									<!-- Image -->
									<a href="#"><img class="img-responsive"
										src="../img/shopping/shop1.jpg" alt="" /></a>
									<!-- Shopping item name / Heading -->
									<h4 class="center">
										<a href="#">식권 사용</a>
									</h4>
									<!-- <span class="item-price pull-right"></span> -->
									<div class="clearfix"></div>

									<!-- Buy now button -->
									<div class="visible-xs">
										<a class="btn btn-danger btn-sm" href="#">USE NOW</a>
									</div>
								</div>
							</div>
							
							<!--회원수정-->
							<div class="col-md-offset-3 col-md-3  col-sm-4">
								<!-- Shopping items -->
								<div class="shopping-item">
									<!-- Image -->
									<a href="/TodayLunch/Mypage_p/updateInfo.lunch"><img class="img-responsive"
										src="../img/shopping/shop1.jpg" alt="" /></a>
									<!-- Shopping item name / Heading -->
									<h4 class="center">
										<a href="/TodayLunch/Mypage_p/updateInfo.lunch">회원 수정</a>
									</h4>
									<!-- <span class="item-price pull-right"></span> -->
									<div class="clearfix"></div>

									<!-- Buy now button -->
									<div class="visible-xs">
										<a class="btn btn-danger btn-sm" href="/TodayLunch/Mypage_p/updateInfo.lunch">UPDATE PROFILE</a>
									</div>
								</div>
							</div>
							
							<!--회원 탈퇴-->
							<div class=" col-md-3  col-sm-4">
								<!-- Shopping items -->
								<div class="shopping-item">
									<!-- Image -->
									<a href="/TodayLunch/Mypage_p/deletePerson.lunch"><img class="img-responsive"
										src="../img/shopping/shop1.jpg" alt="" /></a>
									<!-- Shopping item name / Heading -->
									<h4 class="center">
										<a href="/TodayLunch/Mypage_p/deletePerson.lunch">회원 탈퇴</a>
									</h4>
									<!-- <span class="item-price pull-right"></span> -->
									<div class="clearfix"></div>

									<!-- Buy now button -->
									<div class="visible-xs">
										<a class="btn btn-danger btn-sm" href="/TodayLunch/Mypage_p/deletePerson.lunch">OUT</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- / Inner Page Content End -->

				<!-- Footer Start -->

				<div class="footer padd">
					<div class="container">
						<div class="row">
							<div class="col-md-offset-3 col-md-4 col-sm-6">
								<!-- Footer widget -->
								<div class="footer-widget">
									<!-- Logo area -->
									<div class="logo">
										<img class="img-responsive" src="../img/logo.png" alt="" />
										<!-- Heading -->
										<h1>오늘의 점심</h1>
									</div>
									<!-- Paragraph -->
										<div>
										<h2>제작:개신(개발의 신)</h2>
										<ul>
											<li>김지혜</li>
											<li>노인욱</li>
											<li>문희경</li>
											<li>이고우나</li>
											<li>한희원</li>
										</ul>
									</div>
									<hr />
									<!-- Heading -->
									<h6>제작 기간</h6>
									<!-- Images -->
									<p>2018.02.28 ~ 2018.03.30</p>
								</div>
								
							</div>

							<div class="col-md-4 col-sm-6">
								<!-- Footer widget -->
								<div class="footer-widget">
									<!-- Heading -->
									<h4>제작 장소</h4>
									<div class="contact-details">
										<!-- Address / Icon -->
										<i class="fa fa-map-marker br-red"></i> 
										<span> KIC 캠퍼스(강남점)</span>
										<div class="clearfix"></div>
										<!-- Contact Number / Icon -->
										<i class="fa fa-phone br-green"></i> 
										<span>학원 전화번호</span>
										<div class="clearfix"></div>
										<!-- Email / Icon -->
										<i class="fa fa-envelope-o br-lblue"></i> <span><a
											href="#">학원 이메일</a></span>
										<div class="clearfix"></div>
									</div>
									<!-- Social media icon -->
									<div class="social">
										<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
										<a href="#" class="google-plus"><i
											class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
											class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
											class="fa fa-pinterest"></i></a>
									</div>
								</div>
								<!--/ Footer widget end -->
							</div>
						</div>
						</div>
						<!-- Copyright -->
						<div class="footer-copyright">
							<!-- Paragraph -->
							<p>
								&copy; Copyright 2018 <a href="#">개신</a>
							</p>
						</div>
					</div>
				</div>

				<!-- Footer End -->

			</div>
			<!-- / Wrapper End -->
</div>

			<!-- Scroll to top -->
			<span class="totop"><a href="#"><i class="fa fa-angle-up"></i></a></span>



			<!-- Javascript files -->
			<!-- jQuery -->
			<script src="../js/jquery.js"></script>
			<!-- Bootstrap JS -->
			<script src="../js/bootstrap.min.js"></script>
			<!-- Pretty Photo JS -->
			<script src="../js/jquery.prettyPhoto.js"></script>
			<!-- Respond JS for IE8 -->
			<script src="../js/respond.min.js"></script>
			<!-- HTML5 Support for IE -->
			<script src="../js/html5shiv.js"></script>
			<!-- Custom JS -->
			<script src="../js/custom.js"></script>
			<!-- JS code for this page -->
			<script>
		
		</script>
	
</body>
</html>