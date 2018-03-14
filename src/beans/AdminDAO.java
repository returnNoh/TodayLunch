package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnect.DBConnectionMgr;

public class AdminDAO {

	
private DBConnectionMgr pool;
	
	public AdminDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");			
		}catch(Exception e) {
			System.out.println("연결실패"+e);
		}
	}// 생성자
	
	
	public int getArticleCount() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		String sql = "select count(*) from person";
		
		try {
			
			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
			count = rs.getInt(1);
			}
			System.out.println("총 레코드 수 :"+count);
			
		}catch(Exception e) {
			System.out.println("getArticleCount 실패"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return count;
	}
	
	
	
public HashMap pageList(String pageNum,int count) {
		
		
		
		//페이징 처리 결과를 저장할 HashMap객체 생성
		HashMap<String,Integer> pglist = new HashMap<String,Integer>();
		//==== 페이징 처리 계산부분 복사===================================
		
		//1 현재페이지
		System.out.println("pageNum=>"+pageNum);
		if(pageNum==null)pageNum="1";
		int currentPage = Integer.parseInt(pageNum); // 숫자 현재페이지
		
		//3 보여줄 단위 개수 (레코드 , 페이지 , 블록 ) 설정
				int pageSize = 5;         // 한페이지당 보여주는 레코드갯수    
			    int blockSize = 5;    //한 블록당 보여주는 페이지의 수
		//2 전체 레코드 개수 확인
		//int count = count;
			    System.out.println("pageList count 개수 체크용  "+count);
		// DB상의 레코드 시작 번호 limit 수치
		int startRow = (currentPage-1)*pageSize;
		int endRow = currentPage*pageSize;
		
		//4 전체 레코드 수를 참고하여 전체 페이지, 블록 설정
	    // beginPerPage  계산  (페이지별게시물 번호 제일 높은것)
		int beginPerPage = count-(currentPage-1)*pageSize;
		
		System.out.println(count+":count |||"+beginPerPage+":beginPerPage");
		
		int pageCount = count/pageSize+(count%pageSize==0?0:1); // 전체 페이지 개수2 둘다 똑같음  
		//int totalBlock=(int)Math.ceil((double)totalPage/blockSize);		//전체 블록 개수
		int blockCount = 0;
		//시작페이지 , 끝페이지
		int startPage = 0;
		//10의 배수인지
		if(currentPage%blockSize!=0){ // 1~9 , 11~19 , 21~22 
			startPage = currentPage/blockSize*blockSize+1;
		}else{ //10,20,30,40
			
			startPage=((currentPage/blockSize)-1)*blockSize+1;
			
		}
		int endPage = startPage+blockSize-1;
		if(endPage>pageCount)	endPage=pageCount;
		
		//-- ListAction(pageNun,count) => pageList를 넘기고,, -> ListAction -> list.jsp
		
		
		
		
		
		pglist.put("currentPage", currentPage);
		
		pglist.put("pageSize", pageSize);
		pglist.put("blockSize", blockSize);
		
		pglist.put("startRow", startRow);
		pglist.put("endRow", endRow);
		
		pglist.put("pageCount", pageCount);
		pglist.put("blockCount", blockCount);
		
		pglist.put("startPage", startPage);
		pglist.put("endPage", endPage);
		
		pglist.put("beginPerPage", beginPerPage);


		
		//number=count-(currentPage-1)*pageSize;
		//request.setAttribute(키명,저장할값)// 이용해서 값 공유
	    // beginPerPage  계산  (페이지별게시물 번호 제일 높은것)
		//=======================================================
		return pglist;
			 
	}


public ArrayList<MemberDTO> getPeople(int pageRow,int pageSize){
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	boolean check = false;
	ArrayList<MemberDTO> list = new ArrayList(); // 생성자로 초기 공간을 지정
	MemberDTO dto ;
	String sql="select * from person limit "+pageRow+","+pageSize;
	
	
	try {
		
		con=pool.getConnection();
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			dto=new MemberDTO();
			dto.setP_id(rs.getString("p_id"));
			dto.setP_email(rs.getString("p_email"));
			dto.setP_name(rs.getString("p_name"));
			list.add(dto);
		}
		
		
	}catch(Exception e) {
		System.out.println("getPeople 오류");
	}
	
	
	return list;
}



	
}