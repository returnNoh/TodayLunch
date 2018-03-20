package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;
import beans.MemberDTO;
import beans.MemberDAO;

public class LoginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String p_id=request.getParameter("p_id");
		String p_passwd=request.getParameter("p_passwd");
		System.out.println("login id="+p_id+"p_passwd"+p_passwd);
				
		MemberDAO mem= new MemberDAO();
		boolean check=mem.login(p_id, p_passwd);
		
		request.setAttribute("p_id", p_id);
		request.setAttribute("p_passwd",p_passwd);
		request.setAttribute("check", check);
		System.out.println("login pro p_id"+p_id+"p_passwd"+p_passwd);
		
		return "/Login/loginPro.jsp";
	}

	

}
