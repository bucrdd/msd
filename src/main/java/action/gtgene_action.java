package action;

import com.opensymphony.xwork2.Action;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.ServletActionContext;

public class gtgene_action implements Action {

  private static final Logger log = LogManager.getLogger(gtgene_action.class);

  private String fileName;
  private ArrayList<String> diseasetheName;
  private ArrayList<String> normaltheName;
  private ArrayList<String> diseaseCelltheName;
  private ArrayList<String> normalCelltheName;

  public String execute() throws Exception {
    if (parameterNumber() != 2) {
      return ERROR;
    }
    final List<String> params = getFilenameParameters();
    if (params.size() != 2 || params.get(0).equals(params.get(1))) {
      return ERROR;
    }
    this.fileName = params.get(0) + "_vs_" + params.get(1) + "_db.zip";
    try {
      getDownloadFile();
    } catch (Exception e) {
      return ERROR;
    }
    return SUCCESS;
  }

  private int parameterNumber() {
    return CollectionUtils.size(diseasetheName) + CollectionUtils.size(normaltheName)
        + CollectionUtils.size(diseaseCelltheName) + CollectionUtils.size(normalCelltheName);
  }

  private List<String> getFilenameParameters() {
    ArrayList<String> result = new ArrayList<>();
    if (diseasetheName != null) {
      result.addAll(diseasetheName);
      log.debug("Add {} parameter(s) from \"{}\": {}",
          diseasetheName.size(), "diseasetheName", diseasetheName);
    }
    if (normaltheName != null) {
      result.addAll(normaltheName);
      log.debug("Add {} parameter(s) from \"{}\": {}",
          normaltheName.size(), "normaltheName", normaltheName);
    }
    if (diseasetheName != null) {
      result.addAll(diseaseCelltheName);
      log.debug("Add {} parameter(s) from \"{}\": {}",
          diseaseCelltheName.size(), "diseaseCelltheName", diseaseCelltheName);
    }
    if (normalCelltheName != null) {
      result.addAll(normalCelltheName);
      log.debug("Add {} parameter(s) from \"{}\": {}",
          normalCelltheName.size(), "normalCelltheName", normalCelltheName);
    }
    return result;
  }

  public InputStream getDownloadFile() throws IllegalArgumentException {
    String filenamePath = "/download/DiffBind/" + fileName;
    log.debug(filenamePath);
    final InputStream resourceAsStream = ServletActionContext.getServletContext().getResourceAsStream(filenamePath);
    if (resourceAsStream == null) {
      throw new IllegalArgumentException(fileName + " is not exist!");
    }
    return resourceAsStream;
  }

  public ArrayList<String> getDiseasetheName() {
    return diseasetheName;
  }

  public void setDiseasetheName(ArrayList<String> diseasetheName) {
    this.diseasetheName = diseasetheName;
  }

  public ArrayList<String> getNormaltheName() {
    return normaltheName;
  }

  public void setNormaltheName(ArrayList<String> normaltheName) {
    this.normaltheName = normaltheName;
  }

  public ArrayList<String> getDiseaseCelltheName() {
    return diseaseCelltheName;
  }

  public void setDiseaseCelltheName(ArrayList<String> diseaseCelltheName) {
    this.diseaseCelltheName = diseaseCelltheName;
  }

  public ArrayList<String> getNormalCelltheName() {
    return normalCelltheName;
  }

  public void setNormalCelltheName(ArrayList<String> normalCelltheName) {
    this.normalCelltheName = normalCelltheName;
  }

  public String getFileName() {
    return fileName;
  }

  public void setFileName(String fileName) {
    this.fileName = fileName;
  }
}
