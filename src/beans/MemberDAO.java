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
	public boolean login(String P_id,String P_passwd) {
		//DB
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		boolean check=false;
		String sql="";
		
		try {
			con=pool.getConnection();
			System.out.println("con=>"+con);
			sql="select P_id,P_passwd from person where P_id=? and P_passwd=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,P_id);//웹상에서 입력한 id값
			pstmt.setString(2,P_passwd);
			rs=pstmt.executeQuery();
			check=rs.next();// 찾았으면 check=true or false
		}catch(Exception e) {
			System.out.println("today lunch login() 메서드 실행오류=>"+e);
		}finally {//메모리해제
			pool.freeConnection(con, pstmt, rs);
		}
		return check;
	}
	// 회원가입
	//checkID(개인회원 중복아이디체크)
	public boolean checkID(String P_id) { 
		//DB연결하는 코딩
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		boolean check=false;
		String sql="";
		
		try {
			con=pool.getConnection();
			sql="select  P_id from person where P_id=?";
			pstmt=con.prepareStatement(sql);  
			pstmt.setString(1, P_id);
			rs=pstmt.executeQuery();
			check=rs.next();  //데이터 있으면 true,없으면 false
		}catch(Exception  e) {
			System.out.println("today lunch checkId() 실행 중 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt, rs); //DB연결해제
		}
		return check;
	}
	
	//식당회원
	//checkID2(식당회원 중복아이디체크)
		public boolean checkID2(String R_id) { 
			//DB연결하는 코딩
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			boolean check=false;
			String sql="";
			
			try {
				con=pool.getConnection();
				sql="select  R_id from rest where R_id=?";
				pstmt=con.prepareStatement(sql);  
				pstmt.setString(1, R_id);
				rs=pstmt.executeQuery();
				check=rs.next();  //데이터 있으면 true,없으면 false
			}catch(Exception  e) {
				System.out.println("today lunch checkId() 실행 중 에러유발=>"+e);
			}finally {
				pool.freeConnection(con, pstmt, rs); //DB연결해제
			}
			return check;
		}	
	
	
	//회원수정 정보 출력
	public MemberDTO getMember(String P_id) {
		
		Connection con=null;
		PreparedStatement pstmt=null;//
		ResultSet rs=null;
		MemberDTO mem=null;
		String sql="";
		
		try {
			con=pool.getConnection();
			sql="select * from person where P_id=?";
			pstmt=con.prepareStatement(sql);  
			pstmt.setString(1,P_id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				mem=new MemberDTO();
				mem.setP_id(rs.getString("P_id"));
				mem.setP_passwd(rs.getString("P_passwd"));
				mem.setP_email(rs.getString("P_email"));
				mem.setP_name(rs.getString("P_name"));
				mem.setP_check(rs.getInt("P_check"));
				mem.setP_siknum(rs.getString("P_siknum"));
				
			}
		}catch(Exception  e) {
			System.out.println("today lunch의 getMember() 실행 중 에러유발=>"+e);
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
			
			sql="update person set P_passwd=?, P_name=?, P_email=?,"
					+ "P_siknum=?  where P_id=?";
			
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
			System.out.println("memberUpdate() 실행 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt);
		}
		return check; //true or false
	}
	
	//4)개인 회원가입 시켜주는 메서드?
		//insert into member values(?,?,?,?,?,?,?,?)->executeUpdate
		//DTO->1.테이블의 필드별로 저장,출력 2.메서드의 매개변수와 반환형으로 사용
		public  boolean   memberInsert(MemberDTO mem) {
			
			Connection con=null;
			PreparedStatement pstmt=null;
			//ResultSet rs=null ->insert이기때문
			boolean check=false;//회원가입 성공유무
			String sql="";//sql구문 저장
			
			try {
				con=pool.getConnection();
				//트랜잭션처리 시작구문
				con.setAutoCommit(false);
				//-----입력을 받을때는 DTO->각각의 필드에 값을 저장->Getter Method
				System.out.println("memberInsert mem.getP_id:"+mem.getP_id());
				if(mem.getP_id()!=null) {
				sql="insert into person values(?,?,?,?,0,?)";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, mem.getP_id());
				pstmt.setString(2, mem.getP_passwd());
				pstmt.setString(3, mem.getP_email());
				pstmt.setString(4, mem.getP_name());
				pstmt.setString(5, mem.getP_siknum());
				
				System.out.println("mem.getP_id()! 오류");
				}
				
				int insert=pstmt.executeUpdate();//1->성공, 0->실패->메모리상 저장
				//메모리상에 저장된 값이=>실제 테이블에 저장(동기화)
				con.commit();
				System.out.println("회원가입 성공유무(insert)=>"+insert);
				if(insert > 0) {
					check=true;
				}
			}catch(Exception e) {
				System.out.println("lunch(DAO).memberInsert() 실행 에러유발=>"+e);
			}finally {
				pool.freeConnection(con, pstmt);
			}
			return check;
		}
	
	
	//4)식당 회원가입 시켜주는 메서드?
	//insert into member values(?,?,?,?,?,?,?,?)->executeUpdate
	//DTO->1.테이블의 필드별로 저장,출력 2.메서드의 매개변수와 반환형으로 사용
	public  boolean   memberInsert2(MemberDTO mem) {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		//ResultSet rs=null ->insert이기때문
		boolean check=false;//회원가입 성공유무
		String sql="";//sql구문 저장
		
		try {
			con=pool.getConnection();
			//트랜잭션처리 시작구문
			con.setAutoCommit(false);
			//-----입력을 받을때는 DTO->각각의 필드에 값을 저장->Getter Method
			System.out.println("memberInsert2 mem.getR_id:"+mem.getR_id());
			if(mem.getR_id()!=null) {
			sql="insert into rest values(?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mem.getR_id());
			pstmt.setString(2, mem.getR_passwd());
			pstmt.setString(3, mem.getR_email());
			pstmt.setString(4, mem.getR_phone());
			
			System.out.println("mem.getR_id()! 오류");
			}

			int insert=pstmt.executeUpdate();//1->성공, 0->실패->메모리상 저장
			//메모리상에 저장된 값이=>실제 테이블에 저장(동기화)
			con.commit();
			System.out.println("회원가입 성공유무(insert)=>"+insert);
			if(insert > 0) {
				check=true;
			}
		}catch(Exception e) {
			System.out.println("lunch(DAO).memberInsert2() 실행 에러유발=>"+e);
		}finally {
			pool.freeConnection(con, pstmt);
		}
		return check;
	}
	
}


	