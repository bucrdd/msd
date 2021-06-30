package beans;

public class Gtmir {

  protected int Pmid;
  protected String gene;
  protected String microRNA_name;
  protected String SNP_ID;
  protected String disease;
  protected String type;
  protected String allele;
  protected String method;
  protected String microRNA_effection;
  protected String description;

  public Gtmir(int Pmid, String gene, String microRNAname, String SNPID, String disease, String type, String allele,
      String method, String microRnaAffection, String description) {
    super();
    this.Pmid = Pmid;
    this.gene = gene;
    microRNA_name = microRNAname;
    SNP_ID = SNPID;
    this.disease = disease;
    this.type = type;
    this.allele = allele;
    this.method = method;
    microRNA_effection =  microRnaAffection;
    this.description = description;
  }

  public Gtmir() {
    super();
  }

  public int getPmid() {
    return Pmid;
  }

  public void setPmid(int pMID) {
    Pmid = pMID;
  }

  public String getGene() {
    return gene;
  }

  public void setGene(String gene) {
    this.gene = gene;
  }

  public String getMicroRNA_name() {
    return microRNA_name;
  }

  public void setMicroRNA_name(String microRNAName) {
    microRNA_name = microRNAName;
  }

  public String getSNP_ID() {
    return SNP_ID;
  }

  public void setSNP_ID(String sNPID) {
    SNP_ID = sNPID;
  }

  public String getDisease() {
    return disease;
  }

  public void setDisease(String disease) {
    this.disease = disease;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getAllele() {
    return allele;
  }

  public void setAllele(String allele) {
    this.allele = allele;
  }

  public String getMethod() {
    return method;
  }

  public void setMethod(String method) {
    this.method = method;
  }

  public String getMicroRNA_effection() {
    return microRNA_effection;
  }

  public void setMicroRNA_effection(String microRNAEffection) {
    microRNA_effection = microRNAEffection;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


}
