package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ReviewDAO;
import beans.ReviewDTO;


public class ReviewUpdateAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		//int re_num=Integer.parseInt(request.getParameter("re_num"));
	    //String pageNum=request.getParameter("pageNum");
		int re_num=1;
		String pageNum="1";
	    ReviewDAO dbPro=new ReviewDAO();
	    List<ReviewDTO> article=dbPro.updateGetArticle(re_num);
	    System.out.println("re_num, pageNum:"+re_num+", "+pageNum);
	    //������ �޸𸮿� ����
	    request.setAttribute("pageNum", pageNum);
	    request.setAttribute("article", article);
	    
		return "/Review/reviewUpdate.jsp";
	}
	
}
