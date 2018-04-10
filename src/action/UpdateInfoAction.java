package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.MemberDAO;
import beans.MemberDTO;

public class UpdateInfoAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String p_id=(String) request.getSession().getAttribute("s_id");
		System.out.println("updateInfoAction="+p_id);
		MemberDAO mem= new MemberDAO();
		MemberDTO memd=mem.getMember(p_id);
		
		request.setAttribute("memd", memd);
		
		return "/Mypage_p/updateInfo.jsp";
	}

}
