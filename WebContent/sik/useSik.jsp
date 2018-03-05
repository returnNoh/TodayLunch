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

<form method="post" action="/TodayLunch/sik/sikResult.lunch">

가게이름(나중에는 세션값이용) : <input type="text" size="10" name="r_name"><br>
개인아이디 : <input type="text" size="10" name="p_id"><br>
인증번호 : <input type="text" size="10"  name="p_siknum"><br>
<input type="submit" value="보내기">

</form>
<br>
<c:if test="${usesik!=null}">


${usesik}

</c:if>


</body>
</html>