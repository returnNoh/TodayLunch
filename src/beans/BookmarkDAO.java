package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DBConnect.DBConnectionMgr;

public class BookmarkDAO {

	private DBConnectionMgr pool;

	public BookmarkDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");

		} catch (Exception e) {
			System.out.println("DB연결 실패>" + e);
		}
	}

	public boolean isBookmarked(String p_id, String r_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean check = false;
		String sql = "";

		try {
			con = pool.getConnection();
			System.out.println("con=>" + con);
			sql = "select * from bookmark where p_id=? and r_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, p_id);
			pstmt.setString(2, r_id);
			rs = pstmt.executeQuery();
			check = rs.next();
		} catch (Exception e) {
			System.out.println("isBookmarked() 메서드 실행오류=>" + e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return check;
	}

	public List<String> getBookmarkList(String p_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> bookmarkList = null;
		String sql = "";

		try {
			con = pool.getConnection();
			sql = "select r_id from bookmark where p_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, p_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bookmarkList = new ArrayList<String>();
				System.out.println("getBookmarkList() in");
				do {
					String r_id = rs.getString("r_id");
					bookmarkList.add(r_id);// 최종 웹상에서 필드별로 출력(Getter)
				} while (rs.next());
			}
		} catch (Exception e) {
			System.out.println("getBookmarkList() 메서드 실행오류=>" + e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bookmarkList;
	}

	public int getBookmarkCount(String p_id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;
		String sql = "";

		try {
			sql = "select count(*) from bookmark where p_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, p_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("getBookmarkCount() 메서드 실행오류=>" + e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return count;
	}

	public boolean deleteBookmark(String p_id, String r_id) { 
    	Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		boolean check= false;

		// 2.메서드 목적에 맞는 SQL구문
		try {
			con = pool.getConnection();
			sql = "delete from bookmark where p_id=? and r_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, p_id);
			pstmt.setString(2, r_id);
			int delete=pstmt.executeUpdate();
			if(delete>=1)
				check=true;
			System.out.println("즐겨찾기삭제 성공유무(delete)=>"+delete);
			
		} catch (Exception e) {
			System.out.println("deleteBookmark() 메서드 실행오류=>" + e);
		} finally {// 메모리해제
			pool.freeConnection(con, pstmt, rs);
		}
		return check;
    }
}
