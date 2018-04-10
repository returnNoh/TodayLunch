package action;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BookmarkDAO;
import beans.MenuDAO;
import beans.MenuDTO;
import beans.RestDAO;

public class BookmarkListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		request.setCharacterEncoding("utf-8");
		//String p_id=request.getParameter("s_id");
				String p_id="person1";//test
		BookmarkDAO bda=new BookmarkDAO();
		//즐겨찾기 삭제
		String delete_r=request.getParameter("delete_r");
		
		if(delete_r!=null) {
			System.out.println("BookmarkListAction delete_r:"+delete_r);
			String r_id=new RestDAO().getR_id(delete_r);
			System.out.println("BookmarkListAction deleteBookmark:"+bda.deleteBookmark(p_id, r_id));
		}
		
		List<String> bookmarkList=bda.getBookmarkList(p_id);
		int list_size=bookmarkList.size();
		
		if(list_size!=0) {
			//List<String> r_nameList=new ArrayList<String>(list_size);
			//List<String> menuList=new ArrayList<String>(list_size);
			System.out.println("BookmarkListAction list_size:"+list_size);
			HashMap<String, String> name_menu=new HashMap<String, String>(list_size);
			String r_name; 
			MenuDTO menu;
			for(int i=0;i<list_size;i++) {
				System.out.println("BookmarkListAction bookmarkList.get(i):"+bookmarkList.get(i));
				r_name=new RestDAO().getR_name(bookmarkList.get(i));
				menu=new MenuDAO().getMenu(r_name, new Date(System.currentTimeMillis()));
				//r_nameList.add(i, r_name);
				//menuList.add(i, menu);
				name_menu.put(r_name, menu.getM_content());
				System.out.println("BookmarkListAction r_name, menu:"+r_name+", "+menu);
			}
			//request.setAttribute("r_nameList", r_nameList);
			//request.setAttribute("menuList", menuList);
			request.setAttribute("name_menu", name_menu);
		}
		
		return "/Bookmark/bookmarkList.jsp";
	}

}
