///**
// * searchWord.js Register.jsp에서 불러오게.
// * XHR 객체를 생성 -> 요청 -> jsp로 요청 -> 응답 -> 콜백함수 출력
// */
//
//var xhrObject
//
////1객체생성
//function getXHR(){ // XMLHttpRequest객체가 있을경우 새로운 객체를 반환해주는 함수
//		if(window.XMLHttpRequest){// 속성값을 가지고있다면.
//			xhrObject = new XMLHttpRequest(); // 객체를 생성
//		}
//	}
//
//
//function idCheck(id){
//	if(id==""){
//			//var mem_id=document.getElementById("ducheck");
//			var mem_id=$("ducheck");
//			alert(mem_id); // [object ~~]
//			$("ducheck").innerHTML="<font color='red'>아이디를 먼저 입력하여주세요.</font>";
//			$("mem_id").focus();
//			return false;
//	}
//	//입력했다면.Ajax를 이용해서 IdCheck.jsp를 요청
//	getXHR();
//	var url="http://localhost:8080/TodayLunch/id_check.jsp?"+getParameterValues();
//	alert(url);
//	//2.콜백함수 지정
//	xhrObject.onreadystatechange=resultProcess;
//	//3. open함수를 이용해서 서버에 요청준비
//	xhrObject.open("GET",url,true); // 비동기
//	//4. send() 함수를 이용해서 요청
//	xhrObject.send(null);
//}
//
////3. 새로고침 기능을 구현 -> 파라미터값을 전달해주는 함수
////뒤에 반복적인 요청을 하면 캐시에 남으므로 오늘 날짜의 시간을 넣어서 매번 다른 요청으로 바꿔버린다.
//function getParameterValues(){
//	var mem_id=$("mem_id").value; // document.RegForm.mem_id.value
//	return "mem_id="+mem_id+"&timestamp="+new Date().getTime();
//}
//
////4. 콜백함수 
//function resultProcess(){ // xml or text(html태그를 포함된 문자열)로 콜백된다.
//	
//	if(xhrObject.readyState==4){//서버에게 요청이 됐다면.
//		
//		if(xhrObject.status==200){// 서버의 결과를 받았다면.
//				var result=xhrObject.responseText; // 태그 + 문자열
//				alert('이거나오냐');
//					$(".simple").innerHTML+=result;
//			}
//		}
//	}


function EmailCheck(Email){
	if(Email==""){
			//var mem_id=document.getElementById("ducheck");
			var mail=$("mail");
		
			$("#emil").attr('placeholder',"이메일을 먼저 입력하여주세요.");
			$("mail").focus();
			return false;
	}
		$.ajax({url:'Email.jsp',
				data:{email:$('#mail').val()},//2.data:(매개변수명:값,매개변수2:값2...)
				success:function(args){ // 3. success: 성공적으로 보내준경우 실행할 함수
					
					$("#e_html").html(args+"인증번호:<input type='text' size='10'> <input type='button' value='인증번호 확인'>")

				}
	})
}


