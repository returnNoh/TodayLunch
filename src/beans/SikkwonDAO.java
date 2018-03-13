package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
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
			sql="select  * from u_sik where p_id=?";
			pstmt=con.prepareStatement(sql);  
			pstmt.setString(1, p_id);
			rs=pstmt.executeQuery();
			//list [0]  값이 있음 1~ 없음
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
}