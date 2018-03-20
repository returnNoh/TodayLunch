package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ForgetInfoDAO;

public class ForgetInfoAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		
		String id ="";
		String email,result;
		if(request.getParameter("email")=="") {//로그인페이지에서 오는것이 아니라 직접 jsp파일로 들어왔을 때 null값 예방
			return "/Login/forget_Info.jsp";
		}
		email=request.getParameter("email");
		
		ForgetInfoDAO fi = new ForgetInfoDAO();
		if(request.getParameter("id")!=null) {
			id=request.getParameter("id");
			
			result = fi.Forget_passwd(id, email);
			
		}else {
			result=fi.Forget_id(email);
			result+=" 입니다";
		}
		
		
		if(result.equals("null 입니다")) {
			result="정보가 없습니다";
		}
		request.setAttribute("result", result);
		
		
		return "/Login/forget_Info.jsp";
	}

}
