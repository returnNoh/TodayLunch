package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DBConnect.DBConnectionMgr;
import beans.*;

public class ReviewDAO {

	private DBConnectionMgr pool;

	public ReviewDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool");

		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
