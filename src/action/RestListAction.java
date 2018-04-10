package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.*;

public class RestListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		/*RestDAO dao = new RestDAO();
		
		Rest_infoDTO rest_info = dao.getRest_Info(r_id);
		System.out.println("ShowRestAction rest_info:"+rest_info);
		request.setAttribute("rest_info", rest_info);*/
		
		return "/Rest/restList.jsp";
	}

}
