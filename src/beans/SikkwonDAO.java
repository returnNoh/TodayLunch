package beans;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;

import DBConnect.DBConnectionMgr;




public class SikkwonDAO {
private DBConnectionMgr pool;
	
	public SikkwonDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");			
		}catch(Exception e) {
			System.out.println("연결실패"+e);
		}
	}// 생성자
	
	public List<SikkwonDTO> u_sik(String p_id) {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<SikkwonDTO> sik = new ArrayList();
		SikkwonDTO sikd=null;
		String sql="";
		
		try {
			con=pool.getConnection();
			sql="select  * from u_sik where p_id=? order by u_time desc";
			pstmt=con.prepareStatement(sql);  
			pstmt.setString(1, p_id);
			rs=pstmt.executeQuery();
			//while문으로 계속 반복해서 배열에 넣어줘야함.
			while(rs.next()) { 
				sikd=new SikkwonDTO();
				sikd.setP_id(rs.getString("p_id"));
				sikd.setR_name(rs.getString("r_name"));
				sikd.setU_time(rs.getString("u_time"));
				sik.add(sikd);				
			}
		}catch(Exception e) {
			System.out.println("u_sik() DAO 에러="+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}return sik;
	}


public int getSnum(String p_id) { 
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int x=0;
	String sql="";
	
	try {
		con=pool.getConnection();
		sql="select  s_num from sik where p_id=?";
		pstmt=con.prepareStatement(sql);  
		pstmt.setString(1, p_id);
		rs=pstmt.executeQuery();
		if(rs.next()) {
			x=rs.getInt("s_num");
		}
	}catch(Exception  e) {
		System.out.println("u_sik 개수 DAO() 실행 중 에러유발=>"+e);
	}finally {
		pool.freeConnection(con, pstmt, rs);
	}
	return x;
}

public  boolean   updateSik(SikkwonDTO siko) {
	
	Connection con=null;
	PreparedStatement pstmt=null;
	boolean s_check=false;
	String sql="";
	
	try {
		con=pool.getConnection();
		//트랜잭션처리 시작구문
		con.setAutoCommit(false);
		//-----입력을 받을때는 DTO->각각의 필드에 값을 저장->Getter Method
		sql="update sik set s_num=s_num+? where p_id=?";
		pstmt=con.prepareStatement(sql);
		pstmt.setInt(1,siko.getS_num());
		pstmt.setString(2,siko.getP_id());
		
		int update=pstmt.executeUpdate();//1->성공, 0->실패->메모리상 저장
		//메모리상에 저장된 값이=>실제 테이블에 저장(동기화)
		con.commit();
		System.out.println("sikkwon dao 식권구매(updateSik)=>"+update);
		if(update > 0) {
			s_check=true;
		}
	}catch(Exception e) {
		System.out.println("sikkwon dao 식권구매(updateSik) 실행 에러유발=>"+e);
	}finally {
		pool.freeConnection(con, pstmt);
	}
	return s_check;
}

//u_sik table--------------------------------------------------


public TreeMap<Date, Integer> getPersonU_SikList(String p_id){
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	TreeMap<Date, Integer> u_sikList = null;
	String sql = "";
	
	try {
		con = pool.getConnection();
		sql = "select (DATE_FORMAT(u_time, '%Y-%m-%d'))date, count(*), from u_sik"
		+" where p_id=? GROUP BY DATE_FORMAT(u_time, '%Y-%m-%d') ORDER BY date desc";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, p_id);
		rs = pstmt.executeQuery();
		
		if (rs.next()) { 
			u_sikList=new TreeMap<Date, Integer>();
			do{
				u_sikList.put(rs.getDate(1), rs.getInt(2));
				//System.out.println("getRestU_SikList u_sikList:"+rs.getDate(1)+", "+rs.getInt(2));
			}while(rs.next());
		} 
	} catch (Exception e) {
		System.out.println("getPersonU_SikList error:" + e);
	}finally {
		pool.freeConnection(con, pstmt,rs);
	}

	return u_sikList;
}
}
