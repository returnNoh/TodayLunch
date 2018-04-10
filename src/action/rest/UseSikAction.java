package action.rest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import beans.SikDAO;

public class UseSikAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		
		String p_id = request.getParameter("p_id");
		String p_siknum = request.getParameter("p_siknum");
		String r_name = request.getParameter("r_name");
		
		SikDAO sikdao = new SikDAO();
		String check = sikdao.usesik(p_id, p_siknum,r_name);
		
		request.setAttribute("usesik", check);
		
		return "/Mypage_r/useSik.jsp";
	}

}
