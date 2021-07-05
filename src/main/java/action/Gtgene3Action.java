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
import org.apache.commons.collections4.CollectionUtils;
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

  public String execute() throws Exception {
    ArrayList<Gtgene> gtgene3_total = new ArrayList<>();

    log.debug("gtgene3={}, hm={}, type={}, chr={}, start={}, end={}, diff_method={}",
        gtgene3, hm, type, chr, start, end, diff_method);

    diff_method = "Disease";

    if (StringUtils.isBlank(gtgene3) && StringUtils.isBlank(chr)) {
      log.warn("ERROR with gtgene3={} and chr={}", gtgene3, chr);
      return ERROR;
    }

    if (StringUtils.isBlank(hm) || StringUtils.isBlank(type)) {
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
    try (Connection conn = DbCon.getConnection()) {
      try (Statement st = conn.createStatement()) {
        try (ResultSet rs = st.executeQuery(sqlBuilder.toString())) {
          while (rs.next()) {
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
            gtgene3_total.add(gtgene);
          }
        }
      }
    } catch (SQLException e) {
      log.error("查询失败", e);
      return ERROR;
    }
    if (CollectionUtils.isNotEmpty(gtgene3_total)) {
      Map<String, ArrayList<Gtgene>> request = (Map) ActionContext.getContext().get("request");
      request.put("gtgene3_total", gtgene3_total);
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
}
