package action;

import beans.Gtgene5;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import util.DbCon;

public class gtgene5_action implements Action {

  private static final Logger log = LogManager.getLogger(gtgene5_action.class);

  private String gtgene5;
  private String hm;
  private String type;
  private String chr;
  private String start;
  private String end;
  private String diff_method;

  public String execute() throws Exception {
    ArrayList<Gtgene5> gtgene5_total = new ArrayList<>();

    log.debug("gtgene5={}, hm={}, type={}, chr={}, start={}, end={}, diff_method={}",
        gtgene5, hm, type, chr, start, end, diff_method);

    diff_method = "CellLine";

    if (StringUtils.isBlank(gtgene5) && StringUtils.isBlank(chr)) {
      log.warn("ERROR with gtgene3={} and chr={}", gtgene5, chr);
      return ERROR;
    }
    if (StringUtils.isBlank(hm) || StringUtils.isBlank(type)) {
      log.warn("ERROR with hm={} and type={}", hm, type);
      return ERROR;
    }

    String tableName = hm.trim().toLowerCase() + "_" + type + "_cl";
    String queryTableSql = "SELECT table_name FROM information_schema.TABLES WHERE table_name = `" + tableName + "`";

    StringBuilder sqlBuilder = new StringBuilder().append("SELECT * FROM `").append(tableName).append("` WHERE 1=1");
    if (StringUtils.isNotBlank(gtgene5)) {
      sqlBuilder.append(" AND genename LIKE '%").append(gtgene5).append("%'");
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
    log.info("Query for \"{}\"", sqlBuilder);
    try (Connection conn = DbCon.getConnection()) {
      try (Statement st = conn.createStatement()) {
        try (ResultSet rs = st.executeQuery(sqlBuilder.toString())) {
          while (rs.next()) {
            Gtgene5 gtgene5 = new Gtgene5();
            gtgene5.setType(rs.getString(1));
            gtgene5.setHm(rs.getString(2));
            gtgene5.setGeneName(rs.getString(3));
            gtgene5.setChr(rs.getString(4));
            gtgene5.setStart(rs.getString(5));
            gtgene5.setEnd(rs.getString(6));
            gtgene5.setTf(rs.getString(13));
            gtgene5.setDrug(rs.getString(12));
            gtgene5.setGse(rs.getString(16));
            gtgene5.setOption(rs.getString(17));
            gtgene5_total.add(gtgene5);
          }
        }
      }
    } catch (SQLException e) {
      log.error("查询失败", e);
      return ERROR;
    }
    if (CollectionUtils.isNotEmpty(gtgene5_total)) {
      Map<String, ArrayList<Gtgene5>> request = (Map) ActionContext.getContext().get("request");
      request.put("gtgene5_total", gtgene5_total);
      return SUCCESS;
    } else {
      log.warn("获取结果为空！");
      return ERROR;
    }
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

  public String getGtgene5() {
    return gtgene5;
  }

  public void setGtgene5(String gtgene5) {
    this.gtgene5 = gtgene5;
  }
}
