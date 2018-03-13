package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DBConnect.DBConnectionMgr;

public class SikDAO {

	private DBConnectionMgr pool;

	public SikDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public String usesik(String p_id, String p_siknum, String r_name) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String check = "";
		String sql = "select s_num from sik where p_id=? and p_siknum=?";

		try {

			con = pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, p_id);
			pstmt.setString(2, p_siknum);
			
			rs = pstmt.executeQuery();
			
			System.out.println("아이디 인증번호 조회중");
			if (rs.next()) { // 아이디와 비번이 맞을경우

				if (rs.getInt("s_num") != 0) { // 식권이 있을경우
					
					sikUpdate(p_id, p_siknum,r_name); // 리턴값이 있긴한데 오류날부분이 아닐것같아서 대충함
					check = "남은 식권은 " + (rs.getInt("s_num") - 1) + "장 입니다";

				} else { // 식권이 없을경우
					check = "식권이 부족합니다.";
				}

			} else {// 아이디와 비번이 틀릴경우
				check = "아이디와 인증번호를 확인해주세요";
			}

		} catch (Exception e) {
			System.out.println("사용오류" + e);
		}finally {
			pool.freeConnection(con, pstmt,rs);
		}

		return check;
	}
	
	public int sikUpdate(String p_id,String p_siknum,String r_name) {//DB의 식권 사용은 이 메소드로 사용
		Connection con2 = null;
		PreparedStatement pstmt2 = null;
		int check = 0;
		String sql = "update sik set s_num=(s_num-1) where p_id=? and p_siknum=?";
		
		try {
			con2=pool.getConnection();
			// 식권사용정보 등록
			System.out.println("식권 사용정보 추가중");
			pstmt2=con2.prepareStatement("insert into u_sik values(?,?,now())");
			//con2.setautocommit()
			pstmt2.setString(1,p_id);
			pstmt2.setString(2, r_name);
			pstmt2.executeUpdate();
			// 식권차감
			System.out.println("식권차감중");
			pstmt2=con2.prepareStatement(sql);
			pstmt2.setString(1, p_id);
			pstmt2.setString(2, p_siknum);
			pstmt2.executeUpdate();
			
			
		}	catch(Exception e) {
			System.out.println("식권 사용에 심각한 오류가 나왔습니다."+e);
		}finally {
			pool.freeConnection(con2, pstmt2);
		}
		return check;
		
	}

}
