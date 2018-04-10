package action;

import java.sql.Date;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.MemberDTO;
import beans.SikkwonDAO;
import beans.SikkwonDTO;

public class SikInfoAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
				
		String p_id=(String) request.getSession().getAttribute("s_id");
		//int s_num=Integer.getInteger(request.getParameter("s_num"));
		System.out.println("SikInfoAction p_id="+p_id);
		
		SikkwonDAO sikdao=new SikkwonDAO();
		SikkwonDTO sikt = new SikkwonDTO();
		List<SikkwonDTO> u_sik=sikdao.u_sik(p_id);
		int s_num=sikdao.getSnum(p_id);
		System.out.println("sik List action"+u_sik);
		TreeMap<Date, Integer> u_sikList=new TreeMap<Date, Integer>(Collections.reverseOrder());
		
		request.setAttribute("p_id", p_id);
		request.setAttribute("u_sik", u_sik);
		request.setAttribute("s_num", s_num);
		request.setAttribute("u_sikList", u_sikList);

		return "/Mypage_p/sikInfo.jsp";
	}

}
