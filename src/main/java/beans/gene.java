package beans;

public class gene {

  private String disease;

  private String geneId;
  private String tissue;
  private String pmid;
  private String title;
  private String description;

  public gene() {
    super();
  }

  public gene(String disease, String geneId, String tissue, String pmid, String title, String description) {
    super();
    this.disease = disease;

    this.geneId = geneId;
    this.tissue = tissue;
    this.pmid = pmid;
    this.title = title;
    this.description = description;
  }

  public String getDisease() {
    return disease;
  }

  public void setDisease(String disease) {
    this.disease = disease;
  }

  public String getGeneId() {
    return geneId;
  }

  public void setGeneId(String geneId) {
    this.geneId = geneId;
  }

  public String getPmid() {
    return pmid;
  }

  public void setPmid(String pmid) {
    this.pmid = pmid;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getTissue() {
    return tissue;
  }

  public void setTissue(String tissue) {
    this.tissue = tissue;
  }
}
