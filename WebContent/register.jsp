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
 <script language="JavaScript" src="prototype.js"></script>
 <script language="JavaScript" src="searchWord.js"></script>
 <script>
 /* $(function(){
	 alert($('select').val())
	 
	 if($('select').val()=='직접입력'){
		 $('text[name=mail2]').val('')
	 }else if($('select').val()=='네이버'){
		 $('text[name=mail2]').val('naver.com')
	 }else if($('select').val()=='다음'){
		 $('text[name=mail2]').val('daum.net')
	 }else{
		 $('text[name=mail2]').val('google.com')
	 } 
	 
	 
	 
 }) */

 
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

			  
			   <td class="x" colspan="2">별명＊</td>
			
			  <td colspan="4"><input type="text" name="yab" size="15" maxlength="15" required>
			  <input type="button" value="닉네임 중복체크" onclick="alert('미구현')"></td>
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
			  
			   <td class="x" colspan="2" >전자우편＊</td>
			
			  <td colspan="4" id="e_html" class="e_html">
			  <input type="text" id="mail" name="mail" size="30" maxlength="30" >
			  <input type="button" value="인증번호 전송" onclick="EmailCheck(this.form.mail.value)">
			  <!-- @
			  <input type="text" name="mail2" size="15" maxlength="15" required>
			  <select name="email">
			  <option>직접입력</option>
			  <option>네이버</option>
			  <option>다음</option>
			  <option>구글</option>
			  
			  <input type="button" onclick="EmailCheck('this.form.mail.value'+'@'+'this.form.mail2.value')"> -->
			  
			  </td>
			   </tr>
			   
			   <tr>
			   <td class="x" colspan="2">
			  	사업주입니까?
			   </td>
			   
			   <td>
			   
			   yes:<input type="radio" name="rest" value="yes">&emsp;
			   no:<input type="radio" name="rest" value="no">
			   
			   </td>
			   </tr>
<!--
			    <tr>
			  
			   <td class="x" colspan="2">주소＊</td>
			
			  <td colspan="4"><input type="text" name="juso1" size="5" maxlength="5" valign="top" required>
			  <input type="button" value="우편번호 찾기" onclick="alert('미구현')"><br>
			  <input type="text" name="juso12" size="15" maxlength="15" valign="bottom" required>
			  <input type="text" name="juso12" size="20" maxlength="20" valign="bottom" required placeholder="상세주소를 입력해주세요.">
			  </td>

			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">전화번호</td>
			
			  <td colspan="4">
			  <select name="number">
			  <option>선택</option>
			  <option>02</option>
			  <option>061</option>
			  <option>031</option>
			  </select>
			  -<input type="text" name="num1" size="10" maxlength="4">
			  -<input type="text" name="num2" size="10" maxlength="4">

			  
			  </td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">휴대전화</td>
			
			  <td colspan="4">
			  <select name="number">
			  <option>선택</option>
			  <option>010</option>
			  <option>011</option>
			  <option>016</option>
			  </select>
			  -<input type="text" name="num1" size="10" maxlength="4">
			  -<input type="text" name="num1" size="10" maxlength="4">
			  </td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">생년월일</td>
			
			  <td colspan="4">
			  <select name="year">
			  <option>선택</option>
			  <option>1999</option>
			  <option>1993</option>
			  <option>1989</option>
			  </select>
			  년

			   <select name="mmm">
			  <option>선택</option>
			  <option>12</option>
			  <option>10</option>
			  <option>11</option>
			  </select>
			  월

			   <select name="da">
			  <option>선택</option>
			  <option>2</option>
			  <option>3</option>
			  <option>4</option>
			  </select>
			  일

			  <input type="radio" name="dd" selected>양력
			  <input type="radio" name="dd">음력


			  
			  </td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">결혼</td>
			
			  <td colspan="4">
			  <input type="radio" name="marry" selected>미혼
			  <input type="radio" name="marry">기혼

			  </td>
			   </tr>

			    <tr>
			  
			   <td class="x" colspan="2">추천인 아이디</td>
			
			  <td colspan="4" ><input type="text" name="marry" bgcolor="blue"></td>

			  </tr>
			 -->
			  <tr>
			  <td colspan="6" align="center">
			  
			  <input type="submit" value="회원가입">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
			  <input type="reset" value="초기화">
			  <input type="button" value="메인으로 가기" onclick="history.go(-1)">

			 </tr>

</form>
 
 </table>

 </body>
</html>






