<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>식당회원 ID 중복체크</title>
<!-- <link href="style.css" rel="stylesheet" type="text/css"> -->
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="deepskyblue">
<br>
<center>
<c:if test="${check==true}">
	<c:out value="회원가입에 성공했습니다."/>
	<input type="button" value="확인" onclick= "location.href='../login.lunch'" />
</c:if>
<c:if test="${check!=true}">

      <c:out value="회원가입에 실패했습니다. 다시 입력해주세요"/>
 	   <input type="button" value="확인" onclick="history.back()">
 		</c:if>	
 		</center>
</body>
</html>