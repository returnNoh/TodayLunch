<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style>
/*https://codepen.io/alexandredees/pen/ojaFr*/
.result {
	float: right;
	position: relative;
	left: -50%; 
	text-align: left;
}

.resultTable {
	float: left;
	position: relative;
	left: 50%;
}
</style>
</head>
<body>
	<form method="post" name="searchForm">
		<input type="text" name="searchWord">
		<button type="submit">search</button>
	</form>
	<br />
	<div class="result">
		<c:if test="${searchWord!=null}">
			<c:if test="${menuList!=null }">
				<c:forEach var="menu" items="${menuList}">
					<table class="resultTable">
						<tr>
							<td>${menu.r_name }</td>
						</tr>
						<tr>
							<td>${menu.m_content }</td>
						</tr>
					</table>
				</c:forEach>
			</c:if>
			<c:if test="${menuList==null}">
				<table>
					<tr>
						<td><br>검색 결과가 없습니다.<br></td>
					</tr>
				</table>
			</c:if>

		</c:if>
	</div>
</body>
</html>






