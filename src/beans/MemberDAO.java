package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DBConnect.DBConnectionMgr;
import beans.*;

public class MemberDAO {

private DBConnectionMgr pool;
	
	public MemberDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	
	public boolean register_Check_Id(String mem_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean check = false;
		String sql = "select id from member where id=?";
		try {
			con=pool.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs=pstmt.executeQuery();
			check = rs.next();
			System.out.println("함수 완료 체크"+check);
			
		}catch(Exception e) {
			System.out.println("중복값 체크 실패"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return check;
	}
	
	
}
