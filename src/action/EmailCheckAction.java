package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmailCheckAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String p_siknum=request.getParameter("p_siknum");//인증링크에서 받은 인증번호값 
		String p_id=request.getParameter("p_id"); // 인증링크에서 받은 아이디값
		
		//MemberDAO dad = new MemberDAO(); //객체생성
		//String result = dao.emailCheck(p_id,o_siknum); //결과값 받기.
		//request.setAttribute("result", result); //속성값 설정
		
		
		
		
		return "/sik/Email_check.jsp";
	}

}
