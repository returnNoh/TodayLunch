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
			System.out.println("연결실패"+e);
		}
	}// 생성자
	
	//로그인 
	public boolean login(String p_id,String p_passwd) {
		//DB
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		boolean check=false;
		String sql="";
		
		try {
			con=pool.getConnection();
			System.out.println("con=>"+con);
			sql="select id,passwd from login where id=? and passwd=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,p_id);//웹상에서 입력한 id값
			pstmt.setString(2,p_passwd);
			rs=pstmt.executeQuery();
			check=rs.next();// 찾았으면 check=true or false
		}catch(Exception e) {
			System.out.println("today lunch login DAO() 메서드 실행오류=>"+e);
		}finally {//메모리해제
			pool.freeConnection(con, pstmt, rs);
		}
		return check;
	}
	
	//checkId
	public boolean checkId(String p_id) { 
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		boolean check=false;
		String sql="";
		
		try {
			con=pool.getConnection();
			sql="select  p_id from person where p_id=?";
			pstmt=con.prepareStatement(sql);  
			pstmt.setString(1, p_id);
			rs=pstmt.executeQuery();
			check=rs.next(); 
		}catch(Exception  e) {
			System.out.println("today lunch checkId DAO() 실행 중 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return check;
	}	
	
	//회원수정 정보 출력
	public MemberDTO getMember(String p_id) {
		
		Connection con=null;
		PreparedStatement pstmt=null;//
		ResultSet rs=null;
		MemberDTO mem=null;
		String sql="";
		
		try {
			con=pool.getConnection();
			sql="select * from person where p_id=?";
			pstmt=con.prepareStatement(sql);  
			pstmt.setString(1,p_id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				mem=new MemberDTO();
				mem.setP_id(rs.getString("p_id"));
				mem.setP_passwd(rs.getString("p_passwd"));
				mem.setP_email(rs.getString("p_email"));
				mem.setP_name(rs.getString("p_name"));
				mem.setP_check(rs.getBoolean("p_check"));
				mem.setP_siknum(rs.getString("p_siknum"));
				
			}
		}catch(Exception  e) {
			System.out.println("today lunch의 getMember DAO() 실행 중 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return mem;
	}

	//회원수정
	public boolean personUpdate(MemberDTO mem) {
		
		System.out.println("mem.getP_id()=>"+mem.getP_id());
		Connection con=null;
		PreparedStatement pstmt=null;
		boolean check=false;//회원수정 성공유무
		String sql="";
		
		try {
			con=pool.getConnection();
			//트랜잭션처리 시작구문
			con.setAutoCommit(false);
			
			sql="update person set p_passwd=?, p_name=?, p_email=?,"
					+ "p_siknum=?  where p_id=?";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mem.getP_passwd());
			pstmt.setString(2, mem.getP_name());
			pstmt.setString(3, mem.getP_email());
			pstmt.setString(4, mem.getP_siknum());
			pstmt.setString(5, mem.getP_id());
			
			int update=pstmt.executeUpdate();
			con.commit();
			System.out.println("회원수정 성공유무(personUpdate)=>"+update);
			if(update == 1) {
				check=true; //수정성공
			}
		}catch(Exception e) {
			System.out.println("personUpdate  DAO() 실행 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt);
		}
		return check; //true or false
	}

//회원 탈퇴

	public int deletePerson(String p_id, String p_passwd) {
		//1.DB연결
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int p=-1;//암호를 체크하기위한 변수(성공->1, 실패->0)
		String dbpasswd="";//id값에 해당하는 DB의 암호값저장
		String sql="";
		
		//2.메서드 목적에 맞는 SQL구문
		try {
			con=pool.getConnection();
			con.setAutoCommit(false);
			sql="select p_passwd from person where p_id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, p_id);//웹상에서 입력한 id값
			rs=pstmt.executeQuery();
			//id값에 대한 DB에 저장된 암호를 찾았다면
			if(rs.next()) {
				dbpasswd=rs.getString("p_passwd");
				System.out.println("dbpasswd=>"+dbpasswd);
				//db상의 암호==웹상에 입력한 암호
				if(dbpasswd.equals(p_passwd)) {
				   	pstmt=con.prepareStatement("delete from person where p_id=?");
				   	pstmt.setString(1, p_id);
				   	int delete=pstmt.executeUpdate();
				   	pstmt=con.prepareStatement("delete from login where id=?");
				   	pstmt.setString(1, p_id);
				   	int delete2=pstmt.executeUpdate();
				   	con.commit();
				   	System.out.println("MemberDAO의deleteperson()2 성공유무=>"+delete2);
				   	p=1;
				}else {
					p=0;
					System.out.println("MemberDAO의 deletePerson에 암호 오류");
				}
			}//else { x=-1 } 데이터를 못 찾은 경우
		}catch(Exception e) {
			System.out.println("MemberDAO deletePerson() 메서드 실행오류=>"+e);
		}finally {//메모리해제
			pool.freeConnection(con, pstmt, rs);
		}
		return p;
	}
}


	