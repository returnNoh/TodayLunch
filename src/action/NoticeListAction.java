package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.AdminDAO;

public class NoticeListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		AdminDAO dao = new AdminDAO();
		
		
		
		
		
		
		
		
		request.setAttribute("list", dao.getNotice());
		
		
		
		return "noticeList.jsp";
	}

}
