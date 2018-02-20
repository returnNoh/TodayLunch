<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery예제</title>


</head>
<body>

<input type="button" value="오늘의 점심" onclick="location.href='/TodayLunch/main.lunch'" >

<c:if test="${session.id!=null}">
<input type="button" value="마이페이지" onclick="location.href='/TodayLunch/mypage.lunch'">
<input type="button" value="로그아웃" onclick="location.href='/TodayLunch/mypage.lunch'"> <!-- 세션id초기화 & 메인이동 -->
</c:if>
<c:if test="${session.id eq null}">
<input type="button" value="로그인" onclick="location.href='/TodayLunch/login.lunch'">
</c:if>
<hr>


</body>
</html>