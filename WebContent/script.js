
 
function loginCheck(){ //Login.jsp
	//document.폼객체명.입력양식객체명.속성명
	if(document.login.p_id.value==""){
		alert("아이디를를 입력해 주세요.");
		document.login.p_id.focus();
		return; //return false;
	}
	if(document.login.p_passwd.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.login.p_passwd.focus();
		return;
	}R
	//document.폼객체명.submit()->전송하라
	document.login.submit();
}
/* Login.jsp
 * <INPUT TYPE="button" value="회원가입" onclick="memberReg()">
 * <INPUT TYPE="button" value="회원가입" 
 *    onclick="document.location='Register.jsp' ">
 */
function memberReg(){  //버튼클릭->특정페이지로 이동
	//response.sendRedirect(~)->자바
	//document.location.href="경로포함해서 이동할 페이지명" (자바스크립트)
	//document.location="Register.jsp"
	document.location="agreement.jsp" //Register.jsp로 이동(동의하면)
}


//개인 회원가입 버튼을 클릭시 호출되는 함수
function inputCheck(){
	if(document.regForm.p_id.value==""){
		alert("아이디를 입력해 주세요.");
		document.regForm.p_id.focus();
		return;//return false;
	}

	
	if(document.regForm.p_passwd.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.regForm.p_passwd.focus();
		return;
	}

	
	if(document.regForm.p_passwd2.value==""){
		alert("비밀번호를 확인해 주세요");
		document.regForm.p_passwd2.focus();
		return;
	}
	
	
	if(document.regForm.p_email.value==""){
		alert("이메일을 입력해 주세요.");
		document.regForm.p_email.focus();
		return;
	}

	
	if(document.regForm.p_name.value==""){
		alert("이름을 입력해 주세요.");
		document.regForm.p_name.focus();
		return;
	}
	
	
	if(document.regForm.p_passwd.value != document.regForm.p_passwd2.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.p_passwd2.focus();
		return;
	}
	
	else{
		$('#shoppingcart1').modal();
		//data-toggle="modal"
		//document.regForm.submit();
		return true;
	}
		
	
}

//식당 회원가입시 호출함수
	function inputCheck2(){
		if(document.regForm.r_id.value==""){
			alert("아이디를 입력해 주세요.");
			document.regForm.r_id.focus();
			return;//return false;
		}
		if(document.regForm.r_passwd.value==""){
			alert("비밀번호를 입력해 주세요.");
			document.regForm.r_passwd.focus();
			return;
		}
		if(document.regForm.r_passwd2.value==""){
			alert("비밀번호를 확인해 주세요");
			document.regForm.r_passwd2.focus();
			return;
		}
		
		if(document.regForm.r_email.value==""){
			alert("이메일을 입력해 주세요.");
			document.regForm.r_email.focus();
			return;
		}
		
		if(document.regForm.r_phone.value==""){
			alert("연락처를 입력해 주세요.");
			document.regForm.r_name.focus();
			return;
		}	
	

	if(document.regForm.r_passwd.value != document.regForm.r_passwd2.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.r_passwd2.focus();
		return;
	}
	$('#shoppingcart1').modal();
	//data-toggle="modal"
	//document.regForm.submit();
	return true;
//	document.regForm.submit(); //action="registerPro2.jsp"
}

	
/*	//회원가입시 성공창
	function regsuccess(){

	-----------------------------------------
		alert("회원가입에 성공하였습니다!");
		location.href="/TodayLunch/login.lunch"
	}*/
	
//중복ID체크 해주는 자바스크립트함수 선언
function idCheck(id){ //mem_id.value
   if(id==""){
	   alert("아이디를 먼저 입력하세요");
	   document.regForm.p_id.focus();//document.폼객체명.입력양식.함수명(~)
   }else{ //IdCheck.jsp?매개변수명=전달할값->IdCheck.jsp->checkId(id)
	   //IdCheck.jsp를 요청->매개변수를 전달하는 이유->DB에 접근=>id확인
	   url="IdCheck.jsp?p_id="+id;
	   window.open(url,"post","left=450,top=150,width=300,height=150");
   }
}

function idCheck2(id){ //mem_id.value
	alert("");
	   if(id==""){
		   alert("아이디를 먼저 입력하세요");
		   document.regForm.r_id.focus();//document.폼객체명.입력양식.함수명(~)
	   }else{ //IdCheck.jsp?매개변수명=전달할값->IdCheck.jsp->checkId(id)
		   //IdCheck.jsp를 요청->매개변수를 전달하는 이유->DB에 접근=>id확인
		   url="IdCheck2.jsp?r_id="+id;
		   window.open(url,"post","left=450,top=150,width=300,height=150");
	   }
	   
function memberInsert(check){
	if(check=="true"){
		alert("회원가입에 성공했습니다! 로그인페이지로 이동합니다.");
		
	}
	}
		
}
