<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>식권사용</title>
</head>
<body>
<div class="container">
	
	<h1>식권 사용 내역</h1>
	<c:forEach var="i" items="${u_sik}" begin="0" end="10" step="1">
	<table border="1 solid">
		<thead>
		<tr>
			<td>아이디</td>
			<td>식당 이름</td>
			<td>사용 날짜</td>
		</tr>		
		</thead>
		
		<tr>
			<td>${i.p_id}</td>
			<td>${i.r_name}</td>
			<td>${i.u_time}</td>
		</tr>
		
	</table>
	</c:forEach>
	<br>
	<table border="2px solid pink">
	<thead><tr><td>식권 개수</td></tr></thead>
	<center>
	<tr>
	<td>${s_num}</td>
	</tr>
	</center>
	</table><br>
	<input type="button" name="back" value="뒤로가기" onclick="history.go(-1)">
 
</div>
</body>
</html>