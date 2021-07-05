package action;

import beans.Gtgene2;
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

public class Gtgene2Action implements Action {

  private static final Logger log = LogManager.getLogger(Gtgene2Action.class);

  private String gtgene2;
  private String hm;
  private String type;
  private String chr;
  private String start;
  private String end;
  private String diff_method;
  private String go;
  private String kegg;

  public String execute() throws Exception {
    ArrayList<Gtgene2> gtgene2_total = new ArrayList<Gtgene2>();

    log.debug("gtgene2={}, hm={}, type={}, chr={}, kegg={}, go={}, start={}, end={}, diff_method={}",
        gtgene2, hm, type, chr, kegg, go, start, end, diff_method);

    if (StringUtils.isBlank(gtgene2) && StringUtils.isBlank(chr)) {
      log.warn("ERROR with gtgene2={} and chr={}", gtgene2, chr);
      return ERROR;
    }

    if (StringUtils.isBlank(hm) || StringUtils.isBlank(type)) {
      log.warn("ERROR with hm={} and type={}", hm, type);
      return ERROR;
    }

    String tableName = hm.trim().toLowerCase() + "_" + type.trim().toLowerCase() + "_nt";
//    String queryTableSql = "SELECT table_name FROM information_schema.TABLES WHERE table_name=?";

    StringBuilder sqlBuilder = new StringBuilder().append("SELECT * FROM `").append(tableName).append("` WHERE 1=1")
        .append(" AND genename LIKE '%").append(gtgene2).append("%'")
        .append(" AND chr LIKE '%").append(chr).append("%'");

    if (StringUtils.isNotBlank(start)) {
      sqlBuilder.append(" AND start>='").append(start).append("'");
    }
    if (StringUtils.isNotBlank(end)) {
      sqlBuilder.append(" AND end<='").append(end).append("'");
    }
    if (StringUtils.isNotBlank(go)) {
      for (String s : go.split(",")) {
        sqlBuilder.append(" AND FIND_IN_SET('").append(s).append("', function_GO");
      }
    }
    if (StringUtils.isNotBlank(kegg)) {
      for (String s : kegg.split(",")) {
        sqlBuilder.append(" AND FIND_IN_SET('").append(s).append("', function_kegg");
      }
    }
    log.info("Query for \"{}\"", sqlBuilder);
    try (Connection conn = DbCon.getConnection()) {
      try (Statement st = conn.createStatement()) {
        try (ResultSet rs = st.executeQuery(sqlBuilder.toString())) {
          while (rs.next()) {
            Gtgene2 gtgene2 = new Gtgene2();
            gtgene2.setType(rs.getString(1));
            gtgene2.setHm(rs.getString(2));
            gtgene2.setGeneName(rs.getString(3));
            gtgene2.setTf(rs.getString(4));
            gtgene2.setDrug(rs.getString(5));
            gtgene2.setGse(rs.getString(6));
            gtgene2.setChr(rs.getString(7));
            gtgene2.setStart(rs.getString(8));
            gtgene2.setEnd(rs.getString(9));
            gtgene2.setOption(rs.getString(10));
            gtgene2_total.add(gtgene2);
          }
        }
      }
    } catch (SQLException e) {
      log.error(e);
      return ERROR;
    }
      Map<String, ArrayList<Gtgene2>> request = (Map) ActionContext.getContext().get("request");
      request.put("gtgene2_total", gtgene2_total);
      return SUCCESS;
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

  public String getDiff_method() {
    return diff_method;
  }

  public void setDiff_method(String diffMethod) {
    diff_method = diffMethod;
  }

  public String getGo() {
    return go;
  }

  public void setGo(String go) {
    this.go = go;
  }

  public String getKegg() {
    return kegg;
  }

  public void setKegg(String kegg) {
    this.kegg = kegg;
  }

  public String getGtgene2() {
    return gtgene2;
  }

  public void setGtgene2(String gtgene2) {
    this.gtgene2 = gtgene2;
  }
}
