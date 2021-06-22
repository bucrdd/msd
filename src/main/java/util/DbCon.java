package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class DbCon {

  private Connection conn = null;

  private static final Logger log = LogManager.getLogger(DbCon.class);

  private static final String MYSQL_DRIVER ="com.mysql.cj.jdbc.Driver";
  private static final String DB_NAME = "m6add";
  private static final String URL = "jdbc:mysql://localhost/" + DB_NAME;
  private static final String USERNAME = "root";
  private static final String PASSWD = "joe_jok5231";


   static {
     try {
       Class.forName(MYSQL_DRIVER);
     } catch (ClassNotFoundException e) {
       log.error("Cannot register Driver \"{}\"\n{}", MYSQL_DRIVER, Arrays.toString(e.getStackTrace()));
     }
   }

  public DbCon(String dbName, String userId, String userPw) {
    try {
      Class.forName("org.gjt.mm.mysql.Driver");
      this.conn = DriverManager.getConnection("jdbc:mysql://localhost/" + dbName, userId, userPw);
    } catch (Exception e) {
      System.out.println("connection error" + e.getMessage());
    }
  }

  public static Connection getConnection() throws SQLException {
    return DriverManager.getConnection(URL, USERNAME, PASSWD);
  }


  public DbCon() {
    try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
      this.conn = DriverManager.getConnection("jdbc:mysql://localhost/m6add", "root", "joe_jok5231");
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

  public Statement getStat() {
    try {
      return this.conn.createStatement();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
      return null;
    }
  }

}
