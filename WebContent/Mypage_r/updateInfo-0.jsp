<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정보수정</title>
</head>
<body>
	정보수정 페이지
	<form method="post" name="updateInfoform"
		action="/TodayLunch/Mypage_r/updateInfoPro.lunch">
		<table>
		<!-- 식당회원(rest) start -->
			<tr>
				<td>아이디</td>
				<td><input type="text" size="10" name="r_id"
					value="${rest.r_id}" readonly="readonly"></td>
			</tr>
			<tr>
        <td>비밀번호</td>
        <td><input type="password" size="10" name="r_passwd"
          value="${rest.r_passwd}"></td>
      </tr>
			<tr>
        <td>이메일</td>
        <td><input type="text" size="10" name="r_email"
          value="${rest.r_email}"></td>
      </tr>
      <tr>
        <td>연락처</td>
        <td><input type="text" size="10" name="r_phone"
          value="${rest.r_phone}"></td>
      </tr>
      <!-- 식당회원(rest) end -->
      
      <!-- 식당 정보(rest_info) start -->
      <%-- <tr>
        <td>위도</td>
        <td><input type="text" size="10" 
          value="${rest_info.r_wi}"></td>
      </tr>
      <tr>
        <td>경도</td>
        <td><input type="text" size="10" 
          value="${rest_info.r_gy}"></td>
      </tr> --%>
      <tr>
      <td>식당 위치를 <br>클릭해주세요.</td>
      <td>
      <jsp:include page="/Mypage_r/map.jsp">
<jsp:param value="${rest_info.r_wi}" name="r_wi"/>
<jsp:param value="${rest_info.r_gy}" name="r_gy"/>
</jsp:include> 
      </td>
      </tr>
      <tr>
        <td>주소</td>
        <td><input type="text" size="10" name="r_add"
          value="${rest_info.r_add}"></td>
      </tr>
      <tr>
        <td>식당 이름</td>
        <td><input type="text" size="10" name="r_name"
          value="${rest_info.r_name}"></td>
      </tr>
      <tr>
        <td>식당 소개문</td>
        <td><textarea name="r_info" rows="5" cols="40" >${rest_info.r_info}</textarea> </td>
      </tr>
			
			<tr>
				<td><input type="submit" value="수정하기"> <input
					type="reset" value="다시작성"></td>
			</tr>
		</table>


	</form>

</body>
</html>






