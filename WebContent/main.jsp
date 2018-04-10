<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
<html>
<head>
<meta charset="utf-8">
<!-- Title here -->
<title>CakeFactory</title>
<!-- Description, Keywords and Author -->
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Styles -->
<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link href="css/settings.css" rel="stylesheet">
<!-- FlexSlider Css -->
<link rel="stylesheet" href="css/flexslider.css" media="screen" />
<!-- Portfolio CSS -->
<link href="css/prettyPhoto.css" rel="stylesheet">
<!-- Font awesome CSS -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Custom Less -->
<link href="css/less-style.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<!--[if IE]><link rel="stylesheet" href="css/ie-style.css"><![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="#">
<style>
.flex-container {
  display: flex;
  flex-wrap: wrap;
}

</style>
</head>

<body>




	<!-- Page Wrapper -->
	<div class="wrapper">

		<!-- Header Start -->
		<jsp:include page="top.jsp"></jsp:include>


		<!-- Header End -->

		<!-- Slider Start 
			#################################
				- THEMEPUNCH BANNER -
			#################################	-->

		<div class="tp-banner-container">
			<div class="tp-banner">
				<ul>
					<!-- SLIDE  -->
					<li data-transition="fade" data-slotamount="7"
						data-masterspeed="1500">
						<!-- MAIN IMAGE --> <img src="img/slider/slide2.jpg" alt=""
						data-bgfit="cover" data-bgposition="center bottom"
						data-bgrepeat="no-repeat"> <!-- LAYERS --> <!-- LAYER NR. 1 -->
						<div class="tp-caption lfl largeblackbg br-red" data-x="20"
							data-y="100" data-speed="1500" data-start="1200"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 3">We Make
							Delicious...</div> <!-- LAYER NR. 2.0 -->
						<div class="tp-caption lfl medium_bg_darkblue br-green"
							data-x="20" data-y="200" data-speed="1500" data-start="1800"
							data-easing="Power4.easeOut" data-endspeed="300"
							data-endeasing="Power4.easeIn" data-captionhidden="off">Consectetur
							Adipisicing</div> <!-- LAYER NR. 2.1 -->
						<div class="tp-caption lfl medium_bg_darkblue br-lblue"
							data-x="20" data-y="250" data-speed="1500" data-start="2100"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 3">Sed do
							Seusmod</div> <!-- LAYER NR. 2.2 -->
						<div class="tp-caption lfl medium_bg_darkblue br-purple"
							data-x="20" data-y="300" data-speed="1500" data-start="2400"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 3">Incididunt
							ut Labore</div> <!-- LAYER NR. 2.3 -->
						<div class="tp-caption lfl medium_bg_darkblue br-orange"
							data-x="20" data-y="350" data-speed="1500" data-start="2700"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 3">Excepteur
							Sint</div> <!-- LAYER NR. 3.0 -->
						<div class="tp-caption customin customout" data-x="right"
							data-hoffset="-50" data-y="100"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="400" data-start="3600" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 5">
							<img class="slide-img img-responsive" src="img/slider/s21.png"
								alt="" />
						</div> <!-- LAYER NR. 3.1 -->
						<div class="tp-caption customin customout" data-x="right"
							data-hoffset="-120" data-y="130"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="400" data-start="3900" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 6">
							<img class="slide-img img-responsive" src="img/slider/s22.png"
								alt="" />
						</div> <!-- LAYER NR. 3.2 -->
						<div class="tp-caption customin customout" data-x="right"
							data-hoffset="-10" data-y="160"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="400" data-start="4200" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 7">
							<img class="slide-img img-responsive" src="img/slider/s23.png"
								alt="" />
						</div> <!-- LAYER NR. 3.3 -->
						<div class="tp-caption customin customout" data-x="right"
							data-hoffset="-80" data-y="190"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="400" data-start="4500" data-easing="Power3.easeInOut"
							data-endspeed="300" style="z-index: 8">
							<img class="slide-img img-responsive" src="img/slider/s24.png"
								alt="" />
						</div>
					</li>
					<li data-transition="zoomin" data-slotamount="6"
						data-masterspeed="400">
						<!-- MAIN IMAGE --> <img src="img/slider/transparent.png"
						style="background-color: #fff" alt="" data-bgfit="cover"
						data-bgposition="center bottom" data-bgrepeat="no-repeat"> <!-- LAYERS -->
						<!-- LAYER NR. 1 -->
						<div class="tp-caption sfl modern_medium_light" data-x="20"
							data-y="90" data-speed="800" data-start="1000"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 3">The New</div> <!-- LAYER NR. 1.1 -->
						<div class="tp-caption large_bold_grey heading customin customout"
							data-x="10" data-y="125" data-splitin="chars"
							data-splitout="chars" data-elementdelay="0.05" data-start="1500"
							data-speed="900" data-easing="Back.easeOut"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-endspeed="500" data-endeasing="Power3.easeInOut"
							data-captionhidden="on" style="z-index: 5">CakeFactory</div> <!-- LAYER NR. 2 -->
						<div class="tp-caption customin customout" data-x="right"
							data-y="100"
							data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="800" data-start="2000" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 3">
							<img class="img-responsive" src="img/slider/s11.png" alt="" />
						</div> <!-- LAYER NR. 2.1 -->
						<div class="tp-caption customin customout" data-x="right"
							data-y="100"
							data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="800" data-start="2300" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 3">
							<img class="img-responsive" src="img/slider/s12.png" alt="" />
						</div> <!-- LAYER NR. 2.2 -->
						<div class="tp-caption customin customout" data-x="right"
							data-y="100"
							data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="800" data-start="2600" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 3">
							<img class="img-responsive" src="img/slider/s13.png" alt="" />
						</div> <!-- LAYER NR. 2.3 -->
						<div class="tp-caption sft" data-x="right" data-hoffset="-400"
							data-y="80" data-speed="1000" data-start="3000"
							data-easing="Power4.easeOut" data-endspeed="500"
							data-endeasing="Power4.easeIn" style="z-index: 10">
							<span class="price-tag br-white">30%<br />Off
							</span>
						</div> <!-- LAYER NR. 3 -->
						<div
							class="tp-caption finewide_verysmall_white_mw paragraph customin customout tp-resizeme"
							data-x="20" data-y="210"
							data-customin="x:0;y:50;z:0;rotationX:-120;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 0%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="1000" data-start="3600"
							data-easing="Power3.easeInOut" data-splitin="lines"
							data-splitout="lines" data-elementdelay="0.2"
							data-endelementdelay="0.08" data-endspeed="300"
							style="z-index: 10; max-width: auto; max-height: auto; white-space: nowrap;">
							Lorem ipsum dolor sit amet, consetetur<br /> sadipscing elitr,
							sed diam nonumy<br /> eirmod tempor invidunt ut labore et<br />
							dolore magna aliquyam erat, sed diam <br /> voluptua. At vero
							eos et accusam.
						</div> <!-- LAYER NR. 4 -->
						<div class="tp-caption sfb" data-x="20" data-y="335"
							data-speed="800" data-start="4500" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 11">
							<a class="btn btn-danger" href="#">Download</a> <a
								class="btn btn-success hidden-xs" href="#">Purchase Now</a>
						</div>
					</li>
					<li data-transition="slidehorizontal" data-slotamount="1"
						data-masterspeed="600">
						<!-- MAIN IMAGE --> <img src="img/slider/transparent.png"
						style="background-color: #fea501" alt="" data-bgfit="cover"
						data-bgposition="center bottom" data-bgrepeat="no-repeat"> <!-- LAYERS NR. 1 -->
						<div class="tp-caption lfl" data-x="left" data-y="100"
							data-speed="800" data-start="1200" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Linear.easeNone"
							data-captionhidden="off">
							<img class="img-responsive" src="img/slider/s35.png" alt="" />
						</div> <!-- LAYERS NR. 2 -->
						<div class="tp-caption lfr large_bold_grey heading white"
							data-x="right" data-hoffset="-10" data-y="120" data-speed="800"
							data-start="2000" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Linear.easeNone"
							data-captionhidden="off">Tasty Yammi</div> <!-- LAYER NR. 3 -->
						<div
							class="tp-caption whitedivider3px customin customout tp-resizeme"
							data-x="right" data-hoffset="-20" data-y="210" data-voffset="0"
							data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="700" data-start="2300" data-easing="Power3.easeInOut"
							data-splitin="none" data-splitout="none" data-elementdelay="0.1"
							data-endelementdelay="0.1" data-endspeed="500"
							style="z-index: 3; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
						</div> <!-- LAYER NR. 4 -->
						<div
							class="tp-caption finewide_medium_white randomrotate customout tp-resizeme"
							data-x="right" data-hoffset="-10" data-y="245" data-voffset="0"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="1000" data-start="2700"
							data-easing="Power3.easeInOut" data-splitin="chars"
							data-splitout="chars" data-elementdelay="0.08"
							data-endelementdelay="0.08" data-endspeed="500"
							style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;">Hamburger
						</div> <!-- LAYER NR. 5 -->
						<div
							class="tp-caption finewide_verysmall_white_mw white customin customout tp-resizeme text-right paragraph"
							data-x="right" data-hoffset="-10" data-y="300"
							data-customin="x:0;y:50;z:0;rotationX:-120;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 0%;"
							data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
							data-speed="1000" data-start="3500"
							data-easing="Power3.easeInOut" data-splitin="lines"
							data-splitout="lines" data-elementdelay="0.2"
							data-endelementdelay="0.08" data-endspeed="300"
							style="z-index: 10; max-width: auto; max-height: auto; white-space: nowrap;">
							Lorem ipsum dolor sit amet, consetetur sadipscing elitr,<br />
							nonumy voluptu ansetetur sadipscing elit. <br /> sed diam
							quisquam est nonumy voluptu vero eos et.
						</div>
					</li>
					<li data-transition="cube" data-slotamount="7"
						data-masterspeed="600">
						<!-- MAIN IMAGE --> <img src="img/slider/slide2.jpg" alt=""
						data-bgfit="cover" data-bgposition="center bottom"
						data-bgrepeat="no-repeat"> <!-- LAYERS NR. 1 -->
						<div class="tp-caption lfl" data-x="110" data-y="130"
							data-speed="800" data-start="1500" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power4.easeIn"
							data-captionhidden="off">
							<img src="img/slider/s31.png" class="img-responsive" alt="" />
						</div> <!-- LAYERS NR. 2 -->
						<div class="tp-caption lfl" data-x="80" data-y="265"
							data-speed="800" data-start="2200" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power4.easeIn"
							data-captionhidden="off">
							<img src="img/slider/s33.png" class="img-responsive" alt="" />
						</div> <!-- LAYERS NR. 3 -->
						<div class="tp-caption lfl" data-x="450" data-y="312"
							data-speed="800" data-start="2700" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Power4.easeIn"
							data-captionhidden="off">
							<img src="img/slider/s34.png" class="img-responsive" alt="" />
						</div> <!-- LAYERS NR. 4 -->
						<div class="tp-caption sfr  thinheadline_dark white"
							data-x="right" data-hoffset="-10" data-y="90" data-speed="800"
							data-start="3200" data-easing="Power4.easeOut"
							data-endspeed="500" data-endeasing="Power4.easeIn"
							style="z-index: 3">Online</div> <!-- LAYERS NR. 4.1 -->
						<div class="tp-caption lfr largepinkbg br-green" data-x="right"
							data-hoffset="-10" data-y="135" data-speed="800"
							data-start="3500" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Linear.easeNone"
							data-captionhidden="off">Seats Reserve</div> <!-- LAYERS NR. 5 -->
						<div
							class="tp-caption skewfromright medium_text text-right paragraph"
							data-x="right" data-hoffset="-10" data-y="225" data-speed="800"
							data-start="3800" data-easing="Power4.easeOut"
							data-endspeed="400" data-endeasing="Power4.easeOut"
							data-captionhidden="off">
							At vero eos etntium accu amet, adipisicing samus iusto<br />praese
							delen itieos etconsectetur atque corrupti<br />praese etntiumder
							delen itierrupti.
						</div> <!-- LAYERS NR. 6 // -->
						<div class="tp-caption lfr modern_big_redbg br-red" data-x="right"
							data-hoffset="-10" data-y="315" data-speed="1500"
							data-start="4100" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Linear.easeNone"
							data-captionhidden="off">Desktop or Laptop</div> <!-- LAYERS NR. 6.1 // -->
						<div class="tp-caption lfr modern_big_redbg br-yellow"
							data-x="right" data-hoffset="-10" data-y="375" data-speed="1500"
							data-start="4400" data-easing="Power4.easeOut"
							data-endspeed="300" data-endeasing="Linear.easeNone"
							data-captionhidden="off">Tablet or Phone</div>
					</li>
				</ul>
				<!-- Banner Timer -->
				<div class="tp-bannertimer"></div>
			</div>
		</div>
		<!-- Slider End -->



		<!-- Main Content -->
		<div class="main-content">

			<!-- Showcase Start -->

			<div class="showcase"></div>

			<!-- Showcase End -->

			<!-- Dishes Start -->

			<div class="dishes padd">
				<div class="container">
					<!-- Default Heading -->
					<div class="default-heading">
						<!-- Crown image -->
						<img class="img-responsive" src="img/crown.png" alt="" />
						<!-- Heading -->
						<h2>오늘의 점심은?</h2>
						<!-- Paragraph -->
						<p>이럴 때 사용하세요!</p>
						<!-- Border -->
						<div class="border"></div>
					</div>
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="dishes-item-container">
								<!-- Image Frame -->
								<div class="img-frame">
									<!-- Image -->
									<img src="img/dish/dish5.jpg" class="img-responsive" alt="" />
									<!-- Block for on hover effect to image -->
									<div class="img-frame-hover">
										<!-- Hover Icon -->
										<a href="#"><i class="fa fa-cutlery"></i></a>
									</div>
								</div>
								<!-- Dish Details -->
								<div class="dish-details">
									<!-- Heading -->
									<h3>
										강남에서 일하는<br>당신
									</h3>
									<!-- Paragraph -->

									<!-- Button -->

								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="dishes-item-container">
								<!-- Image Frame -->
								<div class="img-frame">
									<!-- Image -->
									<img src="img/dish/dish6.jpg" class="img-responsive" alt="" />
									<!-- Block for on hover effect to image -->
									<div class="img-frame-hover">
										<!-- Hover Icon -->
										<a href="#"><i class="fa fa-cutlery"></i></a>
									</div>
								</div>
								<!-- Dish Details -->
								<div class="dish-details">
									<!-- Heading -->
									<h3>
										또 다시 점심시간!<br>&nbsp;
									</h3>
									<!-- Paragraph -->

								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="dishes-item-container">
								<!-- Image Frame -->
								<div class="img-frame">
									<!-- Image -->
									<img src="img/dish/dish7.jpg" class="img-responsive" alt="" />
									<!-- Block for on hover effect to image -->
									<div class="img-frame-hover">
										<!-- Hover Icon -->
										<a href="#"><i class="fa fa-cutlery"></i></a>
									</div>
								</div>
								<!-- Dish Details -->
								<div class="dish-details">
									<!-- Heading -->
									<h3>
										맛집이 뭐냐,<br>귀찮기만 하고..
									</h3>
									<!-- Paragraph -->

								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="dishes-item-container">
								<!-- Image Frame -->
								<div class="img-frame">
									<!-- Image -->
									<img src="img/dish/dish8.jpg" class="img-responsive" alt="" />
									<!-- Block for on hover effect to image -->
									<div class="img-frame-hover">
										<!-- Hover Icon -->
										<a href="#"><i class="fa fa-cutlery"></i></a>
									</div>
								</div>
								<!-- Dish Details -->
								<div class="dish-details">
									<!-- Heading -->
									<h3>
										급식같은 거<br>어디 없나?
									</h3>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Dishes End -->

			<!-- menu Start -->

			<div class="menu padd">
				<div class="container">
					<!-- Default Heading -->
					<div class="default-heading">
						<!-- Crown image -->
						<img class="img-responsive" src="img/crown.png" alt="" />
						<!-- Heading -->
						<h2>Menu</h2>
						<!-- Paragraph -->
						<p>${date}의메뉴</p>
						<!-- Border -->
						<div class="border"></div>
					</div>
					<!-- Menu content container -->
					<div class="menu-container">
						<div class="row flex-container">
							<c:if test="${allMenu!=null }">
								<c:forEach var="mainMenu" items="${allMenu}" varStatus="status">
									<div class="col-md-4 col-sm-4">
										<!-- Menu header -->
										<a href="/TodayLunch/Rest/showRest.lunch?r_name=${mainMenu.r_name}">
										<div class="menu-head">
											<!-- Image for menu item -->
											<img class="menu-img img-responsive img-thumbnail"
												src="img/menu/menu1.jpg" alt="" />
											<!-- Menu title / Heading -->
											<h3>${mainMenu.r_name}</h3>
											<!-- Border for above heading -->
											<div class="title-border br-red"></div>
										</div>
										</a>
										<!-- Menu item details -->
										<div class="menu-details br-red">
											<!-- Menu list -->
											<ul class="list-unstyled">
												<c:forEach var="m_array" items="${m_arrayList}"
													begin="${status.index}" end="${status.index}">
													<%-- <c:out value="${status.index}"/> --%>
													<c:forEach var="menu" items="${m_array }">
														<li>
															<div class="menu-list-item">
																<!-- Icon -->
																<i class="fa fa-angle-right"></i> <a>${menu}</a>
															</div>
														</li>
													</c:forEach>
													<div class="clearfix"></div>
												</c:forEach>
											</ul>
										</div>
										<!-- / Menu details end -->
									</div>
								</c:forEach>
							</c:if>
							<c:if test="${allMenu==null }">
								<div class="col-md-12 col-sm-12">

									<h2 class="text-center">등록된 메뉴가 없습니다.</h2>

								</div>
							</c:if>


						</div>
					</div>
					<!-- /Menu container end -->
				</div>
			</div>

			<!-- Menu End -->

			<!-- Pricing Start -->



			<!-- Pricing End -->

			<!-- Chefs Start -->

			<div class="chefs padd">
				<div class="container">
					<!-- Default Heading -->
					<div class="default-heading">
						<!-- Crown image -->
						<img class="img-responsive" src="img/crown.png" alt="" />
						<!-- Heading -->
						<h2>Our Chefs</h2>
						<!-- Paragraph -->
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
						<!-- Border -->
						<div class="border"></div>
					</div>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							<!-- Chef Member -->
							<div class="chefs-member">
								<!-- Chefs member header -->
								<div class="chefs-head">
									<!-- Member background image -->
									<img class="chefs-back img-responsive"
										src="img/chef/c-back2.jpg" alt="" />
									<!-- chef member image -->
									<img class="chefs-img img-responsive" src="img/chef/4.jpg"
										alt="" />
								</div>
								<!--Name / Heading -->
								<h3>
									<a href="#">Venison Gorky</a>
								</h3>
								<!-- Member designation -->
								<span>Chefs Incharge</span>
								<!-- Social media links -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<!-- Chef Member -->
							<div class="chefs-member">
								<!-- Chefs member header -->
								<div class="chefs-head">
									<!-- Member background image -->
									<img class="chefs-back img-responsive"
										src="img/chef/c-back1.jpg" alt="" />
									<!-- chef member image -->
									<img class="chefs-img img-responsive" src="img/chef/7.jpg"
										alt="" />
								</div>
								<!--Name / Heading -->
								<h3>
									<a href="#">Million Carey</a>
								</h3>
								<!-- Member designation -->
								<span>Chefs Incharge</span>
								<!-- Social media links -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<!-- Chef Member -->
							<div class="chefs-member">
								<!-- Chefs member header -->
								<div class="chefs-head">
									<!-- Member background image -->
									<img class="chefs-back img-responsive"
										src="img/chef/c-back3.jpg" alt="" />
									<!-- chef member image -->
									<img class="chefs-img img-responsive" src="img/chef/2.jpg"
										alt="" />
								</div>
								<!--Name / Heading -->
								<h3>
									<a href="#">Juliet Watson</a>
								</h3>
								<!-- Member designation -->
								<span>Chefs Incharge</span>
								<!-- Social media links -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>
						<!-- 인물소개 두번째 -->
						<div class="col-md-4 col-md-offset-2 col-sm-4 col-sm-offset-2">
							<!-- Chef Member -->
							<div class="chefs-member">
								<!-- Chefs member header -->
								<div class="chefs-head">
									<!-- Member background image -->
									<img class="chefs-back img-responsive"
										src="img/chef/c-back2.jpg" alt="" />
									<!-- chef member image -->
									<img class="chefs-img img-responsive" src="img/chef/4.jpg"
										alt="" />
								</div>
								<!--Name / Heading -->
								<h3>
									<a href="#">Venison Gorky</a>
								</h3>
								<!-- Member designation -->
								<span>Chefs Incharge</span>
								<!-- Social media links -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>

						<div class="col-md-4   col-sm-4">
							<!-- Chef Member -->
							<div class="chefs-member">
								<!-- Chefs member header -->
								<div class="chefs-head">
									<!-- Member background image -->
									<img class="chefs-back img-responsive"
										src="img/chef/c-back2.jpg" alt="" />
									<!-- chef member image -->
									<img class="chefs-img img-responsive" src="img/chef/4.jpg"
										alt="" />
								</div>
								<!--Name / Heading -->
								<h3>
									<a href="#">Venison Gorky</a>
								</h3>
								<!-- Member designation -->
								<span>Chefs Incharge</span>
								<!-- Social media links -->
								<div class="social">
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
									<a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>

			<!-- Chefs End -->




		</div>
		<!-- / Main Content End -->

		<!-- Footer Start -->

		<jsp:include page="footer.jsp"></jsp:include>


		<!-- 페이지는 그대로인체 특정 이벤트를 발생시 전면에 페이지가 나오게 하는 형태 시작 -->
		<a id="notice_check" data-toggle="modal" href="#shoppingcart1"
			class="btn btn-danger">Launch demo modal</a>

		<!-- Footer End -->

		<div class="modal fade" id="shoppingcart1" tabindex="-1" role="dialog"
			aria-hidden="false" style="display: blcok;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h2>공지사항</h2>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
						<!-- Items table -->
						<table class="table table-striped">
							<thead>
								<tr>
									<th>제목</th>
									<th>날짜</th>
									<th>쓸거없다</th>
								</tr>
							</thead>
							<tbody id="notice">

							</tbody>
						</table>


					</div>
					<!-- <div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Continue Shopping</button>
						<button type="button" class="btn btn-info">Checkout</button>
					</div> -->
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>

		<!-- 여기까지가 전면 부부부부부분 -->




	</div>
	<!-- / Wrapper End -->


	<!-- Scroll to top -->
	<span class="totop"><a href="#"><i class="fa fa-angle-up"></i></a></span>



	<!-- Javascript files -->
	<!-- jQuery -->
	<script src="js/jquery.js"></script>
	<!-- Bootstrap JS -->
	<script src="js/bootstrap.min.js"></script>
	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script type="text/javascript"
		src="js/jquery.themepunch.plugins.min.js"></script>
	<script type="text/javascript"
		src="js/jquery.themepunch.revolution.min.js"></script>
	<!-- FLEX SLIDER SCRIPTS  -->
	<script defer src="js/jquery.flexslider-min.js"></script>
	<!-- Pretty Photo JS -->
	<script src="js/jquery.prettyPhoto.js"></script>
	<!-- Respond JS for IE8 -->
	<script src="js/respond.min.js"></script>
	<!-- HTML5 Support for IE -->
	<script src="js/html5shiv.js"></script>
	<!-- Custom JS -->
	<script src="js/custom.js"></script>
	<!-- JS code for this page -->
	<script>
		/* ******************************************** */
		/*  JS for SLIDER REVOLUTION  */
		/* ******************************************** */
		jQuery(document).ready(function() {
			jQuery('.tp-banner').revolution({
				delay : 9000,
				startheight : 500,

				hideThumbs : 10,

				navigationType : "bullet",

				hideArrowsOnMobile : "on",

				touchenabled : "on",
				onHoverStop : "on",

				navOffsetHorizontal : 0,
				navOffsetVertical : 20,

				stopAtSlide : -1,
				stopAfterLoops : -1,

				shadow : 0,

				fullWidth : "on",
				fullScreen : "off"
			});

			//*****************************
			//여기서부터 공지사항 ajax 사용
			$('#notice_check').click(function() {
				$.ajax({
					url : "/TodayLunch/Admin/notice.jsp",
					success : function(data) {
						$('#notice').html(data);
					}
				})
			})

		})
		/* ******************************************** */
		/*  JS for FlexSlider  */
		/* ******************************************** */

		$(window).load(function() {
			$('.flexslider-recent').flexslider({
				animation : "fade",
				animationSpeed : 1000,
				controlNav : true,
				directionNav : false
			});
			$('.flexslider-testimonial').flexslider({
				animation : "fade",
				slideshowSpeed : 5000,
				animationSpeed : 1000,
				controlNav : true,
				directionNav : false
			});
		});

		/* Gallery */

		jQuery(".gallery-img-link").prettyPhoto({
			overlay_gallery : false,
			social_tools : false
		});
	</script>
</body>
</html>