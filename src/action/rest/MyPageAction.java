package action.rest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import beans.MemberDAO;

public class MyPageAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		request.setCharacterEncoding("utf-8");
		//String id=(String) request.getSession().getAttribute("id");
		String id="rest1"; //test
		System.out.println("MyPageAction id:"+id);
		MemberDAO mda=new MemberDAO();
		boolean rest_check=true;//mda.restCheck(id);
		request.setAttribute("rest_check", rest_check);
		
		return "/Mypage_r/myPage.jsp";
	}

}
