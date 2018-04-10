package beans;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import DBConnect.DBConnectionMgr;

public class MenuDAO {

    private DBConnectionMgr pool;

    public MenuDAO() {
        try {
            pool = DBConnectionMgr.getInstance();
            System.out.println("pool");

        } catch (Exception e) {
            System.out.println("DB연결 실패>" + e);
        }
    }

    public MenuDTO getMenu(String r_name, Date m_time) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MenuDTO menu = new MenuDTO();        
        String sql = "";

        try {
            con = pool.getConnection();
            System.out.println("con>" + con);
            sql = "select * from menu where r_name=? and m_time=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, r_name);
            pstmt.setDate(2, m_time);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                menu.setR_name(rs.getString("r_name"));
                menu.setM_time(rs.getDate("m_time"));
                menu.setM_content(rs.getString("m_content"));
                System.out.println("getRest m_content>" + menu.getM_content());
            }else{
                menu.setR_name(r_name);
                menu.setM_time(m_time);
                menu.setM_content("");
            }

        } catch (Exception e) {
            System.out.println("getMenu 실패>" + e);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return menu;
    }
    
    public List<MenuDTO> searchMenuList(String searchWord, Date m_time) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MenuDTO> menuList = null;
		String sql = "";

		try {
			con = pool.getConnection();
			sql = "select * from menu where (r_name like ? or m_content like ?) and m_time=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+searchWord+"%");
			pstmt.setString(2, "%"+searchWord+"%");
			pstmt.setDate(3, m_time);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				menuList = new ArrayList<MenuDTO>();
				System.out.println("searchMenuList in");
				do {
					MenuDTO menu = new MenuDTO();
					menu.setR_name(rs.getString("r_name"));
	                menu.setM_time(rs.getDate("m_time"));
	                menu.setM_content(rs.getString("m_content"));
					menuList.add(menu);
				} while (rs.next());
			}
		} catch (Exception e) {
			System.out.println("searchMenuList() 메서드 실행오류=>" + e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return menuList;
	}
    /*
    public String getMenuString(String r_name, Date m_time) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        //MenuDTO menu = null;
        String m_content="";
        String sql = "";

        try {
            con = pool.getConnection();
            System.out.println("con>" + con);
            sql = "select m_content from menu where r_name=? and m_time=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, r_name);
            pstmt.setDate(2, m_time);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                m_content=rs.getString("m_content");
                System.out.println("getMenuString m_content>" + m_content);
            }

        } catch (Exception e) {
            System.out.println("getMenuString 실패>" + e);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return m_content;
    }*/
    
    public List<MenuDTO> getAllMenu(Date m_time) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<MenuDTO> allMenu = null;        
        String sql = "";

        try {
            con = pool.getConnection();
            System.out.println("con>" + con);
            sql = "select * from menu where m_time=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setDate(1, m_time);
            rs = pstmt.executeQuery();
            rs.last();      
            int rowcount = rs.getRow();
            System.out.println("getAllMenu rowcount:"+rowcount);
            rs.beforeFirst();

            if (rs.next()) {
            	allMenu = new ArrayList<MenuDTO>();
				do {
					MenuDTO menu = new MenuDTO();
					menu.setR_name(rs.getString("r_name"));
	                menu.setM_time(rs.getDate("m_time"));
	                menu.setM_content(rs.getString("m_content"));
					allMenu.add(menu);
				} while (rs.next());
			
            }
        } catch (Exception e) {
            System.out.println("getAllMenu 실패>" + e);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return allMenu;
    }
    
    public boolean updateMenu(MenuDTO menu) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean check = false;
        String sql = "";
        int result=0;
        
        try {
            con = pool.getConnection();
            System.out.println("con>" + con);
            sql = "select * from menu where r_name=? and m_time=?";
            pstmt = con.prepareStatement(sql);
            System.out.println("updateMenu r_name:"+menu.getR_name());
            pstmt.setString(1, menu.getR_name());
            pstmt.setDate(2, menu.getM_time());
            rs = pstmt.executeQuery();
            con.setAutoCommit(false);
            if (rs.next()) {
                System.out.println("updateMenu if in");
                sql = "update menu set m_time=?, m_content=? where r_name=? and m_time=?";
                pstmt = con.prepareStatement(sql);
                //pstmt.setString(1, menu.getR_name());
                pstmt.setDate(1, menu.getM_time());
                pstmt.setString(2, menu.getM_content());
                pstmt.setString(3, menu.getR_name());
                pstmt.setDate(4, menu.getM_time());
                result = pstmt.executeUpdate();
                System.out.println("updateMenu-update :" + result);
            } else {
                System.out.println("updateMenu else in");
                sql = "insert into menu value(?, ?, ?)";
                pstmt = con.prepareStatement(sql);
                pstmt.setString(1, menu.getR_name());
                pstmt.setDate(2, menu.getM_time());
                pstmt.setString(3, menu.getM_content());
                result = pstmt.executeUpdate();
                System.out.println("updateMenu-insert :" + result);
            }
            con.commit();
            if (result >= 1) {
                check = true;
            }
        } catch (Exception e) {
            System.out.println("updateMenu error> " + e);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return check;
    }

    public ArrayList<String> splitM_content(String m_count){
    	return new ArrayList<String>(Arrays.asList(m_count.split("<br>")));
    }
}
