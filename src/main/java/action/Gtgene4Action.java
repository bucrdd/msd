package action;

import beans.Gtgene;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import java.sql.Connection;
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

  public String execute() throws Exception {

    log.debug("gtgene4={}, hm={}, type={}, chr={}, start={}, end={}, diff_method={}",
        gtgene4, hm, type, chr, start, end, diff_method);

    diff_method = "Normal";

    if (StringUtils.isBlank(gtgene4) && StringUtils.isBlank(chr)) {
      log.warn("ERROR with gtgene3={} and chr={}", gtgene4, chr);
      return ERROR;
    }
    if (StringUtils.isBlank(hm) || StringUtils.isBlank(type)) {
      log.warn("ERROR with hm={} and type={}", hm, type);
      return ERROR;
    }

    String table1 = "'" + hm + "_" + type.trim() + "_nt" + "'";
    String table = hm + "_" + type.trim() + "_nt";
    log.debug("table={}, table1={}", table, table1);

    DbCon dbc = new DbCon();
    Statement st = dbc.getStat();
    Statement st1 = dbc.getStat();
    ResultSet rs = null;
    ResultSet rs1 = null;
    String queryTableSql = "SELECT table_name FROM information_schema.TABLES WHERE table_name =" + table1;
    System.out.println(queryTableSql);
    rs1 = st.executeQuery(queryTableSql);
    if (rs1.next()) {
      System.out.println(queryTableSql);
    } else {
      return ERROR;
    }

    StringBuilder sqlBuilder = new StringBuilder("SELECT * FROM `").append(table).append("` WHERE 1=1");
    if (StringUtils.isNotBlank(gtgene4)) {
        sqlBuilder.append(" AND genename LIKE '%").append(gtgene4).append("%'");
    }
    if (StringUtils.isNotBlank(chr)) {
        sqlBuilder.append(" AND chr LIKE '%").append(chr).append("%'");
    }
    if (StringUtils.isNotBlank(start)) {
      sqlBuilder.append(" AND start >= '").append(start).append("'");
    }
    if (StringUtils.isNotBlank(end)) {
      sqlBuilder.append(" AND end <= '").append(end).append("'");
    }
    return getResult(st, sqlBuilder.toString());
  }

  private String getResult(Statement st, String sql) throws SQLException {
    log.debug("sql=[{}]'", sql);
    ArrayList<Gtgene> gtgene4_total = new ArrayList<>();
    int index = 0;
    ResultSet rs;
    rs = st.executeQuery(sql);
    while (rs.next()) {
      index = 1;
      Gtgene gtgene = getGtgene(rs);
      gtgene4_total.add(gtgene);
    }
    if (index == 1) {
      Map<String, ArrayList<Gtgene>> request = (Map) ActionContext.getContext().get("request");
      request.put("gtgene4_total", gtgene4_total);
      return SUCCESS;
    } else {
      return ERROR;
    }
  }

  private Gtgene getGtgene(ResultSet rs) throws SQLException {
    Gtgene gtgene = new Gtgene();
    gtgene.setType(rs.getString(1));
    gtgene.setHm(rs.getString(2));
    gtgene.setGeneName(rs.getString(3));
    gtgene.setChr(rs.getString(4));
    gtgene.setStart(rs.getString(5));
    gtgene.setEnd(rs.getString(6));
    gtgene.setTf(rs.getString(13));
    gtgene.setDrug(rs.getString(12));
    gtgene.setGse(rs.getString(16));
    gtgene.setOption(rs.getString(17));
    return gtgene;
  }

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
}
