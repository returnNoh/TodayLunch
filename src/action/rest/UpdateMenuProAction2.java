package action.rest;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import beans.*;

public class UpdateMenuProAction2 implements CommandAction {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

        request.setCharacterEncoding("utf-8");
        System.out.println("UpdateMenuProAction m_time"+request.getParameter("m_time"));
        //String date = request.getParameter("m_time")+" 00:00:00.0"; 
        //System.out.println("UpdateMenuProAction date="+date);
        Date dateTime = Date.valueOf(request.getParameter("m_time"));
        System.out.println("UpdateMenuProAction dateTime="+dateTime);
        
        int m_count=Integer.parseInt(request.getParameter("m_count"));
        System.out.println("UpdateMenuProAction m_count="+m_count);
        
        String[] content= new String[m_count];
        for(int i=0;i<m_count;i++) {
        content[i]=request.getParameter("content"+i);
        System.out.println("UpdateMenuProAction content["+i+"]="+content[i]);
        }
        String m_content=content[0];
        for(int i=1;i<m_count;i++) {
        	m_content+="<br>"+content[i];
        }
        MenuDAO mda=new MenuDAO();
        MenuDTO menu = new MenuDTO();
        menu.setR_name(request.getParameter("r_name"));
        menu.setM_time(dateTime);
        menu.setM_content(m_content);
        System.out.println("set menu:"+menu.getR_name()+", "
                +menu.getM_time()+", "+menu.getM_content());
        
        boolean check=mda.updateMenu(menu);

        request.setAttribute("check", check);
        request.setAttribute("dateTime", dateTime);
        
        return "/Mypage_r/updateMenuPro.jsp";
    }

}
