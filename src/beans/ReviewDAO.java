package beans;

import java.sql.*;
import java.util.*;

import DBConnect.DBConnectionMgr;
import beans.*;

public class ReviewDAO {

	private DBConnectionMgr pool;

	public ReviewDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");

		} catch (Exception e) {
			System.out.println(e);
		}
	}
	public int getArticleCount() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int x=0;
		
		try {
			con=pool.getConnection();
			System.out.println("con "+con);
			String sql="select count(*) from review where r_name=?";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				x=rs.getInt(1);
				System.out.println("총레코드수(x)=>"+x);
			}
		}catch(Exception e) {
			System.out.println("getArticleCount() 메소드 실행오류 "+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return x;
	}
	public List<ReviewDTO> getArticles(int re_time){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<ReviewDTO> articleList=null;
		
		try {
			con=pool.getConnection();
			String sql="select * from review where r_name=? order by re_time desc";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, re_time);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				articleList=new ArrayList();
				do {
					ReviewDTO article=new ReviewDTO();
					article.setP_id(rs.getString("p_id"));
					article.setRe_num(rs.getInt("re_num"));
					article.setRe_content(rs.getString("re_content"));
					article.setRe_star(rs.getInt("re_star"));
					article.setRe_time(rs.getTimestamp("re_time"));
					articleList.add(article);
				}while (rs.next());
			}
		}catch(Exception e) {
			
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return articleList;
	}
	public Hashtable pageList(String pageNum,int count) {
		Hashtable<String,Integer> pgList=new Hashtable<String,Integer>();
		int pageSize=10;
		int blockSize=10;
		
		if(pageNum==null) {
			pageNum="1";
		}
		int currentPage=Integer.parseInt(pageNum);
		int startRow=(currentPage-1)*pageSize+1;
		int endRow=currentPage*pageSize;
		int number=0;
		number=count-(currentPage-1)*pageSize;
		
		System.out.println("현재 레코드수(count) "+count+",number "+number);
		
		int pageCount=count/pageSize+(count%pageSize==0?0:1);
		int startPage=0;
		if(currentPage%blockSize!=0) {
			startPage=currentPage/blockSize*blockSize+1;
		}else {
			startPage=((currentPage/blockSize)-1)*blockSize+1;
		}
		int endPage=startPage+blockSize-1;
		System.out.println("pgList메소드의 startPage "+startPage+",endPage "+endPage);
		if(endPage>pageCount)
			endPage=pageCount;
		pgList.put("pageSize", pageSize);
		pgList.put("blockSize", blockSize);
	       pgList.put("currentPage", currentPage);
	       pgList.put("startRow", startRow);
	       pgList.put("endRow", endRow);
	       pgList.put("count", count);
	       pgList.put("number", number);
	       pgList.put("startPage", startPage);
	       pgList.put("endPage", endPage);
	       pgList.put("pageCount", pageCount);
	       
	       return pgList;
	}
	
	public void insertArticle(ReviewDTO article) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		int number=0;
		int re_num=article.getRe_num();
		
		try {
			con = pool.getConnection();
			sql = "select max(re_num) from review";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			// 추가
			if (rs.next()) { // 레코드갯수가 한개이상이라면
				number = rs.getInt(1) + 1;
			} else {
				number = 1;// 게시물 번호를 1로 설정
			}
			System.out.println("insertArticle의 number=>" + number);
			if (number!= 0) {
				re_num = number;
			}
			
			sql = "insert into review(re_num,r_name,p_id,re_time,re_content,re_star) values(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, article.getRe_num());
			pstmt.setString(2, article.getR_name());
			pstmt.setString(3, article.getP_id());
			pstmt.setTimestamp(4, article.getRe_time());
			pstmt.setString(5, article.getRe_content());
			pstmt.setInt(6, article.getRe_star());
            //실행
			int insert=pstmt.executeUpdate();
			System.out.println("리뷰 글쓰기 성공유무(insert)=>"+insert);
		} catch (Exception e) {
			System.out.println("insertArticle() 메서드 실행오류=>" + e);
		} finally {// 메모리해제
			pool.freeConnection(con, pstmt, rs);
		}
	}
	public List<ReviewDTO> updateGetArticle(int re_num) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ReviewDTO> articleList=null;
		
		try {
			con=pool.getConnection();
			String sql="select * from review where re_num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,re_num);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				articleList=new ArrayList();
			}
				do {
					ReviewDTO article=new ReviewDTO();
					article.setP_id(rs.getString("p_id"));
					article.setRe_num(rs.getInt("re_num"));
					article.setRe_content(rs.getString("re_content"));
					article.setRe_star(rs.getInt("re_star"));
					article.setRe_time(rs.getTimestamp("re_time"));
			}while(rs.next());
		}catch(Exception e) {
			System.out.println("updateGetArticle() 메소드 실행오류 "+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return articleList;
	}
	public int updateArticle(ReviewDTO article) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
        String session_id=null;
		String sql = "";
		int x= -1;//수정 성공 유무

		// 2.메서드 목적에 맞는 SQL구문
		try {
			con = pool.getConnection();
			sql = "select p_id from review where re_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,article.getRe_num());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				session_id=rs.getString("p_id");
				System.out.println("session_id "+session_id);
				if(session_id.equals(article.getP_id())) {
	
			sql = "update review set re_time=?,re_content=?,re_star=? where re_num=? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setTimestamp(1, article.getRe_time());
			pstmt.setString(2, article.getRe_content());
			pstmt.setInt(3, article.getRe_star());
            //실행
			int update=pstmt.executeUpdate();
			System.out.println("글수정 성공유무(update)=>"+update);
			x=1;
			}else {
				x=0;
			}
		  }
		} catch (Exception e) {
			System.out.println("updateArticle() 메서드 실행오류=>" + e);
		} finally {// 메모리해제
			pool.freeConnection(con, pstmt, rs);
		}
		return x;//1->수정성공, 0->수정실패
    }
	
	public int deleteArticle(int re_num,String p_id) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String session_id=null;
		String sql="";
		int x=-1;
		
		try {
			con=pool.getConnection();
			sql="select p_id from review where re_num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, re_num);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				session_id=rs.getString("p_id");
				System.out.println("session_id "+session_id);
				if(session_id.equals(p_id)) {
			sql="delete from review where re_num=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, re_num);
			
			int delete=pstmt.executeUpdate();
			System.out.println("리뷰 삭제 성공유무(delete) "+delete);
				x=1;
		}else {
			x=0;
			}
		  }
		}catch(Exception e) {
			System.out.println("deleteArticle() 메소드 실행오류 "+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return x;
	}
	
}

