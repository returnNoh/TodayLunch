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
<script src="../js/jquery.js"></script>

<script>
function check(){
	if($('#password1').val()!=$('#password2').val()){
		alert('값이 틀립니다!')
		return;
	}
	$('form').submit();
}
</script>
<body>
<center>
<form id="form1" action="reset.lunch">
바꾸실 비밀번호를 적어주세요:<input type="password" name="password1" id="password1"><br>
적으신 비밀번호를 다시한번 적어주세요:<input type="password" name="password2" id="password2">
<input type="button" value="비밀번호 재설정" onclick="check()">
</form>
</center>


</body>
</html>