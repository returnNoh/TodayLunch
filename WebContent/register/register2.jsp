<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
 <html>
 <head>
		<meta charset="utf-8">
		<!-- Title here -->
		<title>Checkout - CakeFactory</title>
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
												<img class="img-responsive img-rounded" src="img/nav-menu/nav2.jpg" alt="">
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
					<img class="img-responsive" src="img/crown-white.png" alt="">
					<!-- Heading -->
					<h2 class="white">Checkout</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li><a href="items.html">Shopping</a></li>
						<li><a href="item-single.html">Order Now</a></li>
						<li class="active">Checkout</li>
					</ol>
					<div class="clearfix"></div>
				</div>
			</div>
			
			<!-- Banner End -->
			
			
			
			 <!-- Inner Content -->
		<div class="inner-page padd">
				Checkout Start
 		<div class="Checkout">
 				<div class="container">
 			<!--Heading  -->
 					<h4>식당 회원가입</h4>
 						<div class="row">
							<div class="col-md-7 col-sm-6">
								<!-- Checkout Form -->
								<form class="form-horizontal" role="form" name="regForm" method="post" action="/TodayLunch/register/registerPro2.lunch">
									<div class="form-group">
									
										<label for="inputName" class="col-md-2 control-label">아이디</label>
										<div class="col-md-8">
											<input type="text" class="form-control" id="inputName" name="r_id" placeholder="아이디를 입력해주세요">
											<input type="button" value="ID중복확인" onClick= "idCheck2(this.form.r_id.value)">
										</div>
									</div>            
									<div class="form-group">
										<label for="inputEmail1" class="col-md-2 control-label">비밀번호</label>
										<div class="col-md-8">
											<input type="password" class="form-control" id="inputEmail1" name="r_passwd" placeholder="비밀번호를 입력하세요">
										</div>
									</div>
									<div class="form-group">
										<label for="inputPhone" class="col-md-2 control-label">비밀번호 확인</label>
										<div class="col-md-8">
											<input type="password" class="form-control" id="inputPhone" name="r_passwd2" placeholder="비밀번호를 확인합니다">
										</div>
									</div>
									<div class="form-group">
										<label for="inputCountry" class="col-md-2 control-label">이메일</label>
										<div class="col-md-8">
											<input type="text" class="form-control" id="inputPhone" name="r_email" placeholder="이메일을 입력하세요">
										</div>
									</div>              
									<div class="form-group">
										<label for="inputAddress" class="col-md-2 control-label">연락처</label>
										<div class="col-md-8">
										<input type="text" class="form-control" id="inputPhone" name="r_phone" placeholder="연락처를 적어주세요">
											</div>
									</div>
									<div class="form-group">
										<div class="col-md-offset-2 col-md-8">
											<div class="checkbox">
												<label>
													<input type="checkbox"> 회원정보 입력동의 
												</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-offset-2 col-md-8">
											<button class="btn btn-danger btn-sm" onclick="inputCheck()">회원가입</button>&nbsp;
											<button type="reset" class="btn btn-default btn-sm">다시쓰기</button>
										</div>
									</div>
								</form>
							</div>
										<div class="col-md-5 col-sm-6">
								<!-- Checkout sidebar items -->
								<div class="sidebar-item">
									<!-- Heading -->
									<h5 class="pull-left">Free Delivery</h5>
									<!-- Sidebar content icon -->
									<i class="fa fa-truck br-green pull-right"></i>
									<div class="clearfix"></div>
									<!-- Sidebar Paragraph -->
									<p>Lorem ipsum dolor sit amet, conse ctetur adipi sicing elit, sed do eiusmod tempor incid idunt ut labore et conse ctetur adipi sicing elit, sed do eiusmod dolore magna aliqua.</p>
								</div>
								<!-- Checkout sidebar items -->
								<div class="sidebar-item">
									<!-- Heading -->
									<h5 class="pull-left">Complain / Support</h5>
									<!-- Sidebar content icon -->
									<i class="fa fa-headphones br-red pull-right"></i>
									<div class="clearfix"></div>
									<!-- Sidebar Paragraph -->
									<p>Lorem ipsum dolor sit amet, conse ctetur adipi sicing elit, sed do eiusmod tempor incid idunt ut labore et conse ctetur adipi sicing elit, sed do eiusmod dolore magna aliqua.</p>
								</div>
							</div>
								
								</form>
							</div>
						</div>
						</div>
 </div>
 <!--Checkout end  -->
 
			
				
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
									<img class="img-responsive" src="img/fruit3.png" alt="">
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
								<p>멀리 찾아갈 필요없이 강남역 부근 당신의 점심메뉴를 확인하세요! MyLunch를 통해 황금같은 시간을 아끼고, 당신의 점심을 조금더 풍족하게 즐기세요! </p>
								<hr>
								<!-- Heading -->
								<h6>온라인 고객 결제</h6>
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
							
							<!-- <div class="footer-widget">
								Heading
								<h4>Join Us Today</h4>
								Paragraph
								<p>There is no one who loves pain itself, who seeks after it and wants to have it.</p>
								Subscribe form
								<form role="form">
									<div class="form-group">
										<input class="form-control" type="text" placeholder="Your name">
									</div>
									<div class="form-group">
										<input class="form-control" type="email" placeholder="Your email">
									</div>
									<button class="btn btn-danger" type="button">Subscribe</button>
								</form>
							</div>  -->
							
							<!--/ Footer widget end-->
							
							
							
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
							</div> 
							<!--/ Footer widget end -->
						</div>
					</div>
					<!-- Copyright -->
					<div class="footer-copyright">
						<!-- Paragraph -->
						<p>
						© Copyright 2014 
						<a href="#">Company Name</a>
						</p>
					</div>
				</div>
			</div>
			
			<!-- Footer End -->
		</div>		
		<!-- / Wrapper End -->	
		<!-- Scroll to top -->
		<span class="totop" style="display: none;"><a href="#"><i class="fa fa-angle-up"></i>
		</a>
		</span> 		
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
 
 
 
 
 
 
 
 
 <!-- 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>식당 회원가입 페이지</title>
<link href="style.css" rel="stylesheet" type="text/css">

<script language="JavaScript" src="../script.js"></script>
</head>
<body bgcolor="#FFCDD2" onLoad="regForm.r_id.focus()">
<br><br>
<table align="center" border="0" cellspancing="0" cellpadding="5">
<tr>
<td align="center" valign="middle" bgcolor="#FFEBEE">
	<table border="1" cellspacing="0" cellpadding="2" align="center">
		<form name="regForm" method="post" action="/TodayLunch/register/registerPro2.lunch">
		<tr align="center" bgcolor="#F44336">
			<td colspan="5"><font color="#FFEBEE"><b>식당 회원가입</b></font></td>
			</tr>
			<tr>
			 <td width=20%>식당 아이디</td>
			 <td width=57%><input type="text" name="r_id" size="15">
			<input type="button" value="ID중복확인" onClick= "idCheck2(this.form.r_id.value)"></td>
			<td width="30%">아이디를 입력해주세요</td>
		</tr>
		<tr>
		<td>패스워드</td>
		<td><input type="password" name="r_passwd" size="15"></td>
		<td>패스워드를 적어주세요</td>
		</tr>
		<tr>
		<td>패스워드 확인</td>
		<td><input type="password" name="r_passwd2" size="15"></td>
		<td>패스워드를 확인합니다</td>
		</tr>
		<tr>
		<tr>
		<td>이메일</td>
		<td><input type="text" name="r_email" size="15"></td>
		<td>이메일을 적어주세요</td>
		</tr>
		<td>연락처</td>
		<td><input type="text" name="r_phone" size="15"></td>
		<td>연락처를 적어주세요</td>
		</tr>

		<tr>
		<td colspan="3" align="center">
		<input type="button" value="회원가입" onclick="inputCheck2()">
		<input type="reset" value="다시쓰기">
		</form>
</table>
</body>
</html>

 --> 