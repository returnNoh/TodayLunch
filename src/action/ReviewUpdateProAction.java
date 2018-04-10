package action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ReviewDAO;
import beans.ReviewDTO;

public class ReviewUpdateProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
	    String pageNum=request.getParameter("pageNum");
	     
        ReviewDTO article=new ReviewDTO();
	     article.setRe_num(Integer.parseInt(request.getParameter("re_num")));//hidden
	     article.setR_name(request.getParameter("r_name"));
	     article.setP_id(request.getParameter("p_id"));
	     article.setRe_content(request.getParameter("re_content"));
	     article.setRe_time(Timestamp.valueOf(request.getParameter("re_time")));
	     article.setRe_star(Integer.parseInt(request.getParameter("re_star")));
	     
	     ReviewDAO dbPro=new ReviewDAO();
	   int check=dbPro.updateArticle(article);//num=0
		
	   request.setAttribute("pageNum", pageNum);
	   request.setAttribute("check", check);
	   
		return "/reviewUpdatePro.jsp";
	}

}
