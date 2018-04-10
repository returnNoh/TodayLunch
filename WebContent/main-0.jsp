<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인페이지 입니다</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>
	<center>
		<jsp:include page="top.jsp" />

		메인페이지 입니다 <br> 아래에 오늘의 메뉴가 보입니다.<br>
		<div class="menuView">
			<c:forEach var="mainMenu" items="${allMenu}">
				<table>
					<tr>
						<td>${mainMenu.r_name }</td>
					</tr>
					<tr>
						<td>${mainMenu.m_content }</td>
					</tr>
				</table>

			</c:forEach>
		</div>

	</center>
	<center>
		<div class="search">
			<jsp:include page="${search}" />
		</div>
	<center>
</body>
</html>