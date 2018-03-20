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
		
		<!-- Model End -->
		
		<!-- Page Wrapper -->
		<div class="wrapper">
		
			<!-- Header Start -->
			
			<jsp:include page="../top.jsp"></jsp:include>
			
			<!-- Header End -->
			
			<!-- Banner Start -->
			
			<div class="banner padd">
				<div class="container">
					<!-- Image -->
					<img class="img-responsive" src="../img/crown-white.png" alt="">
					<!-- Heading -->
					<h2 class="white">개인 회원가입</h2>
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
 					<h4>개인 회원가입</h4>
 						<div class="row">
							<div class="col-md-7 col-sm-6">
								<!-- Checkout Form -->
								<!-- <form class="form-horizontal" role="form" name="regForm" method="post" action="/TodayLunch/register/registerPro.lunch"> -->
								<form class="form-horizontal" role="form" name="regForm" method="post" >
									<div class="form-group">
									
										<label for="inputName" class="col-md-2 control-label">아이디</label>
										<div class="col-md-8">
											<input type="text" class="form-control" id="inputName" name="p_id" placeholder="아이디">
											<input type="button" value="ID중복확인" onClick= "idCheck(this.form.p_id.value)">
										</div>
									</div>            
									<div class="form-group">
										<label for="inputEmail1" class="col-md-2 control-label">비밀번호</label>
										<div class="col-md-8">
											<input type="password" class="form-control" id="inputEmail1" name="p_passwd" placeholder="비밀번호를 입력하세요">
										</div>
									</div>
									<div class="form-group">
										<label for="inputPhone" class="col-md-2 control-label">비밀번호 확인</label>
										<div class="col-md-8">
											<input type="password" class="form-control" id="inputPhone" name="p_passwd2" placeholder="비밀번호를 확인합니다">
										</div>
									</div>
									<div class="form-group">
										<label for="inputCountry" class="col-md-2 control-label">이메일</label>
										<div class="col-md-8">
											<input type="text" class="form-control" id="inputPhone" name="p_email" placeholder="이메일을 입력하세요">
										</div>
									</div>              
									<div class="form-group">
										<label for="inputAddress" class="col-md-2 control-label">이름</label>
										<div class="col-md-8">
										<input type="text" class="form-control" id="inputPhone" name="p_name" placeholder="고객실명을 입력하세요">
										</div>
									</div>
									<div class="form-group">
										<label for="inputZip" class="col-md-2 control-label">식권 인증번호</label>
										<div class="col-md-8">
											<input type="text" class="form-control" id="inputZip" name="p_siknum" placeholder="인증번호를 입력하세요">
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
									<!--버튼1  -->
										<div class="col-md-offset-2 col-md-8">
											<a id="notice_check" class="btn btn-danger"
											   	 onclick="inputCheck()">회원가입</a>&nbsp;
											<input type="button" class="btn btn-default btn-sm" value="다시쓰기"
												onclick="history.back()">
										</div>
										
									
								</form>
							</div>
							
		<!-- 페이지는 그대로인체 특정 이벤트를 발생시 전면에 페이지가 나오게 하는 형태 시작 -->
			
			<!-- Footer End -->
			
			<!-- 재확인창 -->
			<div class="modal fade" id="shoppingcart1" tabindex="-1" role="dialog" aria-hidden="false" style="display: blcok;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
					<h2>공지사항</h2>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
						<!-- Items table -->
						<table class="table table-striped">
						
							
				<tbody><tr>
				<td>아이디</td>
				<td><input type="text" name="p_id" value="${p_id}"></td>
				</tr>
				<tr>
				<td>패스워드</td>
				<td><input type="password" name="p_passwd" value="${p_passwd}"></td>
				</tr>
				<tr>
				<td>이름</td>
				<td><input type="text" name="p_name" value="${p_name}"></td>
				</tr>
				<tr>
				<td>이메일</td>
				<td><input type="text" name="p_email" value= "${p_email}"></td>
				</tr>
				<tr>
				<td>식권 인증번호</td>
				<td><input type="text" name="p_siknum" value="${p_siknum}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
						<!--버튼2 -->
					<div class="form-group">
		<!-- <a id="notice_check" data-toggle="modal" href="#shoppingcart1" class="btn btn-danger"
											   	 onclick="inputCheck()">회원가입</a>&nbsp; -->
											   	 
					<a id="notice_check" data-toggle="modal" class="btn btn-danger" href="#shoppingcart2">확인 완료</a>
					<a data-toggle="modal" href="#" class="btn btn-danger" data-dismiss="modal">다시 쓰기</a>
					</div></td>
					</tr>																		
					</tbody>
						</table>
						
						
					</div>
					<!-- <div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Continue Shopping</button>
						<button type="button" class="btn btn-info">Checkout</button>
					</div> -->
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		
		<!-- 가입 성공하였습니다! 창   -->
		<div class="modal fade" id="shoppingcart2" tabindex="-1" role="dialog" aria-hidden="false" style="display: blcok;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
					<h2>공지사항</h2>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">
						<!-- Items table -->
						<table class="table table-striped">
				<tbody>
				<tr>
				<td>아이디</td>
				<td>${p_id}님 회원가입에 성공! 로그인 화면으로 이동합니다!!</td>
				</tr>				
					<tr><!--버튼3 -->
						<td>&nbsp;</td>
						<td>
					<div class="form-group">
					<input type="button" value="닫기">
					</div></td>
					</tr>																		
					</tbody>
						</table>
						
						
					</div>
					<!-- <div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Continue Shopping</button>
						<button type="button" class="btn btn-info">Checkout</button>
					</div> -->
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!--모달3/회원가입성공  -->
		
		<!-- 여기까지가 전면 부부부부부분 -->
							
						
							
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
						</div>
						</div>
 </div>
 <!--Checkout end  -->
 
			
				
				
				
			</div><!-- / Inner Page Content End -->	
			
			<!-- Footer Start -->
			
			<jsp:include page="../footer.jsp"></jsp:include>
			
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
		
		<script>
		
		
		
		</script>
		
</body>
 </html>
 
 
 
 
 
 
 
 
 
 
 
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인 회원가입 페이지</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">

<script language="JavaScript" src="../script.js"></script>
</head>
<body bgcolor="#FFCDD2" onLoad="regForm.p_id.focus()">
<br><br>
<table align="center" border="0" cellspancing="0" cellpadding="5">
<tr>
<td align="center" valign="middle" bgcolor="#FFEBEE">
	<table border="1" cellspacing="0" cellpadding="2" align="center">
		<form name="regForm" method="post" action="/TodayLunch/register/registerPro.lunch">
		<tr align="center" bgcolor="#F44336">
			<td colspan="5"><font color="#FFEBEE"><b>개인 회원가입</b></font></td>
			</tr>
			<tr>
			 <td width=20%>개인회원 아이디</td>
			 <td width=57%><input type="text" name="p_id" size="15">
			<input type="button" value="ID중복확인" onClick= "idCheck(this.form.p_id.value)"></td>
			<td width="30%">아이디를 입력해주세요</td>
		</tr>
		<tr>
		<td>패스워드</td>
		<td><input type="password" name="p_passwd" size="15"></td>
		<td>패스워드를 적어주세요</td>
		</tr>
		<tr>
		<td>패스워드 확인</td>
		<td><input type="password" name="p_passwd2" size="15"></td>
		<td>패스워드를 확인합니다</td>
		</tr>
		<tr>
		<tr>
		<td>이메일</td>
		<td><input type="text" name="p_email" size="15"></td>
		<td>이메일을 적어주세요</td>
		</tr>
		<td>이름</td>
		<td><input type="text" name="p_name" size="15"></td>
		<td>고객실명을 적어주세요</td>
		</tr>
		<tr>
		<td>식권인증번호</td>
		<td><input type="text" name="p_siknum" size="15"></td>
		<td>인증번호를 적어주세요</td>
		</tr>
		
		<tr>
		<td colspan="3" align="center">
		<input type="button" value="회원가입" onclick="inputCheck()">
		<input type="reset" value="다시쓰기">
		</form>
</table>
</body>
</html>
 -->