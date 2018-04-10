package action;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.AdminDAO;

public class GetPeopleAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		if (request.getParameter("type") != null) {
			String type = request.getParameter("type");
			String pageNum = request.getParameter("pageNum");

			int count = 0;// 총레코드수
			// 게시판을 맨 처음 실행시키면 무조건 1페이지 부터 출력
			if (pageNum == null) {
				pageNum = "1";// default
			}

			List list = null;// 화면에 출력할 레코드데이터
			AdminDAO dao = new AdminDAO();

			count = dao.getArticleCount(type);// select count(*) from board
			System.out.println("현재 검색 레코드수(count)=>" + count);

			// 추가2 페이징 가져오기
			HashMap<String, Integer> pgList = dao.pageList(pageNum, count);

			if (count > 0) {
				System.out.println(pgList.get("startRow") + ":::" + pgList.get("endRow"));
				if (type.equals("person")) {
					list = dao.getPeople(type, pgList.get("startRow"), pgList.get("pageSize"));// 5개씩 (endRow X)
				} else {
					list = dao.getRest(type, pgList.get("startRow"), pgList.get("pageSize"));
				}
			} else {
				list = Collections.EMPTY_LIST;// 아무것도 없다는 표시
			}

			request.setAttribute("type", type);
			request.setAttribute("pgList", pgList); // 페이징처리된것을 전달
			request.setAttribute("list", list);// ${articleList} // 검색리스트를 전달

		}

		return "/Admin/getPeople.jsp";
	}

}
