<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>정보 수정 - 오늘의 점심</title>
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
<!--[if IE]><link rel="stylesheet" href="../css/ie-style.css"><![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="#">
<style>
.necessary{
	color: #f75353;
}
</style>
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

		<jsp:include page="../top.jsp" />

		<!-- Header End -->

		<!-- Banner Start -->

		<div class="banner padd">
			<div class="container">
				<!-- Image -->
				<img class="img-responsive" src="../img/crown-white.png" alt="" />
				<!-- Heading -->
				<h2 class="white">정보 수정</h2>
				<ol class="breadcrumb">
					<li><a href="index.html">메인</a></li>
					<li><a href="items.html">마이 페이지</a></li>
					<li class="active">정보 수정</li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Checkout Start -->

			<div class="checkout">
				<div class="container">
					<!-- Heading -->
					<h4>${rest_info.r_name}의정보</h4>
					<div class="row">
						<div class="col-md-7 col-sm-6">
							<!-- Checkout Form -->
							<form class="form-horizontal" role="form" method="post"
								name="updateInfoform"
								action="/TodayLunch/Mypage_r/updateInfoPro.lunch">
								<input type="hidden" name="r_wi" id="r_wi" value="${rest_info.r_wi}">
								<input type="hidden" name="r_gy" id="r_gy" value="${rest_info.r_gy}">
								<div class="form-group">
									<label for="inputID" class="col-md-2 control-label">아이디</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="inputID"
											name="r_id" value="${rest.r_id}" readonly="readonly">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPasswd" class="col-md-2 control-label">
									비밀번호<span class="necessary">*</span></label>
									<div class="col-md-9">
										<input type="password" class="form-control" id="inputPasswd"
											name="r_passwd" placeholder="비밀번호를 입력해주세요.">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail1" class="col-md-2 control-label">
									이메일<span class="necessary">*</span></label>
									<div class="col-md-9">
										<input type="email" class="form-control" id="inputEmail1"
											name="r_email" value="${rest.r_email}"
											placeholder="이메일을 입력해주세요.">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPhone" class="col-md-2 control-label">연락처</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="inputPhone"
											name="r_phone" value="${rest.r_phone}"
											placeholder="연락처를 입력해주세요.">
									</div>
								</div>
								<hr>
								<div class="form-group">
									<label for="inputRestName" class="col-md-2 control-label">
									식당 이름<span class="necessary">*</span></label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="inputRestName"
											name="r_name" value="${rest_info.r_name}"
											placeholder="식당의 이름을 입력해주세요.">
									</div>
								</div>
								<div class="form-group">
									<label for="inputAddress" class="col-md-2 control-label">주소</label>
									<div class="col-md-9">
										<input type="text" class="form-control" id="inputAddress"
											name="r_add" value="${rest_info.r_add}"
											placeholder="식당의 주소를 입력해주세요.">
									</div>
								</div>
								<div class="form-group">
									<label for="inputInfo" class="col-md-2 control-label">식당
										소개</label>
									<div class="col-md-9">
										<textarea class="form-control" id="inputInfo" rows="3"
											name="r_info" placeholder="식당을 소개해주세요.">${rest_info.r_info}</textarea>
									</div>
								</div>


								<div class="form-group">
									<div class="col-md-offset-2 col-md-8">
										<button type="submit" class="btn btn-danger btn-sm">수정하기</button>
										&nbsp;
										<button type="reset" class="btn btn-default btn-sm">다시
											작성</button>
									</div>
								</div>
							</form>
						</div>
						<div class="col-md-5 col-sm-6">
							<!-- Checkout sidebar items -->
							<div class="sidebar-item">
								<!-- Heading -->
								<p>식당의 위치</p>
								<br>
								<!-- Sidebar Paragraph -->
								<jsp:include page="map.jsp">
									<jsp:param value="${rest_info.r_wi}" name="r_wi" />
									<jsp:param value="${rest_info.r_gy}" name="r_gy" />
								</jsp:include>
								<p>지도를 클릭해서 식당의 위치를 알려주세요.</p>
							</div>

						</div>
					</div>
				</div>
			</div>

			<!-- Checkout End -->

			<!-- Showcase Start -->

			<!-- Showcase End -->

		</div>
		<!-- / Inner Page Content End -->

		<!-- Footer Start -->

		<jsp:include page="../footer.jsp" />

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
		$(function(){
			$('button[type=submit]').on('click', function(event){
				var check=0
				$('.necessary').each(function(){
					if($(this).parent().next().find('input').val()==''){
						alert('필수 정보를 입력해주세요.')
						$(this).parent().next().find('input').focus()
						check=1
						return false
					}
				})
				if(check==1){
					event.preventDefault()
				}
			})
			
			
		})
	</script>
</body>
</html>