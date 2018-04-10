package action.rest;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import beans.MenuDAO;
import beans.MenuDTO;
import beans.RestDAO;

public class UpdateMenuAction2 implements CommandAction {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

        String r_id="rest1";  //test
        
        //Date date=new Date(System.currentTimeMillis());
        Date date=null;
        String datestr=request.getParameter("date");
        System.out.println("UpdateMenuAction datestr:"+datestr);
        if(datestr==null){
            date=new Date(System.currentTimeMillis());
        }else{
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date parsed = format.parse(datestr);
            date = new Date(parsed.getTime());
        }
        System.out.println("UpdateMenuAction date:"+date);
        
        MenuDAO mda=new MenuDAO();
        //String m_content=mda.getMenu(new RestDAO().getR_name(r_id), date);
        MenuDTO menu=mda.getMenu(new RestDAO().getR_name(r_id), date);
        
        //System.out.println("UpdateMenuAction m_content:"+m_content);
        System.out.println("UpdateMenuAction m_content:"+menu.getM_content());
        System.out.println("UpdateMenuAction date:"+date);
       
        int m_count=menu.getM_content().split("<br>").length;
        //System.out.println("UpdateMenuAction m_count:"+m_count);
        String[] m_array=menu.getM_content().split("<br>");
        //System.out.println("UpdateMenuAction m_array[0]:"+m_array[0]);
        if(m_array[0].equals("")) {
        	m_count=0;
        }
        System.out.println("UpdateMenuAction m_count:"+m_count);
        request.setAttribute("date", date);
        request.setAttribute("menu", menu);
        request.setAttribute("m_count", m_count);
        request.setAttribute("m_array", m_array);
        
        
        return "/Mypage_r/updateMenu.jsp";
    }

}
