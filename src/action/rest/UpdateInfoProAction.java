package action.rest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import beans.*;

public class UpdateInfoProAction implements CommandAction {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
        request.setCharacterEncoding("utf-8");
        
        //System.out.println("UpdateInfoProAction r_id:"+request.getParameter("r_id"));
        //System.out.println("UpdateInfoProAction r_id:"+request.getParameter("r_passwd"));
        
        RestDTO rest=new RestDTO();
        rest.setR_id(request.getParameter("r_id"));
        rest.setR_passwd(request.getParameter("r_passwd"));
        rest.setR_email(request.getParameter("r_email"));
        rest.setR_phone(request.getParameter("r_phone"));
        //System.out.println("UpdateInfoProAction rest.r_id="+rest.getR_id());
        
        Rest_infoDTO rest_info=new Rest_infoDTO();
        rest_info.setR_id(request.getParameter("r_id"));
        rest_info.setR_wi(Double.parseDouble(request.getParameter("r_wi")));
        rest_info.setR_gy(Double.parseDouble(request.getParameter("r_gy")));
        rest_info.setR_add(request.getParameter("r_add"));
        rest_info.setR_name(request.getParameter("r_name"));
        rest_info.setR_info(request.getParameter("r_info"));
        System.out.println("UpdateInfoProAction rest_info.r_wi="+rest_info.getR_wi());
       
        
        RestDAO rda=new RestDAO();
        
        boolean check=rda.updateRest(rest, rest_info);
        
        request.setAttribute("check", check);
        
        return "/Mypage_r/updateInfoPro.jsp";
    }

}
