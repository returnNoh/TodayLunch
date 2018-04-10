<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
</head>
<body>
  <jsp:include page="../top.jsp"/>
 <center>
 <input type="button" value="정보수정" onclick="location.href='/TodayLunch/Mypage_r/updateInfo.lunch'">
 <br>
 <br>
  <c:if test="${rest_check}">
  <input type="button" value="메뉴입력" onclick="location.href='/TodayLunch/Mypage_r/updateMenu.lunch'">
  <br>
 <br>
 <input type="button" value="식권 사용 내역" onclick="location.href='/TodayLunch/Mypage_r/sikInfo.lunch'">
 <br>
 <br>
 <input type="button" value="식권 사용" onclick="location.href='/TodayLunch/Mypage_r/usingSik.lunch'">
  </c:if>
 </center> 
 
  
</body>
</html>






