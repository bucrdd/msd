package action;

import beans.gtgene3;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLSyntaxErrorException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import util.DbCon;

public class Gtgene3Action implements Action {

  private static final Logger log = LogManager.getLogger(Gtgene3Action.class);

  private String gtgene3;
  private String hm;
  private String type;
  private String chr;
  private String start;
  private String end;
  private String diff_method;

  /*private String protein;
  private String disease;
  private String organ;*/
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

  public String getDiff_method() {
    return diff_method;
  }

  public void setDiff_method(String diffMethod) {
    diff_method = diffMethod;
  }

  public String getGtgene3() {
    return gtgene3;
  }

  public void setGtgene3(String gtgene3) {
    this.gtgene3 = gtgene3;
  }

  public String execute() throws Exception {
    ArrayList<gtgene3> gtgene3_List = new ArrayList<>();
    ArrayList<gtgene3> gtgene3_total = new ArrayList<>();

    diff_method = "Disease";
    log.debug("gtgene3={}, hm={}, type={}, chr={}, start={}, end={}, diff_method={}",
        gtgene3, hm, type, chr, start, end, diff_method);

    if (StringUtils.isEmpty(gtgene3) && StringUtils.isEmpty(chr)) {
      log.warn("ERROR with gtgene3={} and chr={}", gtgene3, chr);
      return ERROR;
    }

    if (StringUtils.isEmpty(hm) && StringUtils.isEmpty(type)) {
      log.warn("ERROR with hm={} and type={}", hm, type);
      return ERROR;
    }

    String tableName = hm.trim().toLowerCase() + "_" + type.trim().toLowerCase() + "_nt";
    String queryTableSql = "SELECT table_name FROM information_schema.TABLES WHERE table_name=?";

    StringBuilder sqlBuilder = new StringBuilder().append("SELECT * FROM `").append(tableName).append("` WHERE 1=1");
    if (StringUtils.isNotBlank(gtgene3)) {
      sqlBuilder.append(" AND genename LIKE '%").append(gtgene3).append("%'");
    }
    if (StringUtils.isNotBlank(chr)) {
      sqlBuilder.append(" AND chr LIKE '%").append(chr).append("%'");
    }
    if (StringUtils.isNotBlank(start)) {
      sqlBuilder.append(" AND start>='").append(start).append("'");
    }
    if (StringUtils.isNotBlank(end)) {
      sqlBuilder.append(" AND end<='").append(end).append("'");
    }
    log.info("Query for \"{}\"", sqlBuilder);
    System.out.println(sqlBuilder);
    try (Connection conn = DbCon.getConnection()) {
      try (Statement st = conn.createStatement()) {
        try (final ResultSet rs = st.executeQuery(sqlBuilder.toString())) {
          while (rs.next()) {
            gtgene3 gtgene3 = new gtgene3();
            gtgene3.setType(rs.getString(1));
            gtgene3.setHm(rs.getString(2));
            gtgene3.setGenename(rs.getString(3));
            gtgene3.setChr(rs.getString(4));
            gtgene3.setStart(rs.getString(5));
            gtgene3.setEnd(rs.getString(6));
            gtgene3.setTf(rs.getString(13));
            gtgene3.setTdrug(rs.getString(12));
            gtgene3.setGse(rs.getString(16));
            gtgene3.setOption(rs.getString(17));
            gtgene3_total.add(gtgene3);
          }
        }
      }
    } catch (Exception e) {
      log.error(e);
      return ERROR;
    }
    Map<String, ArrayList<gtgene3>> request = (Map) ActionContext.getContext().get("request");
    request.put("gtgene3_List", gtgene3_List);
    request.put("gtgene3_total", gtgene3_total);
    return SUCCESS;
  }
}
