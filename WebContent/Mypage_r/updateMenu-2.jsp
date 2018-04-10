<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Title here -->
<title>메뉴 편집 - 오늘의 점심</title>

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
					<button type="button" class="btn btn-default" style="height: 32px;"
						data-dismiss="modal">Continue Shopping</button>
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

		<div class="header">
			<div class="container">
				<!-- Header top area content -->
				<div class="header-top">
					<div class="row">

						<!-- <div class="col-md-4 col-sm-4"> -->
						<div class="col align-self-center">
							<!-- Header top right content search box -->
							<div class=" header-search">
								<form class="form" role="form">
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="Search..."> <span
											class="input-group-btn">
											<button class="btn btn-default" type="button"
												style="height: 32px;">
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
						<a href="index.html"> <!-- Logo area -->
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
									<li><a href="index.html"><img
											src="../img/nav-menu/nav1.jpg" class="img-responsive" alt="" />
											Home</a></li>
									<li class="dropdown hidden-xs"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown"><img
											src="../img/nav-menu/nav2.jpg" class="img-responsive" alt="" />
											Menu <b class="caret"></b></a>
										<ul class="dropdown-menu dropdown-md">
											<li>
												<div class="row">
													<div class="col-md-4 col-sm-6">
														<!-- Menu Item -->
														<div class="menu-item">
															<!-- Heading -->
															<h3>Vegetarian</h3>
															<!-- Image -->
															<img src="../img/dish/dish1.jpg" class="img-responsive"
																alt="" />
															<!-- Paragraph -->
															<p>Sea nut perspicacity under omni piste natures
																mirror of there with consequent.</p>
															<!-- Button -->
															<a href="menu.html" class="btn btn-danger btn-xs">View
																Menu</a>
														</div>
													</div>
													<div class="col-md-4 col-sm-6">
														<!-- Menu Item -->
														<div class="menu-item">
															<!-- Heading -->
															<h3>Non-Vegetarian</h3>
															<!-- Image -->
															<img src="../img/dish/dish2.jpg" class="img-responsive"
																alt="" />
															<!-- Paragraph -->
															<p>Sea nut perspicacity under omni piste natures
																mirror as precode consequent.</p>
															<!-- Button -->
															<a href="menu.html" class="btn btn-danger btn-xs">View
																Menu</a>
														</div>
													</div>
													<div class="col-md-4">
														<!-- Menu Item -->
														<div class="menu-item">
															<!-- Heading -->
															<h3>Special Menu</h3>
															<!-- Image -->
															<img src="../img/dish/dish3.jpg" class="img-responsive"
																alt="" />
															<!-- Paragraph -->
															<p>Sea nut perspicacity under omni piste natures
																mirror consequent.</p>
															<!-- Button -->
															<a href="menu.html" class="btn btn-danger btn-xs">View
																Menu</a>
														</div>
													</div>
												</div>
											</li>
										</ul></li>
									<li class="dropdown visible-xs"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown"> Menu <b
											class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="menu.html">Vegetarian</a></li>
											<li><a href="menu.html">Non Vegetarian</a></li>
											<li><a href="menu.html">Special Menu</a></li>
										</ul></li>
									<li><a href="gallery.html"><img
											src="../img/nav-menu/nav3.jpg" class="img-responsive" alt="" />
											Gallery</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown"><img src="../img/nav-menu/nav4.jpg"
											class="img-responsive" alt="" /> Shop <b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="items.html">Shopping</a></li>
											<li><a href="item-single.html">Order Now</a></li>
											<li><a href="checkout.html">Checkout</a></li>
											<li><a href="reserve-seats.html">Reservation</a></li>
											<li><a href="contact.html">Contact Us</a></li>
										</ul></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown"><img src="../img/nav-menu/nav5.jpg"
											class="img-responsive" alt="" /> Pages <b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="error.html">404 Error</a></li>
											<li><a href="0-base.html">Blank Page</a></li>
											<li><a href="blog.html">Blog</a></li>
											<li><a href="blog-single.html">Blog Single</a></li>
											<li><a href="components.html">Components</a></li>
											<li><a href="general.html">General</a></li>
											<li><a href="nutrition-info.html">Nutrition Info</a></li>
											<li><a href="recipe.html">Recipes</a></li>
										</ul></li>
									<li><a href="aboutus.html"><img
											src="../img/nav-menu/nav6.jpg" class="img-responsive" alt="" />
											About</a></li>
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
				<h2 class="white">메뉴 편집</h2>
				<ol class="breadcrumb">
					<li><a href="index.html">메인</a></li>
					<li><a href="/TodayLunch/Mypage_r/myPage.lunch">마이 페이지</a></li>
					<li class="active">메뉴 편집</li>
				</ol>
				<div class="clearfix"></div>
			</div>
		</div>

		<!-- Banner End -->



		<!-- Inner Content -->
		<div class="inner-page padd">

			<!-- Single Item Start -->

			<div class="single-item">
				<div class="container">
					<!-- Shopping single item contents -->
					<div class="single-item-content">
						<!-- Heading -->
						<h3 class="single-item-content-header">${menuList[0].r_name}의
							메뉴 : ${dateList[0]}~${dateList[4]}</h3>
						<div class="row">
							<div class="col-md-4 col-sm-12">
								<!-- Single item details -->
								<div class="item-details col-md-6">
									<!-- Heading -->
									<h5>${dateList[0]}:</h5>
									<!-- Recipe ingredients -->
									<ul class="list-unstyled">
										<c:forEach var="content" items="${m_arrayList[0]}">
											<c:if test="${content!='' }">
												<li>${content}</li>
											</c:if>
											<c:if test="${content=='' }">
												<li>등록된메뉴가<br>없습니다.
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
								<!-- Single item details -->
								<div class="item-details col-md-6">
									<!-- Heading -->
									<h5>${dateList[1]}:</h5>
									<!-- Recipe ingredients -->
									<ul class="list-unstyled">
										<c:forEach var="content" items="${m_arrayList[1]}">
											<c:if test="${content!='' }">
												<li>${content}</li>
											</c:if>
											<c:if test="${content=='' }">
												<li>등록된메뉴가<br>없습니다.
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
							<!-- 왼쪽 메뉴 종료-->
							<div class="col-md-4 col-sm-12">
							<!-- Heading -->
							<div>
										<button class="btn btn-warning" type="button" id="prev_date" onclick="goPrev()">전</button>
										<h5 id="date" style="display: inline;">${dateList[2]}:</h5>
										<button class="btn btn-warning" type="button" id="next_date" onclick="goNext()">후</button>
										</div>
								<!-- Form inside table wrapper -->
								<div class="table-responsive">
									<!-- Ordering form -->
									<form role="form" method="post" name="updateMenuform"
									onsubmit="setM_count()"
										action="/TodayLunch/Mypage_r/updateMenuPro.lunch">
										<input type="hidden" name="r_name"
											value="${menuList[2].r_name}"> <input type="hidden"
											name="date" value="${dateList[2]}">
										<!-- Table -->
										<table class="table table-bordered" id="contentTable">
										
												<c:forEach var="content" items="${m_arrayList[2]}"
													varStatus="status">
													<tr class="contentList">
														<td><input type="text" name="content${status.index}"
															value="${content}">
															<input type="hidden" name="m_count" value="${status.count}"></td>
													</tr>
												</c:forEach>
											
											
											<tr bgcolor="LightGray">
												<td><div class="form-group">
														<input type="text" id="newMenu">
														<button type="button" class="btn btn-warning" id="addMenu" onclick="plusMenu()">추가</button>
													</div></td>
											</tr>
											<tr>
												<td><div class="form-group">
														<button type="reset" class="btn btn-info">다시 작성</button>
														<button type="submit" class="btn btn-danger">수정하기</button>
													</div>
													</td>
											</tr>
										</table>
									</form>
									<!--/ Table End-->
								</div>
								<!--/ Table responsive class end -->
							</div>
							<div class="col-md-4 col-sm-12">
								<!-- Single item details -->
								<div class="item-details col-md-6">
									<!-- Heading -->
									<h5>${dateList[3]}:</h5>
									<!-- Recipe ingredients -->
									<ul class="list-unstyled">
										<c:forEach var="content" items="${m_arrayList[3]}">
											<c:if test="${content!='' }">
												<li>${content}</li>
											</c:if>
											<c:if test="${content=='' }">
												<li>등록된메뉴가<br>없습니다.
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
								<!-- Single item details -->
								<div class="item-details col-md-6">
									<!-- Heading -->
									<h5>${dateList[4]}:</h5>
									<!-- Recipe ingredients -->
									<ul class="list-unstyled">
										<c:forEach var="content" items="${m_arrayList[4]}">
											<c:if test="${content!='' }">
												<li>${content}</li>
											</c:if>
											<c:if test="${content=='' }">
												<li>등록된메뉴가<br>없습니다.
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
							<!-- 오른쪽 메뉴 종료 -->
						</div>
						<!--/ Inner row end  -->
					</div>
				</div>
				<div class="single-item-end"></div>
			</div>
			<!-- Single Item End -->
		</div>
		<!-- / Inner Page Content End -->

		<!-- Footer Start -->

		<div class="footer padd">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<!-- Footer widget -->
						<div class="footer-widget">
							<!-- Logo area -->
							<div class="logo">
								<img class="img-responsive" src="../img/logo.png" alt="" />
								<!-- Heading -->
								<h1>CakeFactory</h1>
							</div>
							<!-- Paragraph -->
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et magna aliqua.</p>
							<hr />
							<!-- Heading -->
							<h6>On-line Payment Clients</h6>
							<!-- Images -->
							<a href="#"><img class="payment img-responsive"
								src="../img/payment/2co.gif" alt="" /></a> <a href="#"><img
								class="payment img-responsive"
								src="../img/payment/authorizenet.gif" alt="" /></a> <a href="#"><img
								class="payment img-responsive" src="../img/payment/discover.gif"
								alt="" /></a> <a href="#"><img class="payment img-responsive"
								src="../img/payment/egold.gif" alt="" /></a> <a href="#"><img
								class="payment img-responsive"
								src="../img/payment/mastercard.gif" alt="" /></a> <a href="#"><img
								class="payment img-responsive" src="../img/payment/paypal.gif"
								alt="" /></a> <a href="#"><img class="payment img-responsive"
								src="../img/payment/visa.gif" alt="" /></a> <a href="#"><img
								class="payment img-responsive" src="../img/payment/worldpay.gif"
								alt="" /></a>
						</div>
						<!--/ Footer widget end -->
					</div>
					<div class="col-md-3 col-sm-6">
						<!-- Footer widget -->
						<div class="footer-widget">
							<!-- Heading -->
							<h4>Famous Dishes</h4>
							<!-- Images -->
							<a href="#"><img class="dish img-responsive"
								src="../img/dish/dish1.jpg" alt="" /></a> <a href="#"><img
								class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
							<a href="#"><img class="dish img-responsive"
								src="../img/dish/dish1.jpg" alt="" /></a> <a href="#"><img
								class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
							<a href="#"><img class="dish img-responsive"
								src="../img/dish/dish1.jpg" alt="" /></a> <a href="#"><img
								class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
							<a href="#"><img class="dish img-responsive"
								src="../img/dish/dish1.jpg" alt="" /></a> <a href="#"><img
								class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
							<a href="#"><img class="dish img-responsive"
								src="../img/dish/dish1.jpg" alt="" /></a>
						</div>
						<!--/ Footer widget end -->
					</div>
					<div class="clearfix visible-sm"></div>
					<div class="col-md-3 col-sm-6">
						<!-- Footer widget -->
						<div class="footer-widget">
							<!-- Heading -->
							<h4>Join Us Today</h4>
							<!-- Paragraph -->
							<p>There is no one who loves pain itself, who seeks after it
								and wants to have it.</p>
							<!-- Subscribe form -->
							<form role="form">
								<div class="form-group">
									<input class="form-control" type="text" placeholder="Your name" />
								</div>
								<div class="form-group">
									<input class="form-control" type="email"
										placeholder="Your email" />
								</div>
								<button class="btn btn-danger" type="button">Subscribe</button>
							</form>
						</div>
						<!--/ Footer widget end -->
					</div>
					<div class="col-md-3 col-sm-6">
						<!-- Footer widget -->
						<div class="footer-widget">
							<!-- Heading -->
							<h4>Contact Us</h4>
							<div class="contact-details">
								<!-- Address / Icon -->
								<i class="fa fa-map-marker br-red"></i> <span>#768, 5th
									floor, N S Building,<br />Csm Block, Park Road,<br />
									Bangalore - 234567
								</span>
								<div class="clearfix"></div>
								<!-- Contact Number / Icon -->
								<i class="fa fa-phone br-green"></i> <span>+91
									88-88-888888</span>
								<div class="clearfix"></div>
								<!-- Email / Icon -->
								<i class="fa fa-envelope-o br-lblue"></i> <span><a
									href="#">abc@example.com</a></span>
								<div class="clearfix"></div>
							</div>
							<!-- Social media icon -->
							<div class="social">
								<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
								<a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
								<a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a
									href="#" class="pinterest"><i class="fa fa-pinterest"></i></a>
							</div>
						</div>
						<!--/ Footer widget end -->
					</div>
				</div>
				<!-- Copyright -->
				<div class="footer-copyright">
					<!-- Paragraph -->
					<p>
						&copy; Copyright 2014 <a href="#">Company Name</a>
					</p>
				</div>
			</div>
		</div>

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
	<!-- datepicker용  -->
	<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>

	<!-- JS code for this page -->
	<script>
	function plusMenu(){
		var menustr = '<tr class="contentList"><td><input type="text" name="content'
			menustr += $(".contentList").length
			menustr += '" value="'
			menustr += $("#newMenu").val()
			menustr += '"></td></tr>'
			//alert(${m_countList[2]})
			if(${m_countList[2]}!=1){
				$(".contentList:last").after(menustr)
				}else{
					$("tr[bgcolor]").before(menustr)
				}
			$("#newMenu").val("")
	}
	
	function goPrev(){
		var day = stringTodate($("#date").text().substr(0, 10))
		day.setDate(day.getDate() - 1) //하루 전 날짜로
		var dayformat = $.datepicker.formatDate('yy-mm-dd', day) //String으로 바꾸기
		$("#date").text(dayformat + " :")
		postMenuofDate(dayformat)
	}
	
	function goNext(){
		var day = stringTodate($("#date").text().substr(0, 10))
		day.setDate(day.getDate() + 1) //하루 뒤 날짜로
		var dayformat = $.datepicker.formatDate('yy-mm-dd', day) //String으로 바꾸기
		$("#date").text(dayformat + " :")
		postMenuofDate(dayformat)
	}
	
	function setM_count(){
		//$("input[name='m_count']").val()
		var m_count = $(".contentList").length
		/* if($("#newMenu").val()!=""){//추가란에 메뉴 입력됨
			m_count=m_count+1
		}		 */
		$("input[name='m_count']").val(m_count)
		alert($("input[name='m_count']").val())
	}
	
		$(function() {
			/* $("#prev_date").on("click", function() {
				alert($("#date").text().substr(0, 10))
				var day = stringTodate($("#date").text().substr(0, 10))
				day.setDate(day.getDate() - 1) //하루 전 날짜로
				var dayformat = $.datepicker.formatDate('yy-mm-dd', day) //String으로 바꾸기
				$("#date").text(dayformat + " :")
				postMenuofDate(dayformat)
			})
			
			$("#next_date").on("click", function() {
				var day = stringTodate($("#date").text().substr(0, 10))
				day.setDate(day.getDate() + 1) //하루 뒤 날짜로
				var dayformat = $.datepicker.formatDate('yy-mm-dd', day) //String으로 바꾸기
				$("#date").text(dayformat + " :")
				postMenuofDate(dayformat)
			}) */
			
			/* $("button[type='submit']").on("click", function() {
				//$("input[name='m_count']").val()
				var m_count = $(".contentList").length*/
				/* if($("#newMenu").val()!=""){//추가란에 메뉴 입력됨
					m_count=m_count+1
				}		 *//*
				$("input[name='m_count']").val(m_count)
				alert($("input[name='m_count']").val())
			}) */
			
			/* $("#contentTable").on("click", "#addMenu", 
					function(event) {
				var menustr = '<tr class="contentList"><td><input type="text" name="content'
				menustr += $(".contentList").length
				menustr += '" value="'
				menustr += $("#newMenu").val()
				menustr += '"></td></tr>'
				alert(menustr)
				$(".contentList:last").after(menustr)
				$("#newMenu").val("")
				event.preventDefault()
			}) */
			
		})

		function stringTodate(datestr) {
			var dstr = datestr.split("-")
			var dd = dstr[2].split(" ")
			var day = new Date(dstr[0], dstr[1] - 1, dd[0])//연 월 일

			return day
		}

		function postMenuofDate(dayformat) {
			$.ajax({
						type : "POST",
						url : '/TodayLunch/Mypage_r/updateMenu.lunch',
						data : {
							date : dayformat
						},
						success : function(response) {
							var startstr = '<div class="inner-page padd">'
							var start = response.indexOf(startstr)
							var startlength = startstr.length
							var end = response.indexOf(
									'<div class="single-item-end"></div>',
									start + startlength)
							var endlength = '<div class="single-item-end"></div>'.length
							//alert("last:"+response.lastIndexOf("</table>")+"\nlast2:"+end)

							var m_content = $.trim(response.substring(start
									+ startlength, end + endlength))
							//alert(m_content)
							//$("#contentTable").html(m_content)
							$(".single-item").html(m_content)
							//alert(m_content)
							setReadonly();
						},
						error : function(error) {
							alert("postMenuofDate error:" + error);
						}
					})
		}

		function setReadonly() {
			//alert($("#date").text() )
			if ($("#date").text() < $.datepicker.formatDate('yy-mm-dd',
					new Date())) {
				//alert($('input[name^=content]').val())
				$('input[name^="content"]').attr('readonly', 'readonly')
				$('#newMenu').attr('disabled', 'disabled')
				$('#addMenu').attr('disabled', 'disabled')
				$('button[type=submit]').attr('disabled', 'disabled')
				$('button[type=reset]').attr('disabled', 'disabled')
			} else {
				$('input[name^="content"]').removeAttr('readonly')
				$('#newMenu').removeAttr('disabled')
				$('#addMenu').removeAttr('disabled')
				$('button[type=submit]').removeAttr('disabled')
				$('button[type=reset]').removeAttr('disabled')
			}
		}
		
	</script>
</body>
</html>






