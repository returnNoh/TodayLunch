<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원탈퇴</title>

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
<link href="../css/delstyle.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">
		<!--top-->
		<jsp:include page="../top.jsp"></jsp:include>
		<!-- Banner Start -->
		<div class="inner">
			<header>
				<div>
					<div class="container">
						<h1 id="bye">Bye My Friend:(</h1>
						<div class="clearfix"></div>
					</div>
				</div>
			</header>
			<!-- Banner End -->
			<div id="form">
				<div class="fish" id="fish"></div>
				<div class="fish" id="fish2"></div>
				<!--비밀번호가 비어있을때-->
				<c:if test="${p==null }">
					<form name="delform" method="post">
						<div class="group" id="leave_form">
							<label for="p_passwd">${p_id} 님 비밀번호를 입력해주세요 </label> 
							<input type="password" name="p_passwd" id="p_passwd"> <input
								type="button" onclick="delcheck()" name="out" id="out"
								value="submit"> <input type="button"
								onclick="history.back()" name="cancel" id="cancel"
								value="cancel">
						</div>
					</form>
				</c:if>
			</div>
		</div>

		<c:if test="${p==0 }">
			<!-- Central Modal Small -->
			<div class="modal fade" id="centralModalSm" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-sm" role="alert">
					<div class="modal-content">
						<div class="modal-header">
							<h1 class="modal-title" id="exampleModalLabel">Wrong
								PASSWORD</h1>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<h3>비밀번호를 다시 확인해주세요</h3>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</c:if>
		<!-- 	<script>
  		alert("비밀번호가 맞지않습니다.")
  		location.href="TodayLunch/Mypage_p/deletePerson.lunch";
  	</script> -->

		<!--footer-->

		<jsp:include page="../footer.jsp"></jsp:include>

	</div>
	<!--wrapper end-->
	<span class="totop"><a href="#"><i class="fa fa-angle-up"></i></a></span>

	<!--js-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- <script src="../js/bootstrap.min.js"></script> -->
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
		function delcheck() {
			var p_passwd = $("#p_passwd").val();
			if (p_passwd == "") {
				//var mem_id=document.getElementById("ducheck"); -> <td> 정보
				alert("mem_id"); //[object~]
				//$("#p_passwd").innerHTML = "<font color='red'>비밀번호를 입력해주세요</font>";
				$("#p_passwd").attr("placeholder", "비밀번호를 입력해주세요.")
				$("#p_passwd").focus();
				return false;
			}
		}
		$(function() {
			//$('#centralModalSm').modal();
		})
	</script>
</body>
</html>






