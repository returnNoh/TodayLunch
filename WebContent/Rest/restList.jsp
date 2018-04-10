<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!-- Title here -->
<title>식당 목록 - 오늘의 점심</title>
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
	</head>
	
	<body>
		
			
		<!-- Shopping cart Modal -->
		<div class="modal fade" id="shoppingcart1" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
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
			
			<jsp:include page="../top.jsp"/>
			
			<!-- Header End -->
			
			<!-- Banner Start -->
			
			<div class="banner padd">
				<div class="container">
					<!-- Image -->
					<img class="img-responsive" src="../img/crown-white.png" alt="" />
					<!-- Heading -->
					<h2 class="white">식당 목록</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">메인</a></li>
						<li class="active">식당 목록</li>
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
									<div class="shopping-item">
										<!-- Image -->
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop1.jpg" alt="" /></a>
										<!-- Shopping item name / Heading -->
										<h4 class="pull-left"><a href="item-single.html">Quasi Architects</a></h4>
										
										<div class="clearfix"></div>
										<!-- Paragraph -->
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										<!-- Buy now button -->
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										<!-- Shopping item hover block & link -->
										<!-- <div class="item-hover br-red hidden-xs"></div> -->
										<!-- <a class="link hidden-xs" href="#">Add to cart</a> -->
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Shopping items -->
									<div class="shopping-item">
										<!-- Image -->
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop2.jpg" alt="" /></a>
										<!-- Shopping item name / Heading -->
										<h4 class="pull-left"><a href="item-single.html">Byances Kcepte</a></h4>
										<span class="item-price pull-right">$31</span>
										<div class="clearfix"></div>
										<!-- Paragraph -->
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										<!-- Buy now button -->
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										<!-- Shopping item hover block & link -->
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
										<!-- Hot tag -->
										<span class="hot-tag br-red">Hot</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Shopping items -->
									<div class="shopping-item">
										<!-- Image -->
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop3.jpg" alt="" /></a>
										<!-- Shopping item name / Heading -->
										<h4 class="pull-left"><a href="item-single.html">Cepturi Sintocc</a></h4>
										<span class="item-price pull-right">$29</span>
										<div class="clearfix"></div>
										<!-- Paragraph -->
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										<!-- Buy now button -->
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										<!-- Shopping item hover block & link -->
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Shopping items -->
									<div class="shopping-item">
										<!-- Image -->
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop4.jpg" alt="" /></a>
										<!-- Shopping item name / Heading -->
										<h4 class="pull-left"><a href="item-single.html">Excepteur Sint</a></h4>
										<span class="item-price pull-right">$21</span>
										<div class="clearfix"></div>
										<!-- Paragraph -->
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										<!-- Buy now button -->
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										<!-- Shopping item hover block & link -->
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
										<!-- Hot tag -->
										<span class="hot-tag br-lblue">Mm</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Shopping items -->
									<div class="shopping-item">
										<!-- Image -->
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop5.jpg" alt="" /></a>
										<!-- Shopping item name / Heading -->
										<h4 class="pull-left"><a href="item-single.html">Occam Cupid</a></h4>
										<span class="item-price pull-right">$15</span>
										<div class="clearfix"></div>
										<!-- Paragraph -->
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										<!-- Buy now button -->
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										<!-- Shopping item hover block & link -->
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
										<!-- Hot tag -->
										<span class="hot-tag br-red">New</span>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Shopping items -->
									<div class="shopping-item">
										<!-- Image -->
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop6.jpg" alt="" /></a>
										<!-- Shopping item name / Heading -->
										<h4 class="pull-left"><a href="item-single.html">Fugiat Nulla</a></h4>
										<span class="item-price pull-right">$25</span>
										<div class="clearfix"></div>
										<!-- Paragraph -->
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										<!-- Buy now button -->
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										<!-- Shopping item hover block & link -->
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Shopping items -->
									<div class="shopping-item">
										<!-- Image -->
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop7.jpg" alt="" /></a>
										<!-- Shopping item name / Heading -->
										<h4 class="pull-left"><a href="item-single.html">Eos Qui Ratione</a></h4>
										<span class="item-price pull-right">$43</span>
										<div class="clearfix"></div>
										<!-- Paragraph -->
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										<!-- Buy now button -->
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										<!-- Shopping item hover block & link -->
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Shopping items -->
									<div class="shopping-item">
										<!-- Image -->
										<a href="item-single.html"><img class="img-responsive" src="../img/shopping/shop8.jpg" alt="" /></a>
										<!-- Shopping item name / Heading -->
										<h4 class="pull-left"><a href="item-single.html">Natus Erwor Site</a></h4>
										<span class="item-price pull-right">$19</span>
										<div class="clearfix"></div>
										<!-- Paragraph -->
										<p>Lorem ipsum dolor sit amet, conse ctetur adipis cicing elit.</p>
										<!-- Buy now button -->
										<div class="visible-xs">
											<a class="btn btn-danger btn-sm" href="#">Buy Now</a>
										</div>
										<!-- Shopping item hover block & link -->
										<div class="item-hover br-red hidden-xs"></div>
										<a class="link hidden-xs" href="#">Add to cart</a>
										<!-- Hot tag -->
										<span class="hot-tag br-green">New</span>
									</div>
								</div>
							</div>
							<!-- Pagination -->
							<div class="shopping-pagination">
								<ul class="pagination">
									<li class="disabled"><a href="#">&laquo;</a></li>
									<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&raquo;</a></li>
								</ul>
							</div>
							<!-- Pagination end-->
						</div>
					</div>
				</div>
				
				<!-- Shopping End -->
			
				<!-- Showcase Start -->
				
				
				
				<!-- Showcase End -->
				
			</div><!-- / Inner Page Content End -->	
			
			<!-- Footer Start -->
			
			<jsp:include page="../footer.jsp"/>
			
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
		
		$(window).scroll(function() {
		    if($(window).scrollTop() == $(document).height() - $(".footer").height()) {
		           alert($(document).height()+"-"+$(window).height())
		    }
		});
		</script>
	</body>	
</html>