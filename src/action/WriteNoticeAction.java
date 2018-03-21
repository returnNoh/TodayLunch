package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.AdminDAO;

public class WriteNoticeAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		new AdminDAO().writeNotice(request.getParameter("no_content")); 
		
		
		return "mypage.jsp";
	}

}



/*
 * 
 * 
 * 
 * */
