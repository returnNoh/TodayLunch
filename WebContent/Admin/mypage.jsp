<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션태그 연습</title>
</head>
<body>

<input type="button" value="유저 보기" onclick="location.href='getPeople.lunch'">


<input type="button" value="전체 식권 사용내역 보기" onclick="location.href='/TodayLunch/Admin/showSik.lunch'">

<input type="button" value="공지사항 수정,삭제" onclick="location.href='/TodayLunch/Admin/noticeList.lunch'">
<input type="button" value="전체 버튼?" onclick="location.href='/TodayLunch/Admin/showUser.lunch'">



</body>
</html>