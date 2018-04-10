<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<!-- Title here -->
		<title>식권 구매</title>
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
					<h2 class="white">BUY TICKET</h2>
					<ol class="breadcrumb">
						<li><a href="index.jsp">Home</a></li>
						<li class="active">buy Ticket</li>
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
								<div class="col-md-4 col-md-offset-3 col-sm-5">
									<!-- Product image -->
									<img class="img-responsive img-thumbnail" src="../img/shopping/shop-single.jpg" alt="" />
									<div style="margin-top:-40px;margin-left:20px;">
									<a href=""><h4 style="color:blue">back</h4></a>
									</div>
								</div>
								<div class="col-md-4 col-sm-7 col-md-pull-2[]" style="padding-top:80px">
									<!-- Heading -->
										
											<!-- Form inside table wrapper -->
											<div class="table-responsive">
												<!-- Ordering form -->
												<form role="form">
													<!-- Table -->
													<table class="table table-bordered">
														<tr>
															<td>Quantity</td>
															<td><div class="form-group">
																<select class="form-control input-sm" id="su">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																	<option>5</option>
																	<option>6</option>
																	<option>7</option>
																	<option>8</option>
																	<option>9</option>
																	<option>10</option>
																</select>
															</div></td>
															<tr>
															<td>Price</td>
															<td id="price">계산가격</td>
														</tr>
														</tr>
														<tr>
															<td>Payment Mode</td>
															<td><div class="form-group">
																<select class="form-control input-sm">
																	<option>Cash on Restaurant</option>
																	<option>Credit Card</option>
																	<option>Debit Card</option>
																</select>
															</div></td>
														</tr>
														<tr>
															<td>&nbsp;</td>
															<td style="float:right"><div class="form-group" style="border:0px">
																<button type="submit" class="btn btn-danger btn-sm">Payment</button>
															</div></td>
														</tr>
													</table>
												</form><!--/ Table End-->
											</div><!--/ Table responsive class end -->
										
									</div><!--/ Inner row end  -->
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Single Item End -->
			
				<!-- Showcase Start -->
				
				
				
				<!-- Showcase End -->
				
			</div><!-- / Inner Page Content End -->	
			
			<!-- Footer Start -->
			
			<jsp:include page="../footer.jsp"></jsp:include>
			
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
		
		$(function(){
			$('#su').change(function(){
			var su=$('#su').val()
			
			su=su*5000
			
			$('#price').text(su);
			})
		})
		
		</script>
	</body>	
</html>