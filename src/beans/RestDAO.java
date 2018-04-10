package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DBConnect.DBConnectionMgr;
import beans.*;

public class RestDAO {

    private DBConnectionMgr pool;

    public RestDAO() {
        try {
            pool = DBConnectionMgr.getInstance();
            System.out.println("pool");

        } catch (Exception e) {
            System.out.println("DB연결 실패>" + e);
        }
    }
    
    public String getR_id(String delete_r) {
    	Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String r_id = null;
        String sql = "";

        try {
            con = pool.getConnection();
            System.out.println("con>" + con);
            sql = "select r_id from rest_info where r_name=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, delete_r);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                r_id=rs.getString("r_id");
                System.out.println("getR_id r_nid>"+r_id);
            }
            
        } catch (Exception e) {
            System.out.println("getR_id 실패>" + e);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return r_id;
	}
    
    public String getR_name(String r_id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String r_name = null;
        String sql = "";

        try {
            con = pool.getConnection();
            System.out.println("con>" + con);
            sql = "select r_name from rest_info where r_id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, r_id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                r_name=rs.getString("r_name");
                System.out.println("getR_name r_name>"+r_name);
            }
            
        } catch (Exception e) {
            System.out.println("getR_name 실패>" + e);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return r_name;
    }

    public RestDTO getRest(String r_id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        RestDTO rest = null;
        String sql = "";

        try {
            con = pool.getConnection();
            System.out.println("con>" + con);
            sql = "select * from rest where r_id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, r_id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                rest=new RestDTO();
                rest.setR_id(rs.getString("r_id"));
                rest.setR_passwd(rs.getString("r_passwd"));
                rest.setR_email(rs.getString("r_email"));
                rest.setR_phone(rs.getString("r_phone"));
                System.out.println("getRest r_id>"+rest.getR_id());
            }
            
        } catch (Exception e) {
            System.out.println("getRest 실패>" + e);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return rest;
    }

    public Rest_infoDTO getRest_Info(String r_id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Rest_infoDTO rest_info = null;
        String sql = "";

        try {
            con = pool.getConnection();
            System.out.println("con>" + con);
            sql = "select * from rest_info where r_id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, r_id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                rest_info=new Rest_infoDTO();
                rest_info.setR_id(rs.getString("r_id"));
                rest_info.setR_wi(rs.getDouble("r_wi"));
                rest_info.setR_gy(rs.getDouble("r_gy"));
                rest_info.setR_add(rs.getString("r_add"));
                rest_info.setR_name(rs.getString("r_name"));
                rest_info.setR_info(rs.getString("r_info"));
                System.out.println("getRest_Info r_id>"+rest_info.getR_id());
            }
        } catch (Exception e) {
            System.out.println("getRest_Info 실패>" + e);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return rest_info;
    }

    public boolean updateRest(RestDTO rest, Rest_infoDTO rest_info) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean check = false;
        String sql = "";
        try {
          con = pool.getConnection();
          System.out.println("con>" + con);
          con.setAutoCommit(false);
          sql = "update rest set r_passwd=?, r_email=?, r_phone=?";
          pstmt = con.prepareStatement(sql);
          //pstmt.setString(1, rest.getR_id());
          pstmt.setString(1, rest.getR_passwd());
          pstmt.setString(2, rest.getR_email());
          pstmt.setString(3, rest.getR_phone());
          int update_rest = pstmt.executeUpdate();
          System.out.println("updateRest-rest >" + update_rest);
          
          sql = "update rest_info set r_wi=?, r_gy=?, r_add=?, "+
                  "r_name=?, r_info=?";
          pstmt = con.prepareStatement(sql);
          //pstmt.setString(1, rest_info.getR_id());
          pstmt.setDouble(1, rest_info.getR_wi());
          pstmt.setDouble(2, rest_info.getR_gy());
          pstmt.setString(3, rest_info.getR_add());
          pstmt.setString(4, rest_info.getR_name());
          pstmt.setString(5, rest_info.getR_info());
          int update_rest_info = pstmt.executeUpdate();
          System.out.println("updateRest-rest_info >" + update_rest_info);
          con.commit();
          if (update_rest+update_rest_info >= 2){
            check = true;
          }
        } catch (Exception e) {
          System.out.println("updateRest error> " + e);
        } finally {
          pool.freeConnection(con, pstmt);
        }
        return check;
    }

	

}
