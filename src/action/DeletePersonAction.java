package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.*;

public class DeletePersonAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String p_id=(String) request.getSession().getAttribute("s_id");
		String p_passwd=request.getParameter("p_passwd");
		System.out.println("deletePersonAction의 p_id 와 p_passwd="+p_id+p_passwd);
		
		if(p_passwd !=null) {
			
		MemberDAO mem= new MemberDAO();
		int p=mem.deletePerson(p_id, p_passwd);
		System.out.println("deletePersonAction의 p="+p);
		 if(p==1) {
			 System.out.println("deletePersonAction p 성공?"+p);
			 request.getSession().invalidate();
			 return "/main.jsp";
			 
		 }else {
			 request.setAttribute("p",p);
		 }
		}
		
		
		request.setAttribute("p_id", p_id);
		request.setAttribute("p_passwd", p_passwd);
		
		return "/Mypage_p/deletePerson.jsp";
	}

}
