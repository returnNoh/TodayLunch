package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.RestDAO;
import beans.RestDTO;

public class ShowRestAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String r_id=request.getParameter("r_id");
		System.out.println("r_id는 ==>>>"+r_id);
		
		RestDAO dao = new RestDAO();
		
		RestDTO rest_info = dao.rest_info(r_id);
		
		request.setAttribute("rest_info", rest_info);
		
		return "/Rest/showRest.jsp";
	}

}
