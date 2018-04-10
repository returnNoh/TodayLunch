<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="beans.MenuDAO, java.util.ArrayList"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
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
	<jsp:include page="../top.jsp" />

	<div class="inner-page padd">

		<!-- Inner page menu start -->
		<div class="inner-menu">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<!-- Inner page menu list -->
						<div class="menu-list">
							<!-- Menu item heading -->
							<h3>Seafoods</h3>
							<!-- Image for menu list -->
							<img class="img-responsive" src="../img/menu/menu1.jpg" alt="" />
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Fish Curie</h4>
								<!-- Dish price -->
								<span class="price pull-right">$29</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$49</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$39</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Creed do Modernism</h4>
								<!-- Dish price -->
								<span class="price pull-right">$22</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item border-zero">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Fish Curie</h4>
								<!-- Dish price -->
								<span class="price pull-right">$15</span>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<!-- Inner page menu list -->
						<div class="menu-list">
							<!-- Menu item heading -->
							<h3>Chicken</h3>
							<!-- Image for menu list -->
							<img class="img-responsive" src="../img/menu/menu2.jpg" alt="" />
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Chicken Curie</h4>
								<!-- Dish price -->
								<span class="price pull-right">$35</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Bone less</h4>
								<!-- Dish price -->
								<span class="price pull-right">$45</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$20</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$25</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item border-zero">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Creed do Modernism</h4>
								<!-- Dish price -->
								<span class="price pull-right">$22</span>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<!-- Inner page menu list -->
						<div class="menu-list">
							<!-- Menu item heading -->
							<h3>Dessert</h3>
							<!-- Image for menu list -->
							<img class="img-responsive" src="../img/menu/menu3.jpg" alt="" />
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Chicken Curie</h4>
								<!-- Dish price -->
								<span class="price pull-right">$5</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Bone less</h4>
								<!-- Dish price -->
								<span class="price pull-right">$4</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$5</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item border-zero">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Creed do Modernism</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<!-- Inner page menu list -->
						<div class="menu-list">
							<!-- Menu item heading -->
							<h3>Drinks</h3>
							<!-- Image for menu list -->
							<img class="img-responsive" src="../img/menu/menu4.jpg" alt="" />
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Cold Drinks</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Cold Milk Shake</h4>
								<!-- Dish price -->
								<span class="price pull-right">$1</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$5</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item border-zero">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Creed do Modernism</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<!-- Inner page menu list -->
						<div class="menu-list">
							<!-- Menu item heading -->
							<h3>Pizza</h3>
							<!-- Image for menu list -->
							<img class="img-responsive" src="../img/menu/menu5.jpg" alt="" />
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Cold Drinks</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Cold Milk Shake</h4>
								<!-- Dish price -->
								<span class="price pull-right">$1</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$5</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item border-zero">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Creed do Modernism</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<!-- Inner page menu list -->
						<div class="menu-list">
							<!-- Menu item heading -->
							<h3>Burger</h3>
							<!-- Image for menu list -->
							<img class="img-responsive" src="../img/menu/menu6.jpg" alt="" />
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Cold Drinks</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Cold Milk Shake</h4>
								<!-- Dish price -->
								<span class="price pull-right">$1</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Consecrate Anglicising</h4>
								<!-- Dish price -->
								<span class="price pull-right">$5</span>
								<div class="clearfix"></div>
							</div>
							<!-- Menu list items -->
							<div class="menu-list-item border-zero">
								<!-- Heading / Dish name -->
								<h4 class="pull-left">Creed do Modernism</h4>
								<!-- Dish price -->
								<span class="price pull-right">$2</span>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
<!-- <input type="text"> -->

		<jsp:include page="../footer.jsp" />

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
		<script>
		//scrolling
		var count =0;
		function loadResults() {
		    
		}
		$(function() {
		    loadResults()
		    
			//alert("top:"+$(".header").height());
			//alert("inner-page:"+$(".inner-page").height());
			
			var height=$(document).height()-$(".footer").height()-100
			//50, 50씩 inner-page랑 banner에 padding 있어서.
		     $(window).scroll(function() {
		    	 var windowBottom=$(window).scrollTop()+$(window).height()
		        if( windowBottom>height) {
		        	loadResults()
		        }
		    })
		})
		</script>
</body>
</html>






