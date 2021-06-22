package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class dbcon {

	private Connection conn = null;

	public dbcon(String dbName,String userId,String userPw) {
		try {
			Class.forName("org.gjt.mm.mysql.Driver").newInstance();
			this.conn = DriverManager.getConnection("jdbc:mysql://localhost/"+dbName, userId, userPw);
		} catch (Exception e) {
			System.out.println("connection error" + e.getMessage());
		}
	}
	
	
	public dbcon(){
		try {
			Class.forName("org.gjt.mm.mysql.Driver").newInstance();
			this.conn = DriverManager.getConnection("jdbc:mysql://localhost/m6add", "root", "wgzg6136");
		} catch (Exception e) {
			System.out.println("connection error" + e.getMessage());
		}
	}
	
	public Connection getCon() {
		return this.conn;
	}

	public void closeCon() {
		try {
			conn.close();
		} catch (Exception end) {
			System.err.println("error:" + end.getMessage());
			System.out.print("error" + end.getMessage());
		}
	}
	
	public Statement getStat(){
		try {
			return this.conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

}
