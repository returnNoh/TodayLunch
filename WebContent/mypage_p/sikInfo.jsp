<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>식권사용</title>

<!-- Description, Keywords and Author -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<!--[if IE]><link rel="stylesheet" href="../css/ie-style.css"><![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="#">
</head>
<body>
	<!-- Page Wrapper -->
	<div class="wrapper">
		<!-- Header Start -->
		<jsp:include page="../top.jsp" />
		<!-- Header End -->

		<!-- Banner Start -->

		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="../img/crown-white.png" alt="" />
				<!-- Heading -->
				<h2 class="white">식권 사용 내역</h2>
				<ol class="breadcrumb">
					<li><a href="/TodayLunch/main.lunch">HOME</a></li>
					<li><a href="myPage.lunch">MY PAGE</a></li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->
		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Inner page menu start -->
			<div class="inner-menu">
				<div class="container">
					<!-- Heading -->
					<h3 style="border-bottom: 4px double #6C702F;">${p_id}의정보
						&nbsp;
						<button type="button" class="btn btn-sm"
							onclick="location.href='/TodayLunch/Mypage_p/myPage.lunch'"
							style="background-color: salmon; color: green; border-radius: 50px; margin-bottom: 5px;">BACK</button>
					</h3>
					<c:if test="${u_sik!=null }">
						<div class="row">
							<h3>현재 식권: ${sik}</h3>
							<c:forEach var="i" items="${list}" begin="0">
								<div class="col-md-4 col-sm-6">
									<!-- Inner page menu list -->
									<div class="menu-list">
										<!-- Menu item heading -->
										<h3>${i.u_time}</h3>
										<!-- Image for menu list -->
										<img class="img-responsive" src="../img/menu/menu2.jpg" alt="" />
										<c:if test="${i.s_num > 0 }">
											<!-- Menu list items -->
											<div class="menu-list-item">
												<!-- Heading / Dish name -->
												<h4 class="pull-left">사용 개수</h4>
												<!-- Dish price -->
												<span class="price pull-right">${i.s_num} 개</span>
												<div class="clearfix"></div>
											</div>
										</c:if>
										<c:if test="${i.s_num < 0 }">
											<!-- Menu list items -->
											<div class="menu-list-item">
												<!-- Heading / Dish name -->
												<h4 class="pull-left">충전 개수</h4>
												<!-- Dish price -->
												<span class="price pull-right">${i.s_num*-1} 개</span>
												<div class="clearfix"></div>
											</div>
										</c:if>
										<!-- 충전이라면 -->
										<c:if test="${i.r_name=='admin'}">
											<div class="menu-list-item">
												<!-- Heading / Dish name -->
												<h4 class="pull-left"></h4>
												<!-- Dish price -->
												<span class="price pull-right">충전 완료</span>
												<div class="clearfix"></div>
											</div>
										</c:if>
										<!--충전 아니면-->
										<c:if test="${i.r_name!='admin'}">
											<!-- Menu list items -->
											<div class="menu-list-item">
												<!-- Heading / Dish name -->
												<h4 class="pull-left">식당 이름</h4>
												<!-- Dish price -->
												<span class="price pull-right">${i.r_name}</span>
												<div class="clearfix"></div>
											</div>
										</c:if>
									</div>
								</div>
							</c:forEach>

						</div>
						<div class="row text-center">
							<ul class="pagination">
								<c:if test="${pgList.startPage>pgList.blockSize}">
									<li><a
										href="/TodayLunch/Mypage_p/sikInfo.lunch?pageNum=${pgList.startPage-pgList.blockSize}">«</a>
									</li>
								</c:if>

								<c:forEach var="i" begin="${pgList.startPage}"
									end="${pgList.endPage}">

									<c:if test="${i==pgList.currentPage}">
										<li class="active" style="background-color: #cb7464"><a
											href="/TodayLunch/Mypage_p/sikInfo.lunch?pageNum=${i}"> <b>${i}</b>
										</a></li>
									</c:if>

									<c:if test="${i!=pgList.currentPage}">
										<li><a
											href="/TodayLunch/Mypage_p/sikInfo.lunch?pageNum=${i}">${i}</a>
										</li>
									</c:if>

								</c:forEach>

								<c:if test="${pgList.endPage<pgList.pageCount}">
									<li><a
										href="/TodayLunch/Mypage_p/sikInfo.lunch?pageNum=${pgList.startPage+pgList.blockSize}">»</a>
									</li>
								</c:if>
							</ul>
						</div>
					</c:if>
					<c:if test="${u_sik==null }">
						<div class="row">
							<h2 class="text-center">사용된 내역이 없습니다.</h2>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		<!--inner pad end-->
		<!-- Footer Start -->
		<jsp:include page="../footer.jsp" />
		<!-- Footer End -->
	</div>
	<!-- / Wrapper End -->

	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="fa fa-angle-up"></i></a></span>

	<input type="text">

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
</body>
</html>