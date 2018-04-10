package action.rest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import beans.*;


public class UpdateInfoAction implements CommandAction {

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
        request.setCharacterEncoding("utf-8");
        
        //String r_id=request.getParameter("r_id");
        String r_id="rest1";//test
        System.out.println("UpdateInfoAction r_id="+r_id);
        RestDAO rda=new RestDAO();
        RestDTO rest=rda.getRest(r_id);
        Rest_infoDTO rest_info=rda.getRest_Info(r_id);
        
        request.setAttribute("r_id", r_id);
        request.setAttribute("rest", rest);
        request.setAttribute("rest_info", rest_info);
        
        if(request.getParameter("r_wi")!=null) {
        	rest_info.setR_wi(Double.parseDouble(request.getParameter("r_wi")));
        	rest_info.setR_gy(Double.parseDouble(request.getParameter("r_gy")));
        	System.out.println("UpdateInfoAction r_wi:"+rest_info.getR_wi());
        	request.setAttribute("rest_info", rest_info);
        }
        
        return "/Mypage_r/updateInfo.jsp";
    }

}
