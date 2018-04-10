package action.rest;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import beans.MenuDAO;
import beans.MenuDTO;
import beans.RestDAO;

public class UpdateMenuAction implements CommandAction {

	private Date dayCal(Date date, int num) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, num);
		java.util.Date parsed = cal.getTime();
		return new Date(parsed.getTime());
	}

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		String r_id = "rest1"; // test

		// Date date=new Date(System.currentTimeMillis());
		Date date = null;
		ArrayList<Date> dateList = new ArrayList<Date>(5);
		Calendar cal = Calendar.getInstance();
		String datestr = request.getParameter("date");
		System.out.println("UpdateMenuAction datestr:" + datestr);
		if (datestr == null) {
			date = new Date(System.currentTimeMillis());
		} else {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date parsed = format.parse(datestr);
			date = new Date(parsed.getTime());
		}
		System.out.println("UpdateMenuAction date:" + date);

		MenuDAO mda = new MenuDAO();
		// String m_content=mda.getMenu(new RestDAO().getR_name(r_id), date);
		// MenuDTO menu=mda.getMenu(new RestDAO().getR_name(r_id), date);
		ArrayList<MenuDTO> menuList = new ArrayList<MenuDTO>(5);
		ArrayList<Integer> m_countList = new ArrayList<Integer>(5);
		// ArrayList<String[]> m_arrayList = new ArrayList<String[]>(5);
		ArrayList<ArrayList<String>> m_arrayList = new ArrayList<ArrayList<String>>(5);
		// System.out.println("UpdateMenuAction m_content:"+m_content);
		// System.out.println("UpdateMenuAction m_content:"+menu.getM_content());
		for (int i = 0; i < 5; i++) {
			dateList.add(dayCal(date, i - 2));
			System.out.println("UpdateMenuAction d_array[" + i + "]:" + dateList.get(i));

			menuList.add(mda.getMenu(new RestDAO().getR_name(r_id), dateList.get(i)));
			System.out.println("UpdateMenuAction menuList[" + i + "]:" + menuList.get(i));
			m_countList.add(menuList.get(i).getM_content().split("<br>").length);

			m_arrayList.add(mda.splitM_content(menuList.get(i).getM_content()));
			if (m_arrayList.get(i).get(0).equals("")) {
				m_countList.set(i, 0);
			}
			System.out.println("UpdateMenuAction m_countList[" + i + "]:" + m_countList.get(i));
				for (int j = 0; j < m_arrayList.get(i).size(); j++)
					System.out.println(
							"UpdateMenuAction m_arrayList.get(" + i + ", " + j + "):" + m_arrayList.get(i).get(j));
		}

		request.setAttribute("dateList", dateList);
		request.setAttribute("date", date);
		request.setAttribute("menuList", menuList);
		request.setAttribute("m_countList", m_countList);
		request.setAttribute("m_arrayList", m_arrayList);

		return "/Mypage_r/updateMenu.jsp";
	}

}
