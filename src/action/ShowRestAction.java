package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.*;

public class ShowRestAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String r_id="rest1";//test
		//String r_id=request.getParameter("r_id");
		String r_name=request.getParameter("r_name");
		if(r_name!=null) {
			r_id=new RestDAO().getR_id(r_name);
		}
		//String r_id="rest1";
		System.out.println("ShowRestAction r_id는 ==>>>"+r_id);
		
		RestDAO dao = new RestDAO();
		
		Rest_infoDTO rest_info = dao.getRest_Info(r_id);
		System.out.println("ShowRestAction rest_info:"+rest_info);
		request.setAttribute("rest_info", rest_info);
		
		return "/Rest/showRest.jsp";
	}

}
