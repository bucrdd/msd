package beans;

public class Gtgene {

  protected String type;
  protected String hm;
  protected String geneName;
  protected String tf;
  protected String drug;
  protected String option;
  protected String gse;
  protected String chr;
  protected String start;
  protected String end;

  public Gtgene() {
    super();
  }

  public Gtgene(String type, String hm, String geneName, String tf, String drug, String chr, String start, String end,
      String option) {
    this.type = type;
    this.hm = hm;
    this.geneName = geneName;
    this.tf = tf;
    this.drug = drug;
    this.option = option;
    this.chr = chr;
    this.start = start;
    this.end = end;
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

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getHm() {
    return hm;
  }

  public void setHm(String hm) {
    this.hm = hm;
  }

  public String getGeneName() {
    return geneName;
  }

  public void setGeneName(String geneName) {
    this.geneName = geneName;
  }

  public String getTf() {
    return tf;
  }

  public void setTf(String tf) {
    this.tf = tf;
  }

  public String getDrug() {
    return drug;
  }

  public void setDrug(String drug) {
    this.drug = drug;
  }

  public String getOption() {
    return option;
  }

  public void setOption(String option) {
    this.option = option;
  }

  public String getGse() {
    return gse;
  }

  public void setGse(String gse) {
    this.gse = gse;
  }
}
