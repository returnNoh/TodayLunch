<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>식당 소개</title>
</head>
<body>
  <c:set var="rest_info" value="${rest_info}"/> 
  
  아이디:${rest_info.r_id}
  주소:${rest_info.r_add}
  이름:${rest_info.r_name}
  소개문:${rest_info.r_info}
  
<jsp:include page="/map.jsp">
<jsp:param value="${rest_info.r_wi}" name="wi"/>
<jsp:param value="${rest_info.r_gy}" name="gy"/>
</jsp:include> 
 
 
 
  
</body>
</html>






