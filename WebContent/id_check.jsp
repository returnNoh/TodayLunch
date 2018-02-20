<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="beans.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Id중복체크</title>
<link href="style.css" rel="stylesheet"
      type="text/css">
<SCRIPT LANGUAGE="JavaScript" src="script.js">
</SCRIPT>
</head>
<body bgcolor="#FFFFCC">


<%
//요청한 실행 결과를 text/xml로 만들어서 전송하고싶다면 ..
response.setContentType("text/xml;charset=utf-8");//동적

//추가 -> xhr객체가 받을 xml형태로 받을 수 있도록 text/xml 형태로 전환(태그+문자열)
String outString="";//xhr객체가 콜백할 내용을 담을 변수 선언(태그+문자열)
System.out.println("id_check들어옴");

String mem_id =request.getParameter("mem_id");
	MemberDAO MD = new MemberDAO();
	boolean check = MD.register_Check_Id(mem_id);
		//xhr객체에 전송해주는 구문
		if(check){
			outString="<font color='red'><b>이미 사용중인 아이디 입니다.</b></font>";
		}else{
			outString="<font color='red'><b>사용 가능한 아이디 입니다.</b></font>";
		}
//xhr객체가 콜백해야하는 것을 지정
out.println(outString);
System.out.println(outString);
%>

</body>
</html>