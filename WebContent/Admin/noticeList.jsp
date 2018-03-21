<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,beans.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션태그 연습</title>
</head>
<body>

<c:forEach var="list" items="${list}">
<tr>
<td>${list.no_num}</td>
<td><%-- <a href="updateNotice.lunch?no_num=${list.no_num}"> --%>${list.no_content}<!-- </a> --></td>
<td>${list.no_time}</td>
<td><a href="deleteNotice.lunch?no_num=${list.no_num}">삭제</a></td>
</tr>
<br>
</c:forEach>




<form>
<input type="textarea" name="no_content">
<input type="submit" value="신규 공지사항 작성">
</form>


</body>
</html>