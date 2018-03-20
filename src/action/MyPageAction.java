package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.*;


public class MyPageAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		MemberDAO mem= new MemberDAO();
		MemberDTO memd=new MemberDTO();
		SikkwonDAO sik=new SikkwonDAO();
		SikkwonDTO sikd=new SikkwonDTO();
		
		String p_id=(String) request.getSession().getAttribute("p_id");
		String p_siknum=request.getParameter("p_siknum");
		System.out.println("mypage="+p_id+p_siknum);
		
		request.setAttribute("p_id", p_id);
		request.setAttribute("p_siknum",p_siknum);
		
	
		
		return "/Mypage_p/myPage.jsp";
	}

}
