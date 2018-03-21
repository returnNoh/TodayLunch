package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.*;
import java.util.ArrayList;

public class MainAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		if(request.getParameter("grade")!="") {
			request.getSession().setAttribute("grade", request.getParameter("grade"));
		}
		
		return "/main.jsp";
	}

}
