<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지입니다.</title>
</head>
<body>
<center>
<form method="post" action="/TodayLunch/loginPro.lunch">

아이디::<input type="text" name="id" size="10">
<br>
패스워드::<input type="password" name="passwd" size="10">
<br>

<input type="submit" value="로그인"><input type="button" value="뒤로 가기" onclick="history.back()"><br>
<a href="/TodayLunch/register/regiselect.lunch">회원가입</a><br>
<a href="/TodayLunch/register/IdSearch.lunch">아이디찾기</a>/
<a href="/TodayLunch/register/PwdSearch.lunch">비밀번호찾기</a>


</form>

</center>
</body>
</html>