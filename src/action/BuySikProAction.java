package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.MemberDTO;
import beans.SikkwonDAO;
import beans.SikkwonDTO;

public class BuySikProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String p_id=(String) request.getSession().getAttribute("s_id");
		//int s_num=Integer.getInteger(request.getParameter("s_num"));
		System.out.println("BuySikProAction의 p_id="+p_id+"와");
		
		SikkwonDTO sikt = new SikkwonDTO();
		sikt.setP_id(p_id);
		sikt.setS_num(Integer.parseInt(request.getParameter("s_num")));
		
		SikkwonDAO sikdao=new SikkwonDAO();
		boolean check=sikdao.updateSik(sikt);
		System.out.println("buySikProAction의 check="+check);
		
		request.setAttribute("p_id", p_id);
		//request.setAttribute("s_num", s_num);
		request.setAttribute("check", check);
		
		
		return "/Mypage_p/buySikPro.jsp";
	}

}
