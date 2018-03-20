package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.MemberDAO;
import beans.MemberDTO;
import java.util.*;

public class LoginAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String p_id=(String)request.getSession().getAttribute("s_id");
		String p_passwd=request.getParameter("p_passwd");		
		System.out.println("login id="+p_id);
		
		MemberDAO mem=new MemberDAO();
		MemberDTO memdto=new MemberDTO();
		
		request.setAttribute("p_id", p_id);
		request.setAttribute("p_passwd", p_passwd);
		
		
		return "/Login/login.jsp";
	}

}
