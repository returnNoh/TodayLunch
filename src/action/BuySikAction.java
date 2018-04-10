package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.SikkwonDAO;
import beans.SikkwonDTO;

public class BuySikAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String p_id=(String) request.getSession().getAttribute("s_id");
		
		System.out.println("BuySikAction p_id="+p_id);
		
		SikkwonDAO sikdao=new SikkwonDAO();
		SikkwonDTO sikt = new SikkwonDTO();
		int s_num=sikdao.getSnum(p_id);
		
		
		request.setAttribute("p_id", p_id);
		request.setAttribute("s_num", s_num);
		
		
		return "/Mypage_p/buySik.jsp";
	}

}
