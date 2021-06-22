package action;

import beans.gtgene4;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import util.DbCon;

public class Gtgene4Action implements Action {

  private static final Logger log = LogManager.getLogger(Gtgene4Action.class);

  private String gtgene4;
  private String hm;
  private String type;
  private String chr;
  private String start;
  private String end;
  private String diff_method;
  private int pageNum = 1;
  private int pageSize = 10;

  /*
   * private String protein; private String disease; private String organ;
   */
  public String getHm() {
    return hm;
  }

  public void setHm(String hm) {
    this.hm = hm;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getChr() {
    return chr;
  }

  public void setChr(String chr) {
    this.chr = chr;
  }

  public String getStart() {
    return start;
  }

  public void setStart(String start) {
    this.start = start;
  }

  public String getEnd() {
    return end;
  }

  public void setEnd(String end) {
    this.end = end;
  }

  public String getDiffMethod() {
    return diff_method;
  }

  public void setDiffMethod(String diffMethod) {
    diff_method = diffMethod;
  }

  public String getGtgene4() {
    return gtgene4;
  }

  public void setGtgene4(String gtgene4) {
    this.gtgene4 = gtgene4;
  }

  public int getPageSize() {
    return pageSize;
  }

  public void setPageSize(int pageSize) {
    this.pageSize = pageSize;
  }

  public int getPageNum() {
    return pageNum;
  }

  public void setPageNum(int pageNum) {
    this.pageNum = pageNum;
  }

  public String execute() throws Exception {
    String ONE = "one";
    ArrayList<gtgene4> gtgene4_List = new ArrayList<>();
    ArrayList<gtgene4> gtgene4_total = new ArrayList<>();

    DbCon dbc = new DbCon();
    Statement st = dbc.getStat();
    Statement st1 = dbc.getStat();
    ResultSet rs = null;
    ResultSet rs1 = null;
    int index = 0;
    if (null == gtgene4) {
      gtgene4 = "";
    }
    if (null == diff_method) {
      diff_method = "";
    }
    System.out.println("gtgene4=" + gtgene4);
    System.out.println("hm=" + hm);
    System.out.println("type=" + type);
    System.out.println(chr);
    System.out.println(start);
    System.out.println(end);
    System.out.println(diff_method);
    diff_method = "Normal";
    String table;
    String table1;
    if (StringUtils.isBlank(gtgene4) && StringUtils.isBlank(chr)) {
      return ERROR;
    }
    if (StringUtils.isBlank(hm) || StringUtils.isBlank(type)) {
      return ERROR;
    }
    table1 = "'" + hm + "_" + type.trim() + "_nt" + "'";
    table = hm + "_" + type.trim() + "_nt";
    log.debug("table={}, table1={}", table, table1);

    String queryTableSql = "SELECT table_name FROM information_schema.TABLES WHERE table_name =" + table1;
    System.out.println(queryTableSql);
    rs1 = st.executeQuery(queryTableSql);
    if (rs1.next()) {
      System.out.println(queryTableSql);
    } else {
      return ERROR;
    }

    String pSql = "SELECT * FROM `" + table + "` WHERE genename LIKE '%" + gtgene4 + "%' AND chr LIKE '%" + chr + "%'";
    if (chr.equals("")) {
      if (String.valueOf(start).equals("") && String.valueOf(end).equals("")) {
        return getResult(st, pSql);
      }
      if (!"".equals(String.valueOf(start)) && String.valueOf(end).equals("")) {
        System.out.println(111);
        String sql = pSql + " AND start >= '" + start + "'";
        return getResult(st, sql);
      }
      if (String.valueOf(start).equals("") && !"".equals(String.valueOf(end))) {
        String sql = pSql + " AND end <= '" + end + "'";
        return getResult(st, sql);
      } else {
        String sql = pSql + " AND start >= '" + start + "' AND end <= '" + end + "' ";
        System.out.println(sql);
        return getResult(st, sql);
      }
    } else {
      if (String.valueOf(start).equals("") && String.valueOf(end).equals("")) {
        System.out.println(111);
        if (null == gtgene4) {
          gtgene4 = "";
        }
        gtgene4 = gtgene4.trim();
        hm = hm.toLowerCase();
        type = type.toLowerCase();

        String sql = "select * from " + table + " where genename like'%" + gtgene4 + "%' and chr ='" + chr + "'";
        System.out.println(sql);
        return getResult(st, sql);
      }

      if (!"".equals(String.valueOf(start)) && String.valueOf(end).equals("")) {
        System.out.println(111);
        String sql = "select * from " + table + " where genename like'%"
            + gtgene4 + "%' and chr ='" + chr + "' and start >= '"
            + start + "'";
        System.out.println(sql);
        return getResult(st, sql);
      }
      if (String.valueOf(start).equals("") && !"".equals(String.valueOf(end))) {

        System.out.println(111);
        String sql = "select * from " + table + "  where genename="
            + gtgene4 + " and chr= '" + chr + "' and end <= '"
            + end + "' ";
        System.out.println(sql);
        return getResult(st, sql);
      } else {
        System.out.println(111);
        String sql = "select * from " + table + "  where genename like'%"
            + gtgene4 + "%' and chr ='" + chr + "' and start >= '"
            + start + "' and end <= '"
            + end + "' ";
        System.out.println(sql);
        return getResult(st, sql);
      }
    }
  }

  private String getResult(Statement st, String sql) throws SQLException {
    log.debug( "sql=[{}]'", sql);
    ArrayList<gtgene4> gtgene4_List = new ArrayList<>();
    ArrayList<gtgene4> gtgene4_total = new ArrayList<>();
    int index = 0;
    ResultSet rs;
    rs = st.executeQuery(sql);
    while (rs.next()) {
      index = 1;
      gtgene4 gtgene4 = getGtgene4(rs);
      gtgene4_total.add(gtgene4);
    }
    if (index == 1) {
      Map<String, ArrayList<gtgene4>> request = (Map) ActionContext.getContext().get("request");
      request.put("gtgene4_List", gtgene4_List);
      request.put("gtgene4_total", gtgene4_total);
      return SUCCESS;
    } else {
      return ERROR;
    }
  }

  private gtgene4 getGtgene4(ResultSet rs) throws SQLException {
    gtgene4 gtgene4 = new gtgene4();
    gtgene4.setType(rs.getString(1));
    gtgene4.setHm(rs.getString(2));
    gtgene4.setGenename(rs.getString(3));
    gtgene4.setChr(rs.getString(4));
    gtgene4.setStart(rs.getString(5));
    gtgene4.setEnd(rs.getString(6));
    gtgene4.setTf(rs.getString(13));
    gtgene4.setTdrug(rs.getString(12));
    gtgene4.setGse(rs.getString(16));
    gtgene4.setOption(rs.getString(17));
    return gtgene4;
  }
}
