<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="beans.MemberDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
	String p_id = request.getParameter("p_id");
	System.out.println("IdCheck.jsp의 p_id : " + p_id);
	MemberDAO memMgr = new MemberDAO();
	boolean check = memMgr.checkID(p_id);
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>id중복체크</title>
<link href="style.css" rel="stylesheet" type="text/css">
	<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="deppskyblue">
	<br>
		<center>
			<b><%=p_id%></b>
			<%
				if (check) {//이미 존재하는 아이디라면
					out.println("해당 아이디는 이미 존재하는 아이디 입니다.<br>");
				} else {
					out.println("사용 가능한 아이디 입니다<br>");
				}
			%>
		</center> <a href="#" onclick="self.close()">닫기</a>
</body>
</html>