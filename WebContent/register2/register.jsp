<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title> 가입신청 예제 </title>
 <script type="text/javascript" src="./jquery-3.2.1.min.js"></script>
 <script language="JavaScript" src="searchWord.js"></script>
 <script>

 
 </script>

  <style>
td.x{background-color:#ffffcc;
     font-weight:bold;
	 text-align:center;
}

/* body{background:#fff url(../images/bg3.jpg) repeat-x bottom}
 */
  </style>
 </head>
 <body>
<form method="post" action="TodayLunch/registerPro.lunch">

<header>
<h1><center> 회원가입 <center></h1>
</header>
 <table align="center"
         width="70%" 
		  height="100%" 
		   border=""
		    cellspacing="10"
			 cellpadding="10">
			 
			 <tr>
			  <td class="x" colspan="2">아이디＊</td>
			
			  <td colspan="4" id="simple">
			  <input type="text" name="ID" size="15" maxlength="15" placeholder="<user id>">
			  <input type="button" value="아이디 중복체크" onclick="idCheck(this.form.ID.value)">
			  </td>
			  </tr>
			 
			  

			    <tr>
			  
			   <td class="x" colspan="2">비밀번호＊</td>
			
			  <td colspan="4"><input type="password" name="pw" size="15" maxlength="15" placeholder="<password> required"></td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2" >성명＊</td>
			
			  <td colspan="4"><input type="text" name="name" size="15" maxlength="15" required></td>
			   </tr>


				<tr>

			  
			   <td class="x" colspan="2">이메일 *</td>
			
			  <td colspan="4">
			  <input type="email" size="15"> 입력하신 이메일로 인증확인메일이 보내집니다.
			  </td>
			   </tr>
			   
			   
			   <c:if test="${grade==2}"> <!-- 가게회원가입이라면 나오게 하는 조건문 -->
			   <tr >
			   <td class="x" colspan="2">연락처</td>
			   <td colspan="4"><input type="text" size="15"></td>
			   </tr>
				</c:if>
				
				
				
			  <tr>
			  <td colspan="6" align="center">
			  
			  <input type="submit" value="회원가입">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
			  <input type="reset" value="초기화">
			  <input type="button" value="메인으로 가기" onclick="history.go(-1)">

			 </tr>


 
 </table>
</form>
 </body>
</html>






