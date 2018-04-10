package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.AdminDAO;

public class NoticeWriteAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		AdminDAO dao = new AdminDAO();
		
		if(request.getParameter("no_content")!=null) { //액션을 따로 안만들고 글 작성 후 리스트로 돌아오기 위해 이렇게 써봄
			dao.writeNotice(request.getParameter("no_content"));
		}
		if(request.getParameter("no_num")!=null) {//액션을 따로 안만들고 글삭제 후 바로 리스트로 돌아오기 위한 구문
			dao.deleteNotice(request.getParameter("no_num"));
		}
		
		request.setAttribute("list", dao.getNotice());
		
		return "noticeList.jsp";
	}

}



/*
 * 
 * 
 * 
 * */
