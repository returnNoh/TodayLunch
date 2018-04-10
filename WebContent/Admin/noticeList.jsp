<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,beans.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

		<jsp:include page="../top.jsp"></jsp:include>

		<!-- Header End -->

		<!-- Banner Start -->

		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="../img/crown-white.png" alt="" />
				<!-- Heading -->
				<h2 class="white">Admin</h2>
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

							
								<c:forEach var="list" items="${list}">
<tr>
<td>${list.no_num}</td>
<td><a href="noticeUpdate.lunch?no_num=${list.no_num}">${list.no_content}<!-- </a> --></td>
<td>${list.no_time}</td>
<td><a href="noticeDelete.lunch?no_num=${list.no_num}">삭제</a></td>
</tr>
<br>
</c:forEach>




<form method="post" action="/TodayLunch/Admin/notichWrite.lunch">
<input type="textarea" name="no_content">
<input type="submit" value="신규 공지사항 작성">
</form>
							${result}


							<!-- Showcase End -->

							<!--식권사용-->
							
							
							
						</div>
					</div>
				</div>
				<!-- / Inner Page Content End -->

				<!-- Footer Start -->

				<jsp:include page="../footer.jsp"></jsp:include>

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
<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션태그 연습</title>
</head>
<body>

<c:forEach var="list" items="${list}">
<tr>
<td>${list.no_num}</td>
<td><a href="updateNotice.lunch?no_num=${list.no_num}">${list.no_content}<!-- </a> --></td>
<td>${list.no_time}</td>
<td><a href="deleteNotice.lunch?no_num=${list.no_num}">삭제</a></td>
</tr>
<br>
</c:forEach>




<form>
<input type="textarea" name="no_content">
<input type="submit" value="신규 공지사항 작성">
</form>


</body>
</html> --%>