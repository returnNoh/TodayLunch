<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <%request.setCharacterEncoding("UTF-8"); %>
 <c:set var="rest_info" value="${rest_info}"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="utf-8">
		<!-- Title here -->
		<title>Blog Single - CakeFactory</title>
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
					<h2 class="white">Blog</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li class="active">Blog Single</li>
					</ol>
					<div class="clearfix"></div>
				</div>
			</div>
			
			<!-- Banner End -->
			
			
			
			<!-- Inner Content -->
			<div class="inner-page padd">
			
				<!-- Blog Start -->
					
				<div class="blog">
					<div class="container">
						<div class="row">
							<div class="col-md-8">
								<!-- The new post done by user's all in the post block -->
								<div class="blog-post">
									<!-- Entry is the one post for each user -->
									<div class="entry">
										<!-- Post Images -->
										<div class="blog-img pull-left">
											<img src="../img/blog/blog1.jpg" class="img-responsive img-thumbnail" alt="" />
										</div>
										<!-- Meta for this block -->
										<div class="meta">
											<i class="fa fa-calendar"></i>&nbsp; 아이디:${rest_info.r_id}
											<span class="pull-right"><i class="fa fa-comment"></i> <a href="#">&nbsp;2 Comments</a></span>
										</div>
										<!-- Heading of the  post -->
										<h3><a href="blog-single.html">식당 이름:${rest_info.r_name}</a></h3>
										<hr /><!-- Horizontal line -->
										<!-- Paragraph -->
										<p>소개문:${rest_info.r_info}
										<div class="clearfix"></div>
									</div>
									<!-- Comment section -->						  
									<div class="comments">
										<div class="title"><h5>2 Comments</h5></div>
										<ul class="comment-list">
											<li class="comment">
												<a class="pull-left" href="#">
													<img class="avatar" src="../img/user.jpg" alt="" />
												</a>
												<div class="comment-author"><a href="#">Uiousve Rsionsha</a></div>
												<div class="cmeta">Commented on 26/1/2014</div>
												<p>Nulla facilisi. Sed justo dui, scelerisque ut consectetur vel, eleifend id erat. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat.</p>
												<div class="clearfix"></div>
											</li>
											<li class="comment reply">
												<a class="pull-left" href="#">
													<img class="avatar" src="../img/user.jpg" alt="" />
												</a>
												<div class="comment-author"><a href="#">Uiousve Rsionsha</a></div>
												<div class="cmeta">Commented on 02/2/2014</div>
												<p>Nulla facilisi. Sed justo dui, scelerisque ut consectetur vel, eleifend id erat. Phasellus condimentum rutrum aliquet. Quisque eu consectetur erat.</p>
											</li>
										</ul>
										<div class="clearfix"></div>
									</div><!--/ Comment section end -->
								</div><!--/ Blog post class end -->
								<!-- Comment posting -->							  
								<div class="respond well">
									<div class="title"><h5>Post Reply</h5></div>
									<div class="form">
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label for="name" class="col-lg-2 control-label">Name</label>
												<div class="col-lg-10">
													<input type="text" class="form-control" id="name" placeholder="Name">
												</div>
											</div>
											<div class="form-group">
												<label for="email" class="col-lg-2 control-label">Email</label>
												<div class="col-lg-10">
													<input type="email" class="form-control" id="email" placeholder="Email">
												</div>
											</div>
											<div class="form-group">
												<label for="website" class="col-lg-2 control-label">Website</label>
												<div class="col-lg-10">
													<input type="text" class="form-control" id="website" placeholder="Website">
												</div>
											</div>
											<div class="form-group">
												<label class="control-label col-lg-2" for="comment">Comment</label>
												<div class="col-lg-10">
												  <textarea class="form-control" id="comment" rows="3" placeholder="Comment"></textarea>
												</div>
											</div>
											  
											<div class="form-group">
												<div class="col-lg-offset-2 col-lg-10">
													<button type="submit" class="btn btn-danger btn-sm">Submit</button> &nbsp;
													<button type="reset" class="btn btn-default btn-sm">Reset</button>
												</div>
											</div>
										</form>
									</div>
								</div><!--/ Comment posting end -->	
								<!-- Navigation -->
								<div class="navigation button">  
									<div class="pull-left">
										<a href="blog.html" class="btn btn-danger btn-sm">&laquo; Previous Post</a>
									</div>
									<div class="pull-right">
										<a href="blog.html" class="btn btn-danger btn-sm">Next Post &raquo;</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="clearfix"></div>
							</div> <!--/ Main blog column end -->
							<div class="col-md-4">
								<!-- Blog page sidebar -->
								<div class="blog-sidebar">
									<div class="row">
										<div class="col-md-12 col-sm-6">
											<!-- Blog sidebar page widget -->
											<div class="sidebar-widget">
												<!-- Widget Heading -->
												<jsp:include page="map.jsp">
				<jsp:param value="${rest_info.r_wi}" name="wi"/>
			<jsp:param value="${rest_info.r_gy}" name="gy"/>
			<jsp:param value="${rest_info.r_add}" name="r_add"/>
				</jsp:include> 
											</div><!--/ Widget end -->
										</div>
										<div class="col-md-12 col-sm-6">
											<!-- Blog sidebar page widget -->
											<div class="sidebar-widget">
												<!-- Widget Heading -->
												<h4>Recent Post</h4>
												<!-- Recent post list -->
												<ul class="list-unstyled">
													<li><i class="fa fa-angle-double-right"></i> <a href="#">Delicious Pizza recipe, soluta nobqual blame betum rutrum allongs to this est eligend.</a></li>
													<li><i class="fa fa-angle-double-right"></i> <a href="#">Chicken recipe, luta nobisest hyelqual bltum rutrum alame belongs to thigend.</a></li>
													<li><i class="fa fa-angle-double-right"></i> <a href="#">Hot Cake recipe, jueilqual blame belongs to thuta ntum rutrum alobist hyeleniurd.</a></li>
													<li><i class="fa fa-angle-double-right"></i> <a href="#">French Food recipe, rsiqual blame belongs to thlutum rutrum alta nobniurd.</a></li>
												</ul>
											</div><!--/ Widget end -->
										</div>
										<div class="col-md-12 col-sm-6">
											<!-- Blog sidebar page widget -->
											<div class="sidebar-widget">
												<!-- Widget Heading -->
												<h4>Tags</h4>
												<a href="#" class="btn btn-warning btn-sm">Dessert</a>
												<a href="#" class="btn btn-danger btn-sm">Spicy Non-Veg</a>
												<a href="#" class="btn btn-default btn-sm">Drinks</a>
												<a href="#" class="btn btn-success btn-sm">Seafood</a>
												<a href="#" class="btn btn-info btn-sm">Globalist</a>
												<a href="#" class="btn btn-warning btn-sm">Cake</a>
												<a href="#" class="btn btn-success btn-sm">French</a>
												<a href="#" class="btn btn-info btn-sm">Indigent</a>
												<a href="#" class="btn btn-success btn-sm">Strum</a>
												<a href="#" class="btn btn-default btn-sm">Squalor</a>
												<a href="#" class="btn btn-warning btn-sm">Nobelium</a>
											</div><!--/ Widget end -->
										</div>
										<div class="col-md-12 col-sm-6">
											<!-- Blog sidebar page widget -->
											<div class="sidebar-widget">
												<!-- Widget Heading -->
												<h4>About Us</h4>
												<!-- Paragraph -->
												<p>소개문:${rest_info.r_info} 그미나의마늬라ㅟ만</p>
												<!-- Social media icon -->
												<div class="social">
													<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
													<a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
													<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
													<a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a>
												</div>
											</div><!--/ Widget end -->
										</div>
									</div><!--/ Inner row end -->
								</div><!--/ Page sidebar end -->
							</div>
						</div><!--/ Row end -->
					</div>
				</div>
				
				<!-- Blog End -->
			
				<!-- Showcase Start -->
				
				<div class="showcase">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<!-- Showcase section item -->
								<div class="showcase-item">
									<!-- Image -->
									<img class="img-responsive" src="../img/fruit2.png" alt="" />
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
									<img class="img-responsive" src="../img/fruit3.png" alt="" />
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
									<img class="img-responsive" src="../img/logo.png" alt="" />
									<!-- Heading -->
									<h1>CakeFactory</h1>
								</div>
								<!-- Paragraph -->
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et magna aliqua.</p>
								<hr />
								<!-- Heading -->
								<h6>On-line Payment Clients</h6>
								<!-- Images -->
								<a href="#"><img class="payment img-responsive" src="../img/payment/2co.gif" alt="" /></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/authorizenet.gif" alt="" /></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/discover.gif" alt="" /></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/egold.gif" alt="" /></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/mastercard.gif" alt="" /></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/paypal.gif" alt="" /></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/visa.gif" alt="" /></a>
								<a href="#"><img class="payment img-responsive" src="../img/payment/worldpay.gif" alt="" /></a>
							</div> <!--/ Footer widget end -->
						</div>
						<div class="col-md-3 col-sm-6">
							<!-- Footer widget -->
							<div class="footer-widget">
								<!-- Heading -->
								<h4>Famous Dishes</h4>
								<!-- Images -->
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
								<a href="#"><img class="dish img-responsive" src="../img/dish/dish1.jpg" alt="" /></a>
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
										<input class="form-control" type="text" placeholder="Your name" />
									</div>
									<div class="form-group">
										<input class="form-control" type="email" placeholder="Your email" />
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
									<i class="fa fa-map-marker br-red"></i> <span>#768, 5th floor, N S Building,<br />Csm Block, Park Road,<br /> Bangalore - 234567</span>
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
						<p>&copy; Copyright 2014 <a href="#">Company Name</a></p>
					</div>
				</div>
			</div>
			
			<!-- Footer End -->
			
		</div><!-- / Wrapper End -->
		
		
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
<title>식당 소개</title>
</head>
<body style="font-size:20pt">
  <c:set var="rest_info" value="${rest_info}"/> 
  
  아이디:${rest_info.r_id}<br>
  
  식당 이름:${rest_info.r_name}<br>
  
  소개문:${rest_info.r_info}<br>
  
  위도:${rest_info.r_wi} , 경도:${rest_info.r_gy}
 <div>
<jsp:include page="map.jsp">
<jsp:param value="${rest_info.r_wi}" name="wi"/>
<jsp:param value="${rest_info.r_gy}" name="gy"/>
<jsp:param value="${rest_info.r_add}" name="r_add"/>
</jsp:include> 
</div>
<b style="float:right">showRest.jsp:${rest_info.r_add}</b><br>
 
 
 <jsp:include page="/TodayLunch/Rest/test.lunch"/>
 
 
  
</body>
</html>






 --%>