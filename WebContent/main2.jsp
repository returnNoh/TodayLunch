<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인페이지 입니다</title>
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
<center>
메인페이지 입니다

<a href="/TodayLunch/Rest/showRest.lunch?r_id=rest1">rest1</a><br>
<form method="get" action="/TodayLunch/Rest/showRest.lunch">
식당 아이디를 입력하면 해당 식당 소개페이지로 이동:<input type="text" name="r_id">
<input type="submit" value="보내기">

<%
session.setAttribute("s_id", "person3");
%>

<a href="/TodayLunch/mypage_p/sikInfo.lunch">이동용</a>
</form>
</center>

</body>
</html>