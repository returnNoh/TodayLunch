<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:if test="${check==1}">
<meta http-equiv="Refresh" 
            content="0;url=/TodayLunch-j/showRest.lunch?pageNum=${pageNum}">
</c:if>
<c:if test="${check==0}">
     <script>
        alert("비밀번호....")
        history.go(-1);//history.back()
     </script>
</c:if>