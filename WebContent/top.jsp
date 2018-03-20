<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery예제</title>


</head>
<body>

<div class="header">
				<div class="container">
					<!-- Header top area content -->
					<div class="header-top">
						<div class="row">
							
							<div class="col-md-4 col-md-offset-8 col-sm-4 col-sm-offset-8">
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
							
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 col-sm-5">
							<!-- Link -->
							<a href="/TodayLunch">
								<!-- Logo area -->
								<div class="logo" >
									<img class="img-responsive" src="/TodayLunch/img/logo.png" alt="">
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
										<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
											<span class="sr-only">Toggle navigation</span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
									</div>
									
									
									<!-- 세션s_id값이 없을경우 -->
									<c:if test="${empty(sessionScope.s_id)}">
									<!-- Collect the nav links, forms, and other content for toggling -->
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
										<ul class="nav navbar-nav">
											
											
											<li><a href="/TodayLunch/Rest/restList.lunch"><img src="/TodayLunch/img/nav-menu/nav3.jpg" class="img-responsive" alt=""> Shop List</a></li>
											
											<li>
												<a href="/TodayLunch/Login/login.lunch"><img src="/TodayLunch/img/nav-menu/nav5.jpg" class="img-responsive" alt=""> Login </a>
												
											</li>
											<li><a href="/TodayLunch/Register/registerIntro.lunch"><img src="/TodayLunch/img/nav-menu/nav6.jpg" class="img-responsive" alt=""> Register</a></li>
										</ul>
									</div><!-- /.navbar-collapse -->
									<!-- 세션값 없을경우 끝 -->
									</c:if>
									<!-- 세션s_id값이 있을경우 -->
									<c:if test="${not empty(sessionScope.s_id)}">
									<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li><a href="/TodayLunch/main.lunch"><img
											src="/TodayLunch/img/nav-menu/nav1.jpg" class="img-responsive" alt="" />
											Home</a></li>
									<li class="dropdown hidden-xs">
									<a href="/TodayLunch/mypage_p/myPage.lunch">
									<img src="/TodayLunch/img/nav-menu/nav2.jpg" class="img-responsive" alt="" style="margin-bottom:-7px" />
											</a>
											<a href="#" class="dropdown-toggle" data-toggle="dropdown">MyPage <b class="caret"></b></a>
										<ul class="dropdown-menu dropdown-md">
											<li>
												<div class="row">
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item">
															<!-- Heading -->
															<h3>식권 구매</h3>
															<!-- Image -->
															<img src="/TodayLunch/img/dish/dish1.jpg" class="img-responsive"
																alt="" width="150px" height="150px" />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_p/buySik.lunch" class="btn btn-danger btn-xs">Buy</a>
														</div>
													</div>
													
													<!--회원 수정-->
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item">
															<!-- Heading -->
															<h3>회원 수정</h3>
															<!-- Image -->
															<img src="/TodayLunch/img/dish/dish2.jpg" class="img-responsive"
																alt="" width="150px" height="150px" />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_p/updateInfo.lunch" class="btn btn-danger btn-xs">Go</a>
														</div>
													</div>
													<div class="col-md-4 col-sm-4">
														<!-- Menu Item -->
														<div class="menu-item">
															<!-- Heading -->
															<h3>사용 내역</h3>
															<!-- Image -->
															<img src="/TodayLunch/img/dish/dish3.jpg" class="img-responsive"
																alt="" width="150px" height="150px" />
															<!-- Button -->
															<a href="/TodayLunch/Mypage_p/sikInfo.lunch" class="btn btn-danger btn-xs">Check</a>
														</div>
													</div>
												</div>
											</li>
										</ul></li>
									<li class="dropdown visible-xs"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown"> Page <b
											class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="/TodayLunch/Mypage_p/buySik.lunch">Buy</a></li>
											<li><a href="/TodayLunch/Mypage_p/sikInfo.lunch">Check</a></li>
											<li><a href="/TodayLunch/Mypage_p/updateInfo.lunch">Personal</a></li>
										</ul></li>
									<li><a href="index.html"><img
											src="/TodayLunch/img/nav-menu/nav1.jpg" class="img-responsive" alt="" />
											Shop List</a></li>
									<li><a href="/TodayLunch/Login/logout.lunch"><img
											src="/TodayLunch/img/nav-menu/nav1.jpg" class="img-responsive" alt="" />
											Logout</a></li>
								</ul>
							</div>
									
									</c:if>
									<!-- 세션값 있을경우 끝 -->
									
								</div><!-- /.container-fluid -->
							</nav>
						</div>
					</div>
				</div> <!-- / .container -->
			</div>

<%-- 
<input type="button" value="오늘의 점심" onclick="location.href='/TodayLunch/main.lunch'" >

<c:if test="${session.id!=null}">
<input type="button" value="마이페이지" onclick="location.href='/TodayLunch/mypage.lunch'">
<input type="button" value="로그아웃" onclick="location.href='/TodayLunch/mypage.lunch'"> <!-- 세션id초기화 & 메인이동 -->
</c:if>
<c:if test="${session.id eq null}">
<input type="button" value="로그인" onclick="location.href='/TodayLunch/login.lunch'">
</c:if>
<hr>

 --%>
</body>
</html>