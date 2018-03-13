<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../jquery-3.2.1.min.js"></script>

<script>

$(function(){
	
	$('#people').click(function(){
		
	/* 	$.ajax('getUser.jsp',{type:"people",success: function(data){
			$('#tab').empty();
			$('#tab').append(data);
		}//success
		}//type,success
		)//ajax
		
		return false;
	})
	
	$('#rest').click(function(){
		
		$.ajax('getUser.jsp',{type:"rest",success: function(data){
			$('#tab').empty();
			$('#tab').append(data);
		}//success
		}//type,success
		)//ajax
		
		return false;
	}) */
	
	
		$('a').click(function(){
		
			var name=$(this).attr("id");
		$.ajax('getUser.jsp',{type:name,success: function(data){
			$('#tab').empty();
			$('#tab').append(data);
		}//success
		}//type,success
		)//ajax
		
		return false;
	})
	
	
	
	
	
})



</script>

<title>액션태그 연습</title>
</head>
<body>



<center>
<a href="" id="people">개인</a>//<a href="" id="rest">식당</a>



<table id="tab">

분류를 선택하여주세요

</table>



</center>
</body>
</html>