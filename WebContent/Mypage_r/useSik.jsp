<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>식권 사용 - 오늘의 점심</title>
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


	<!-- Shopping cart Modal -->
	<div class="modal fade" id="shoppingcart1" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Shopping Cart</h4>
				</div>
				<div class="modal-body">
					<!-- Items table -->
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Name</th>
								<th>Quantity</th>
								<th>Price</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="#">Exception Reins Evocative</a></td>
								<td>2</td>
								<td>$200</td>
							</tr>
							<tr>
								<td><a href="#">Taut Mayoress Alias Appendicitis</a></td>
								<td>1</td>
								<td>$190</td>
							</tr>
							<tr>
								<td><a href="#">Sinter et Molests Perfectionist</a></td>
								<td>4</td>
								<td>$99</td>
							</tr>
							<tr>
								<th></th>
								<th>Total</th>
								<th>$489</th>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Continue
						Shopping</button>
					<button type="button" class="btn btn-info">Checkout</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Model End -->

	<!-- Page Wrapper -->
	<div class="wrapper">

		<!-- Header Start -->

		<jsp:include page="../top.jsp"/>

		<!-- Header End -->

		<!-- Banner Start -->

		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="../img/crown-white.png" alt="" />
				<!-- Heading -->
				<h2 class="white">식권 사용 </h2>
				<ol class="breadcrumb">
					<li><a href="/TodayLunch/index.jsp">메인</a></li>
					<li><a href="myPage.lunch">마이 페이지</a></li>
					<li class="active">식권 사용</li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Contact Us Start -->

			<div class="contactus">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<!-- Contact Us content -->
							<div class="row">
								<div class="col-md-6 col-sm-6">
									<!-- Contact content details -->
									<div class="contact-details">
										<!-- Heading -->
										<h4>Location</h4>
										<!-- Address / Icon -->
										<i class="fa fa-map-marker br-red"></i> <span>#768, 5th
											floor, N S Building,<br />Csm Block, Park Road,<br />
											Bangalore - 234567
										</span>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="col-md-6 col-sm-6">
									<!-- Contact content details -->
									<div class="contact-details">
										<!-- Heading -->
										<h4>On-line Order</h4>
										<!-- Contact Number / Icon -->
										<i class="fa fa-phone br-green"></i> <span>+91
											88-88-888888</span>
										<div class="clearfix"></div>
										<!-- Email / Icon -->
										<i class="fa fa-envelope-o br-lblue"></i> <span><a
											href="#">abc@example.com</a></span>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!--/ Inner row end -->
							<!-- Contact form -->
							<div class="contact-form">
								<!-- Heading -->
								<h3>Contact Form</h3>
								<!-- Form -->
								<form role="form" method="post"
									action="/TodayLunch/Mypage_r/sikResult.lunch">
									<div class="form-group">
										<!-- Form input -->
										<input class="form-control" name="r_name" type="text"
											placeholder="세션값 - 식당아이디" />
									</div>
									<div class="form-group">
										<!-- Form input -->
										<input class="form-control" name="p_id" type="text"
											placeholder="개인아이디" />
									</div>
									<div class="form-group">
										<!-- Form text area -->
										<textarea class="form-control" name="p_siknum" rows="3"
											placeholder="식권인증번호"></textarea>
									</div>
									<!-- Form button -->
									<button class="btn btn-danger btn-sm" type="submit">Send</button>
									&nbsp;
									<button class="btn btn-default btn-sm" type="reset">Reset</button>
								</form>
							</div>
							<!--/ Contact form end -->
						</div>
						<div class="col-md-6">
							<!-- Map holder -->
							<div class="map-container">
								<!-- Google Map -->
								<c:if test="${usesik!=null}">


${usesik}

</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Contact Us End -->

			<!-- Showcase Start -->

			

			<!-- Showcase End -->

		</div>
		<!-- / Inner Page Content End -->

		<!-- Footer Start -->

		<jsp:include page="../footer.jsp"/>

		<!-- Footer End -->

	</div>
	<!-- / Wrapper End -->


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

<form method="post" action="/TodayLunch/sik/sikResult.lunch">

가게이름(나중에는 세션값이용) : <input type="text" size="10" name="r_name"><br>
개인아이디 : <input type="text" size="10" name="p_id"><br>
인증번호 : <input type="text" size="10"  name="p_siknum"><br>
<input type="submit" value="보내기">

</form>
<br>
<c:if test="${usesik!=null}">


${usesik}

</c:if>


</body>
</html> --%>