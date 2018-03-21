<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="beans.*,java.util.ArrayList"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항이돠</title>
</head>
<body>
<tr>
<td>이게 공지번호입니다</td>
<td>아마 이게 내용이구요</td>
<td>날짜</td>
</tr>
<%ArrayList list = new AdminDAO().getNotice(); 
if(list.size()>0){
	NoticeDTO dto;
	Iterator it = list.iterator();
		while(it.hasNext()){
			dto=(NoticeDTO)it.next();
%>

<tr>
<td><%=dto.getNo_num()%></td>
<td><%=dto.getNo_content()%></td>
<td><%=dto.getNo_time()%></td>
</tr>




<%}} %>

</body>
</html>