<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 

<html>
<head>
		<meta charset="utf-8">
		<!-- Title here -->
		<title>Online Shopping Single Item - CakeFactory</title>
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
		<div class="modal fade" id="shoppingcart1" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
						<button type="button" class="btn btn-default" data-dismiss="modal">Continue Shopping</button>
						<button type="button" class="btn btn-info">Checkout</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- Model End -->
		
		<!-- Page Wrapper -->
		<div class="wrapper">
		
			<!-- Header Start -->
			
			<div class="header">
				<div class="container">
					<!-- Header top area content -->
					<div class="header-top">
						<div class="row">
							<div class="col-md-4 col-sm-4">
								<!-- Header top left content contact -->
								<div class="header-contact">
									<!-- Contact number -->
									<span><i class="fa fa-phone red"></i> 888-888-8888</span>
								</div>
							</div>
							<div class="col-md-4 col-sm-4">
								<!-- Header top right content search box -->
								<div class=" header-search">
									<form class="form" role="form">
										<div class="input-group">
										  <input type="text" class="form-control" placeholder="Search...">
										  <span class="input-group-btn">
											<button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
										  </span>
										</div>
									</form>
								</div>
							</div>
							<div class="col-md-4 col-sm-4">
								<!-- Button Kart -->
								<div class="btn-cart-md">
									<a class="cart-link" href="#">
										<!-- Image -->
										<img class="img-responsive" src="../img/cart.png" alt="">
										<!-- Heading -->
										<h4>Shopping Cart</h4>
										<span>3 items $489/-</span>
										<div class="clearfix"></div>
									</a>
									<ul class="cart-dropdown" role="menu">
										<li>
											<!-- Cart items for shopping list -->
											<div class="cart-item">
												<!-- Item remove icon -->
												<a href="#"><i class="fa fa-times"></i></a>
												<!-- Image -->
												<img class="img-responsive img-rounded" src="../img/nav-menu/nav1.jpg" alt="">
												<!-- Title for purchase item -->
												<span class="cart-title"><a href="#">Exception Reins Evocative</a></span>
												<!-- Cart item price -->
												<span class="cart-price pull-right red">$200/-</span>
												<div class="clearfix"></div>
											</div>
										</li>
										<li>
											<!-- Cart items for shopping list -->
											<div class="cart-item">
												<!-- Item remove icon -->
												<a href="#"><i class="fa fa-times"></i></a>
												<!-- Image -->
												<img class="img-responsive img-rounded" src="../img/nav-menu/nav2.jpg" alt="">
												<!-- Title for purchase item -->
												<span class="cart-title"><a href="#">Taut Mayoress Alias Appendicitis</a></span>
												<!-- Cart item price -->
												<span class="cart-price pull-right red">$190/-</span>
												<div class="clearfix"></div>
											</div>
										</li>
										<li>
											<!-- Cart items for shopping list -->
											<div class="cart-item">
												<!-- Item remove icon -->
												<a href="#"><i class="fa fa-times"></i></a>
												<!-- Image -->
												<img class="img-responsive img-rounded" src="../img/nav-menu/nav3.jpg" alt="">
												<!-- Title for purchase item -->
												<span class="cart-title"><a href="#">Sinter et Molests Perfectionist</a></span>
												<!-- Cart item price -->
												<span class="cart-price pull-right red">$99/-</span>
												<div class="clearfix"></div>
											</div>
										</li>
										<li>
											<!-- Cart items for shopping list -->
											<div class="cart-item">
												<a class="btn btn-danger" data-toggle="modal" href="#shoppingcart1">Checkout</a>
											</div>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 col-sm-5">
							<!-- Link -->
							<a href="index.html">
								<!-- Logo area -->
								<div class="logo">
									<img class="img-responsive" src="../img/logo.png" alt="">
									<!-- Heading -->
									<h1>오늘의 점심</h1>
									<!-- Paragraph -->
									<p>Facility ester expedite instinct.</p>
								</div>
							</a>
						</div>
						<div class="col-md-8 col-sm-7">
							<!-- Navigation -->
							<nav class="navbar navbar-default navbar-right" role="navigation">
								<div class="container-fluid">
									<!-- Brand and toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
											<span class="sr-only">Toggle navigation</span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
										<ul class="nav navbar-nav">
											<li><a href="index.html"><img src="../img/nav-menu/nav1.jpg" class="img-responsive" alt=""> Home</a></li>
											<li class="dropdown hidden-xs">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../img/nav-menu/nav2.jpg" class="img-responsive" alt=""> Menu <b class="caret"></b></a>
												<ul class="dropdown-menu dropdown-md">
													<li>
														<div class="row">
															<div class="col-md-4 col-sm-6">
																<!-- Menu Item -->
																<div class="menu-item">
																	<!-- Heading -->
																	<h3>Vegetarian</h3>
																	<!-- Image -->
																	<img src="../img/dish/dish1.jpg" class="img-responsive" alt="">
																	<!-- Paragraph -->
																	<p>Sea nut perspicacity under omni piste natures mirror of there with consequent.</p>
																	<!-- Button -->
																	<a href="menu.html" class="btn btn-danger btn-xs">View Menu</a>
																</div>
															</div>
															<div class="col-md-4 col-sm-6">
																<!-- Menu Item -->
																<div class="menu-item">
																	<!-- Heading -->
																	<h3>Non-Vegetarian</h3>
																	<!-- Image -->
																	<img src="../img/dish/dish2.jpg" class="img-responsive" alt="">
																	<!-- Paragraph -->
																	<p>Sea nut perspicacity under omni piste natures mirror as precode consequent.</p>
																	<!-- Button -->
																	<a href="menu.html" class="btn btn-danger btn-xs">View Menu</a>
																</div>
															</div>
															<div class="col-md-4">
																<!-- Menu Item -->
																<div class="menu-item">
																	<!-- Heading -->
																	<h3>Special Menu</h3>
																	<!-- Image -->
																	<img src="../img/dish/dish3.jpg" class="img-responsive" alt="">
																	<!-- Paragraph -->
																	<p>Sea nut perspicacity under omni piste natures mirror consequent.</p>
																	<!-- Button -->
																	<a href="menu.html" class="btn btn-danger btn-xs">View Menu</a>
																</div>
															</div>
														</div>
													</li>
												</ul>
											</li>
											<li class="dropdown visible-xs">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu <b class="caret"></b></a>
												<ul class="dropdown-menu">
													<li><a href="menu.html">Vegetarian</a></li>
													<li><a href="menu.html">Non Vegetarian</a></li>
													<li><a href="menu.html">Special Menu</a></li>
												</ul>
											</li>
											<li><a href="gallery.html"><img src="../img/nav-menu/nav3.jpg" class="img-responsive" alt=""> Gallery</a></li>
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../img/nav-menu/nav4.jpg" class="img-responsive" alt=""> Shop <b class="caret"></b></a>
												<ul class="dropdown-menu">
													<li><a href="items.html">Shopping</a></li>
													<li><a href="item-single.html">Order Now</a></li>
													<li><a href="checkout.html">Checkout</a></li>
													<li><a href="reserve-seats.html">Reservation</a></li>
													<li><a href="contact.html">Contact Us</a></li>
												</ul>
											</li>
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="../img/nav-menu/nav5.jpg" class="img-responsive" alt=""> Pages <b class="caret"></b></a>
												<ul class="dropdown-menu">
													<li><a href="error.html">404 Error</a></li>
													<li><a href="0-base.html">Blank Page</a></li>
													<li><a href="blog.html">Blog</a></li>
													<li><a href="blog-single.html">Blog Single</a></li>
													<li><a href="components.html">Components</a></li>
													<li><a href="general.html">General</a></li>
													<li><a href="nutrition-info.html">Nutrition Info</a></li>
													<li><a href="recipe.html">Recipes</a></li>
												</ul>
											</li>
											<li><a href="aboutus.html"><img src="../img/nav-menu/nav6.jpg" class="img-responsive" alt=""> About</a></li>
										</ul>
									</div><!-- /.navbar-collapse -->
								</div><!-- /.container-fluid -->
							</nav>
						</div>
					</div>
				</div> <!-- / .container -->
			</div>
			
			<!-- Header End -->
			
			<!-- Banner Start -->
			
			<div class="banner padd">
				<div class="container">
					<!-- Image -->
					<img class="img-responsive" src="../img/crown-white.png" alt="">
					<!-- Heading -->
					<h2 class="white">Order Now</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li><a href="items.html">Shopping</a></li>
						<li class="active">Order Now</li>
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
							<div class="row">
								<div class="col-md-4 col-sm-5">
									<!-- Product image -->
									<img class="img-responsive img-thumbnail" src="../img/shopping/shop-single.jpg" alt="">
								</div>
								<div class="col-md-8 col-sm-7">
									<!-- Heading -->
									<h3>식당회원 입력정보 재확인</h3>
									<div class="row">
										<div class="col-md-7 col-sm-12">
											<!-- Single item details -->
											<div class="item-details">
												<!-- Paragraph -->
												<p class="text-justify">입력하신 정보를  다시 한번 확인해주세요</p>
												<!-- Heading -->
												<h5>${r_id}님 회원가입하시겠습니까?</h5>
												<!-- Recipe ingredients -->
												
												<!-- <ul class="list-unstyled">
													<li>
														<i class="fa fa-check"></i> Cream <span class="pull-right"> 100g</span>
														<div class="clearfix"></div>
													</li>
													<li>
														<i class="fa fa-check"></i> Suger <span class="pull-right"> 250g</span>
														<div class="clearfix"></div>
													</li>
													<li>
														<i class="fa fa-check"></i> Nam libero et <span class="pull-right"> 1/2 cup</span>
														<div class="clearfix"></div>
													</li>
													<li>
														<i class="fa fa-check"></i> Lam hured ore <span class="pull-right"> 100ml</span>
														<div class="clearfix"></div>
													</li>
												</ul> -->
											
											</div>
										</div>
										<div class="col-md-5 col-sm-12"> 
											<!-- Form inside table wrapper -->
											<div class="table-responsive">
												<!-- Ordering form -->
												<form role="form" name="regForm" method="post" action="memberInsert2.lunch">
													<!-- Table -->
													<table class="table table-bordered">
														<tbody><tr>
															<td>아이디</td>
															<td><input type="text" name="r_id" value="${r_id}"></td>
														</tr>
														<tr>
															<td>패스워드</td>
															<td><input type="password" name="r_passwd" value="${r_passwd}"></td>
														</tr>
														<tr>
															<td>이메일</td>
															<td><input type="text" name="r_email" value= "${r_email}"></td>
														</tr>
														<tr>
															<td>연락처</td>
															<td><input type="text" name="r_phone" value="${r_phone}"></td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td><div class="form-group">
																<button type="submit" class="btn btn-danger btn-sm">확인완료</button>
																<button class="btn btn-danger btn-sm" onclick="history.back()">다시쓰기</button>
															</div></td>
														</tr>
													</tbody></table>
												</form><!--/ Table End-->
											</div><!--/ Table responsive class end -->
										</div>
									</div><!--/ Inner row end  -->
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Single Item End -->
			
				<!-- Showcase Start -->
				
				<div class="showcase">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<!-- Showcase section item -->
								<div class="showcase-item">
									<!-- Image -->
									<img class="img-responsive" src="../img/fruit2.png" alt="">
									<!-- Heading -->
									<h3><a href="#">Equine Porno Sumos</a></h3>
									<!-- Paragraph -->
									<p>Nam libero tempore, cum soluta nobis est minis voluptas assum simple and easy to distinguis quo.</p>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<!-- Showcase section item -->
								<div class="showcase-item">
									<!-- Image -->
									<img class="img-responsive" src="../img/fruit3.png" alt="">
									<!-- Heading -->
									<h3><a href="#">Equine Porno Sumos</a></h3>
									<!-- Paragraph -->
									<p>Nam libero tempore, cum soluta nobis est minis voluptas assum simple and easy to distinguis quo.</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Showcase End -->
				
			</div><!-- / Inner Page Content End -->	
			
			<!-- Footer Start -->
			
			<div class="footer padd">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<!-- Footer widget -->
							<div class="footer-widget">
								<!-- Logo area -->
								<div class="logo">
									<img class="img-responsive" src="../img/logo.png" alt="">
									<!-- Heading -->
									<h1>오늘의 점심</h1>
								</div>
								<!-- Paragraph -->
								<p>멀리 찾아갈 필요없이 강남역 부근 당신의 점심메뉴를 확인하세요! MyLunch를 통해 황금같은 시간을 아끼고, 당신의 점심을 조금더 풍족하게 즐기세요!</p>
								<hr>
								<!-- Heading -->
								<h6>On-line Payment Clients</h6>
								<!-- Images -->
								<a href="#"><img class="payment img-responsive" src="../img/payment/2co.gif" alt=""></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/authorizenet.gif" alt=""></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/discover.gif" alt=""></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/egold.gif" alt=""></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/mastercard.gif" alt=""></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/paypal.gif" alt=""></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/visa.gif" alt=""></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/worldpay.gif" alt=""></a>
							</div> <!--/ Footer widget end -->
						</div>
						<div class="col-md-3 col-sm-6">
							<!-- Footer widget -->
							<div class="footer-widget">
								<!-- Heading -->
								<h4>Famous Dishes</h4>
								<!-- Images -->
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt=""></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt=""></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt=""></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt=""></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt=""></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt=""></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt=""></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt=""></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt=""></a>
							</div> <!--/ Footer widget end -->
						</div>
						<div class="clearfix visible-sm"></div>
						<div class="col-md-3 col-sm-6">
							<!-- Footer widget -->
							<div class="footer-widget">
								<!-- Heading -->
								<h4>Join Us Today</h4>
								<!-- Paragraph -->
								<p>There is no one who loves pain itself, who seeks after it and wants to have it.</p>
								<!-- Subscribe form -->
								<form role="form">
									<div class="form-group">
										<input class="form-control" type="text" placeholder="Your name">
									</div>
									<div class="form-group">
										<input class="form-control" type="email" placeholder="Your email">
									</div>
									<button class="btn btn-danger" type="button">Subscribe</button>
								</form>
							</div> <!--/ Footer widget end -->
						</div>
						<div class="col-md-3 col-sm-6">
							<!-- Footer widget -->
							<div class="footer-widget">
								<!-- Heading -->
								<h4>Contact Us</h4>
								<div class="contact-details">
									<!-- Address / Icon -->
									<i class="fa fa-map-marker br-red"></i> <span>#768, 5th floor, N S Building,<br>Csm Block, Park Road,<br> Bangalore - 234567</span>
									<div class="clearfix"></div>
									<!-- Contact Number / Icon -->
									<i class="fa fa-phone br-green"></i> <span>+91 88-88-888888</span>
									<div class="clearfix"></div>
									<!-- Email / Icon -->
									<i class="fa fa-envelope-o br-lblue"></i> <span><a href="#">abc@example.com</a></span>
									<div class="clearfix"></div>
								</div>
								<!-- Social media icon -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
									<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
									<a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a>
								</div>
							</div> <!--/ Footer widget end -->
						</div>
					</div>
					<!-- Copyright -->
					<div class="footer-copyright">
						<!-- Paragraph -->
						<p>© Copyright 2014 <a href="#">Company Name</a></p>
					</div>
				</div>
			</div>
			
			<!-- Footer End -->
			
		</div><!-- / Wrapper End -->
		
		
		<!-- Scroll to top -->
		<span class="totop" style="display: none;"><a href="#"><i class="fa fa-angle-up"></i></a></span> 
		
		
		
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
		<script src="../script.js"></script>
		
</body>
</html>






<!-- 원래소스코드 -->
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입완료 페이지</title>
<!-- <link href="style.css" rel="stylesheet" type="text/css"> -->
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#996600"></body>
 <br><br>
 <table align="center" border="0" cellspacing="0" cellpadding="5">
 <tr>
  <td align="center valign="middle" bgcolor="#FFFCC">
   <table border="1" cellspacing="0" cellpadding="2" align="center">
   <form name="regForm" method="post" action="memberInsert2.lunch">
      <tr align="center" bgcolor="#996600">
      	<td colspan="3"><font color="#FFFFF"><b>
      	${r_id} 님 회원가입하시겠습니까?
      	</b></font></td>
      	</tr>
      	<tr>
      	<td width="25%">아이디</td>
      	<td width="65%">
      	<input type="text" name="r_id" value="${r_id}"></td>
      	</tr>
      	<tr>
      	 <td>패스워드</td>
      	 <td><input type="password" name="r_passwd"
      	 value="${r_passwd}"></td>
      	 </tr>
      	  <tr>
      	  <td>이메일</td>
      	  <td><input type="text" name="r_email"
      	  value="${r_email}"></td>
      	  </tr>
      	  <td>연락처</td>
      	  <td><input type="text" name="r_phone"
      	  value="${r_phone}"></td>
      	  </tr>
      	  
      	  <tr>
      	   <td colspan="3" align="center">
      	   	<input type="submit" value="확인완료">
      	   	
      	   	<input type="button" value="다시쓰기" onclick="history.back()">
      	   	</td>
      	   	</tr>
      	   	</from>
      	   	</table>
      	   	</td>
      	   	</tr>    	
 </table>
 </body>
</html>
 --%>





