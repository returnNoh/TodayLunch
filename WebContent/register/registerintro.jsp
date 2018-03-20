<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>
    <head>
		<meta charset="utf-8">
		<!-- Title here -->
		<title>Online Shopping - CakeFactory</title>
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
			<jsp:include page="../top.jsp" ></jsp:include>
			
			
			<!-- Header End -->
			
			<!-- Banner Start -->
			
			<div class="banner padd">
				<div class="container">
					<!-- Image -->
					<img class="img-responsive" src="../img/crown-white.png" alt="">
					<!-- Heading -->
					<h2 class="white">회원가입</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="active">Shopping</li>
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
								<div class="col-md-3 col-sm-6">
								
									<!-- Shopping items -->
									<!-- <div class="shopping-item">
										Image
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop1.jpg" alt=""></a>
										Shopping item name / Heading
										<h4 class="pull-left"><a href="item-single.html">Quasi Architects</a></h4>
										<span class="item-price pull-right">$49</span>
										<div class="clearfix"></div>
										Paragraph
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										Buy now button
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										Shopping item hover block & link
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
									</div> -->
									
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Shopping items -->
									<!-- 1)개인 회원가입 선택  -->
									<div class="shopping-item">
										<!-- Image -->
										<a href="/TodayLunch/register/register.lunch"><img class="img-responsive" src="../img/shopping/shop2.jpg" alt=""></a>
										<!-- Shopping item name / Heading -->
										<h4 class="pull-left">
										<a href="/TodayLunch/register/register.lunch">개인 회원가입</a>
										</h4>
										<span class="item-price pull-right">Click</span>
										<div class="clearfix"></div>
										<!-- Paragraph -->
										<p>개인</p>
										<!-- Buy now button -->
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										<!-- Shopping item hover block & link -->
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="/TodayLunch/register/register.lunch">Person</a>
										<!-- Hot tag -->
										<!-- <span class="hot-tag br-red">Hot</span> -->
									</div>
								</div>
								
								<!--  2)식당 회원가입 선택 -->
								<div class="col-md-3 col-sm-6">
									<!-- Shopping items -->
									<div class="shopping-item">
										<!-- Image -->
										<a href="/TodayLunch/register/register2.lunch"><img class="img-responsive" src="../img/shopping/shop3.jpg" alt=""></a>
										<!-- Shopping item name / Heading -->
										<h4 class="pull-left">
										<a href="/TodayLunch/register/register2.lunch">식당 회원가입</a>
										</h4>
										<span class="item-price pull-right">Click</span>
										<div class="clearfix"></div>
										<!-- Paragraph -->
										<p>식당</p>
										<!-- Buy now button -->
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										<!-- Shopping item hover block & link -->
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="/TodayLunch/register/register2.lunch">Restaurant</a>
									</div>
								</div>
								
								<!-- <div class="col-md-3 col-sm-6">
									Shopping items
									<div class="shopping-item">
										Image
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop4.jpg" alt=""></a>
										Shopping item name / Heading
										<h4 class="pull-left"><a href="item-single.html">Excepteur Sint</a></h4>
										<span class="item-price pull-right">$21</span>
										<div class="clearfix"></div>
										Paragraph
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										Buy now button
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										Shopping item hover block & link
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
										Hot tag
										<span class="hot-tag br-lblue">Mm</span>
									</div>
								</div> -->
								
								<!-- <div class="col-md-3 col-sm-6">
									Shopping items
									<div class="shopping-item">
										Image
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop5.jpg" alt=""></a>
										Shopping item name / Heading
										<h4 class="pull-left"><a href="item-single.html">Occam Cupid</a></h4>
										<span class="item-price pull-right">$15</span>
										<div class="clearfix"></div>
										Paragraph
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										Buy now button
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										Shopping item hover block & link
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
										Hot tag
										<span class="hot-tag br-red">New</span>
									</div>
								</div> -->
								
								<!-- <div class="col-md-3 col-sm-6">
									Shopping items
									<div class="shopping-item">
										Image
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop6.jpg" alt=""></a>
										Shopping item name / Heading
										<h4 class="pull-left"><a href="item-single.html">Fugiat Nulla</a></h4>
										<span class="item-price pull-right">$25</span>
										<div class="clearfix"></div>
										Paragraph
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										Buy now button
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										Shopping item hover block & link
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
									</div>
								</div> -->
								
								<!-- <div class="col-md-3 col-sm-6">
									Shopping items
									<div class="shopping-item">
										Image
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop7.jpg" alt=""></a>
										Shopping item name / Heading
										<h4 class="pull-left"><a href="item-single.html">Eos Qui Ratione</a></h4>
										<span class="item-price pull-right">$43</span>
										<div class="clearfix"></div>
										Paragraph
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										Buy now button
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div> -->
										
										<!-- Shopping item hover block & link -->
										
									<!-- 	<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
									</div>
								</div> -->
								
								<!-- <div class="col-md-3 col-sm-6">
									Shopping items
									<div class="shopping-item">
										Image
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop8.jpg" alt=""></a>
										Shopping item name / Heading
										<h4 class="pull-left"><a href="item-single.html">Natus Erwor Site</a></h4>
										<span class="item-price pull-right">$19</span>
										<div class="clearfix"></div>
										Paragraph
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										Buy now button
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										Shopping item hover block & link
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
										Hot tag
										<span class="hot-tag br-green">New</span>
									</div>
								</div> -->
								
							</div>
							<!-- Pagination -->
					<!-- 		<div class="shopping-pagination">
								<ul class="pagination">
									<li class="disabled"><a href="#">«</a></li>
									<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">»</a></li>
								</ul>
							</div> -->
							<!-- Pagination end-->
						</div>
					</div>
				</div>
				
				<!-- Shopping End -->
			
				<!-- Showcase Start -->
				
				<div class="showcase">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<!-- Showcase section item -->
							<!-- 	<div class="showcase-item">
									Image
									<img class="img-responsive" src="../img/fruit2.png" alt="">
									Heading
									<h3><a href="#">Equine Porno Sumos</a></h3>
									Paragraph
									<p>Nam libero tempore, cum soluta nobis est minis voluptas assum simple and easy to distinguis quo.</p>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								Showcase section item
								<div class="showcase-item">
									Image
									<img class="img-responsive" src="../img/fruit3.png" alt="">
									Heading
									<h3><a href="#">Equine Porno Sumos</a></h3>
									Paragraph
									<p>Nam libero tempore, cum soluta nobis est minis voluptas assum simple and easy to distinguis quo.</p>
									<div class="clearfix"></div>
								</div> -->
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
		<span class="totop" style="display: block;"><a href="#"><i class="fa fa-angle-up"></i></a></span> 
		
		
		
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
    
    
    
    
    
    
    
    
 
 <!--원래소스코드  -->
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>개인/식당</title>
</head>
<body bgcolor="#FFCDD2">

<center>
<input type="button" value="개인" onclick="location.href='/TodayLunch/register/register.lunch'">
<input type="button" value="식당" onclick="location.href='/TodayLunch/register/register2.lunch'">
	</tr>
	</from>
  </center>
</form>
</body>

</html> -->