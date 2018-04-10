package action;

import java.sql.Date;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.MenuDAO;
import beans.MenuDTO;

public class MainAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		request.setCharacterEncoding("utf-8");

		// test for bookmark
		//request.getSession().setAttribute("s_id", "person1");
		Date date = new Date(System.currentTimeMillis());
		String searchWord = request.getParameter("searchWord");
		request.setAttribute("searchWord", searchWord);
		if (searchWord != null) {
			System.out.println("MainAction searchWord:" + searchWord);
			SearchFormAction sfa = new SearchFormAction();
			String search = sfa.requestPro(request, response);
			request.setAttribute("search", search);
		} else {
			request.setAttribute("search", "/Search/searchForm.jsp");
		}
		// System.out.println("MainAction menuList:"+request.getAttribute("menuList"));

		MenuDAO mda=new MenuDAO();
		List<MenuDTO> allMenu = mda.getAllMenu(date);
		System.out.println("MainAction allMenu:" + allMenu);
		if (allMenu != null) {
			ArrayList<ArrayList<String>> m_arrayList = new ArrayList<>(allMenu.size()); 
			for (int i = 0; i < allMenu.size(); i++) {
				m_arrayList.add(mda.splitM_content(allMenu.get(i).getM_content()));
			}
			request.setAttribute("m_arrayList", m_arrayList);
		}
		request.setAttribute("allMenu", allMenu);
		request.setAttribute("date", date);
		
		if(request.getParameter("grade")!="") {
			request.getSession().setAttribute("grade", request.getParameter("grade"));
		}

		return "/main.jsp";
	}

}
