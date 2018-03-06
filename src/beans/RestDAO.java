package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DBConnect.DBConnectionMgr;

public class RestDAO {

	private DBConnectionMgr pool;

	public RestDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");

		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	
	public RestDTO rest_info(String r_id) {
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		RestDTO rest_info = null;
		String sql = "select * from rest_info where r_id=?";
		
		try {

			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, r_id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				rest_info=new RestDTO();
				rest_info.setR_id(rs.getString(1));
				rest_info.setR_wi(rs.getFloat(2));
				rest_info.setR_gy(rs.getFloat(3));
				rest_info.setR_add(rs.getString(4));
				rest_info.setR_name(rs.getString(5));
				rest_info.setR_info(rs.getString(6));
			}
			

		} catch (Exception e) {
			System.out.println("사용오류" + e);
		}finally {
			pool.freeConnection(con, pstmt,rs);
		}

		return rest_info;
		
		
		
	}
	
	
}
