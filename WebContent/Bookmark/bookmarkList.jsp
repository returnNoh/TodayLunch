<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>즐겨찾기 목록</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
	
		$('table').on('click', '.deleteBookmark', function(){
			//alert($(this).parent().prev().prev().text())
			var delete_r=$(this).parent().prev().prev().text()
			var delete_confirm=confirm("정말 삭제하시겠습니까?")
			if(delete_confirm){
				postDeleteRest(delete_r)
			}
		})
		
	})
	function postDeleteRest(delete_r){
			$.post(
					{url:'/TodayLunch/Bookmark/bookmarkList.lunch', 
						data:{delete_r:delete_r}, 
					success: function (response) {
						var startstr='<tbody>'
						var start=response.lastIndexOf(startstr)
						var length=startstr.length
						var end=response.indexOf("</tbody>", start+length)
						
						var bookmark=$.trim(response.substring(start+length, end))
						alert(bookmark)
						$('tbody').html(bookmark);
		    },
		    error: function () {
		        alert("postDeleteRest error");
		    }
		    })
		}
	</script>
</head>
<body>
    <table border="2">
     <thead><tr>
    <th>식당 이름</th>
    <th>메뉴</th> 
    <th>삭제</th> 
  </tr> </thead>
   <tbody>
  <c:forEach var="nm" items="${name_menu}">
  <tr>
  <td>
  <a href="../Rest/showRest.lunch?r_name=${nm.key}">
  ${nm.key}</a></td>
  <td>
  <c:if test="${nm.value eq ''}">
  입력된 메뉴가 없습니다.</c:if>
  <c:if test="${nm.value ne null}">
  ${nm.value}</c:if>
  </td>
  <td>
  <input type="button" value="삭제" class="deleteBookmark">
  </td>
  </tr>
  </c:forEach>
  </tbody>
    </table>
</body>
</html>






