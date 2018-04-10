package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.*;
public class UpdateInfoProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String p_id=(String) request.getAttribute("s_id");
		System.out.println("updateInfoProAction="+p_id);
		
		MemberDTO memd=new MemberDTO();
		memd.setP_id(request.getParameter("p_id"));
		memd.setP_passwd(request.getParameter("p_passwd"));
		memd.setP_email(request.getParameter("p_email"));
		memd.setP_name(request.getParameter("p_name"));
		memd.setP_check(Boolean.parseBoolean(request.getParameter("p_check")));
		memd.setP_siknum(request.getParameter("p_siknum"));
		
		MemberDAO memM=new MemberDAO();//수정 메서드를 호출하기위해서
		boolean check=memM.personUpdate(memd);
		System.out.println("updateInfoProAction의 회원수정유무 check=>"+check);
		
		request.setAttribute("p_id", p_id);
		request.setAttribute("check",check);
		
		return "/Mypage_p/updateInfoPro.jsp";
	}

}
