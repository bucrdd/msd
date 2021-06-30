package beans;

public class Gtgene2 extends Gtgene {

  private String go;
  private String kegg;

  public Gtgene2() {
    super();
  }

  public Gtgene2(String type, String hm, String geneName, String tf, String drug, String chr, String start, String end,
      String option) {
    super(type, hm, geneName, tf, drug, chr, start, end, option);
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
}
