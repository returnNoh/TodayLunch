<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/js/script.js"></script>
</head>
<body bgcolor="#e0ffff">  
<center><b>글수정</b>
<br>
<form method="post" name="writeform" 
           action="/TodayLunch/Review/reviewUpdatePro.lunch?pageNum=${pageNum}" 
           onsubmit="return writeSave()">
<table width="400" border="1" cellspacing="0" cellpadding="0"  bgcolor="#e0ffff" align="center">
<c:forEach var="a" items="${article}">
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center">아이디</td>
    <td align="left" width="330">
       <input type="text" size="10" maxlength="10" name="p_id" value="${a.p_id}">
	   <input type="hidden" name="re_num" value="${a.re_num}">
	   <input type="hidden" name="r_name" value="${a.r_name}"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center">작성시간</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="30" name="re_time" 
            value="${a.re_time}"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center" >내 용</td>
    <td align="left" width="330">
     <textarea name="re_content" rows="13" cols="40">
        ${a.re_content}
     </textarea></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center">별점</td>
    <td align="left" width="330">
       <input type="text" size="40" maxlength="30" name="re_star" 
            value="${article.re_star}"></td>
  </tr>
  </c:forEach>
  <tr>      
   <td colspan=2 bgcolor="#b0e0e6" align="center"> 
     <input type="submit" value="글수정" >  
     <input type="reset" value="다시작성">
     <input type="button" value="취소" 
       onclick="document.location.href='/TodayLunch/Rest/showRest.lunch?pageNum=${pageNum}'">
   </td>
 </tr>
 </table>
</form>     
</body>
</html>      