<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script> <!-- datepicker용  -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴입력</title>
<!-- <script src="../js/menu.js"></script> -->
 <script>
	$(function() {
		{
			var m_contentstr=$.trim($("#m_content").text())
			$("#m_content").text(m_contentstr)
			//alert("refresh")
		}
		
		$("#prev_date").on("click", function() {
			//var datestr = $("#date").val().split("-")
			//alert(datestr[0])  //기존 연도
			//alert(datestr[1])  //기존 월
			//var dd=datestr[2].split(" ")
			//alert(dd[0]) //기존 일
			//var day = new Date(datestr[0], datestr[1]-1, dd[0])//연 월 일
			//alert(day) //현재 날짜의 Date형식
			var day =stringTodate($("#date").val())
			day.setDate(day.getDate() - 1) //하루 전 날짜로
			var dayformat=$.datepicker.formatDate('yy-mm-dd', day) //String으로 바꾸기
			$("#date").val(dayformat)
			postMenuofDate(dayformat)
		})
		$("#next_date").on("click", function() {
			//var datestr = $("#date").val().split("-")
			//var dd=datestr[2].split(" ")
			//var day = new Date(datestr[0], datestr[1]-1, dd[0])//연 월 일
			var day =stringTodate($("#date").val())
			day.setDate(day.getDate() + 1) //하루 뒤 날짜로
			var dayformat=$.datepicker.formatDate('yy-mm-dd', day) //String으로 바꾸기
			$("#date").val(dayformat)
			postMenuofDate(dayformat)
		})
		
		$("#contentTable").on("click", "#addMenu", function() {	
			var menustr='<tr class="contentList"><td><input type="text" name="content'+$(".contentList").length+'" value="'
			+$("#newMenu").val()+'"></td></tr>'
			//alert(menustr)
			$(".contentList:last").after(menustr)
			$("#newMenu").val("")
		})
		
		$("input[type='submit']").on("click", function(){
			//$("input[name='m_count']").val()
			var m_count=$(".contentList").length;
			/* if($("#newMenu").val()!=""){//추가란에 메뉴 입력됨
				m_count=m_count+1
			}		 */
			$("input[name='m_count']").val(m_count)
			//alert($("input[name='m_count']").val())
		})
		
		
	})
	
	function stringTodate(datestr){
			var dstr = datestr.split("-")
			var dd=dstr[2].split(" ")
			var day = new Date(dstr[0], dstr[1]-1, dd[0])//연 월 일
			
			return day
		}
		
		function postMenuofDate(dayformat){
			$.post(
					{url:'/TodayLunch/Mypage_r/updateMenu.lunch', 
						data:{date:dayformat}, 
					success: function (response) {
						//var startstr="<textarea name='m_content' id='m_content' rows='10' cols='40'>"
						//var start=response.lastIndexOf(startstr)
						//var length=startstr.length
						//var end=response.lastIndexOf("</textarea>")
						//alert(end+", "+response.length)
						
						//var m_content=$.trim(response.substring(start+length, end))
		        		//alert(m_content);
						//$("#m_content").text(m_content)
						//var contentstr=""
						var startstr='<table id="contentTable">'
						var start=response.lastIndexOf(startstr)
						var length=startstr.length
						var end=response.indexOf("</table>", start+length)
						//alert("last:"+response.lastIndexOf("</table>")+"\nlast2:"+end)
						
						var m_content=$.trim(response.substring(start+length, end))
						//alert(m_content)
						$("#contentTable").html(m_content);
						setReadonly();
		    },
		    error: function () {
		        alert("postMenuofDate error");
		    }
		    })
		}
		
		function setReadonly(){
			 if($("#date").val()<$.datepicker.formatDate('yy-mm-dd', new Date())){
					//alert($('input[name^=content]').val())
					$('input[name^="content"]').attr('readonly', 'readonly')
				}else{
					$('input[name^="content"]').removeAttr('readonly');
				}
		}
</script>

</head>
<body>
	메뉴입력 페이지

	<form method="post" name="updateMenuform"
		action="/TodayLunch/Mypage_r/updateMenuPro.lunch">
		<input type="hidden" name="r_name" value="${menu.r_name}">
		<table>
			<tr>
				<td id='r_name'>${menu.r_name}의 메뉴</td>
				
			</tr>
			<tr>
				<td>날짜</td>
				<td><input type="button" id="prev_date" value="전"> 
				<input type="text" size="10" id="date" value="${date}" name="m_time" 
				readOnly="readOnly">
					<input type="button" id="next_date" value="후"></td>
			</tr>
			<tr>
				<td>메뉴</td>
				<td><%-- <textarea name='m_content' id='m_content' rows='10' cols='40'>
				${menu.m_content}</textarea> --%>
				<table id="contentTable">
				<c:if test="${m_count!=0 }">
				<c:forEach var="content" items="${m_array}" varStatus="status">
				<tr class="contentList"><td><input type="text" name="content${status.index}" value="${content}"></td></tr>
				</c:forEach>
				</c:if>
				<tr bgcolor="grey"><td><input type="text" id="newMenu"></td>
				<td><input type="button" id="addMenu" value="추가"></td></tr>
				</table>
				<input type="hidden" name="m_count" value="${status.count}">
          </td>
			</tr>
			<tr>
				<td><input type="submit" value="수정하기"> <input
					type="reset" value="다시작성"></td>
			</tr>
		</table>
	</form>

</body>
</html>






