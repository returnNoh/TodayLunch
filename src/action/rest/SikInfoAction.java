package action.rest;

import java.sql.Date;
import java.util.Collections;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import beans.RestDAO;
import beans.SikDAO;

public class SikInfoAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String s_id = "rest1";// test
		String r_name = new RestDAO().getR_name(s_id);
		TreeMap<Date, Integer> u_sikList_asc = new SikDAO().getRestU_SikList(r_name);
		TreeMap<Date, Integer> u_sikList=new TreeMap<Date, Integer>(Collections.reverseOrder());
		u_sikList.putAll(u_sikList_asc);
		//System.out.println("SikInfoAction u_sikList(key[0])"+u_sikList.keySet().iterator().next());
		request.setAttribute("u_sikList", u_sikList);
		request.setAttribute("r_name", r_name);

		return "/Mypage_r/sikInfo.jsp";
	}

}
