package action;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.MenuDAO;
import beans.MenuDTO;

public class SearchFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		String searchWord = request.getParameter("searchWord");
		List<MenuDTO> menuList = null;
		if (!searchWord.equals("")) {
			Date date = new Date(System.currentTimeMillis());
			System.out.println("SearchFormAction searchWord:" + searchWord);
			System.out.println("SearchFormAction date:" + date);
			menuList = new MenuDAO().searchMenuList(searchWord, date);
			System.out.println("SearchFormAction menuList:" + menuList);
		}
		request.setAttribute("menuList", menuList);

		return "/Search/searchForm.jsp";
	}

}
