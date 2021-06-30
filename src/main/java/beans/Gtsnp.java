package beans;

public class Gtsnp {

  protected int PMID;
  protected String gene;
  protected String microRNA_name;
  protected String SNP_ID;
  protected String disease;
  protected String type;
  protected String allele;
  protected String method;
  protected String microRnaAffection;
  protected String description;

  public Gtsnp(int PMID, String gene, String microRNAname, String SNPID, String disease, String type, String allele,
      String method, String microRNAeffection, String description) {
    super();
    this.PMID = PMID;
    this.gene = gene;
    microRNA_name = microRNAname;
    SNP_ID = SNPID;
    this.disease = disease;
    this.type = type;
    this.allele = allele;
    this.method = method;
    microRnaAffection = microRNAeffection;
    this.description = description;
  }

  public Gtsnp() {
    super();
  }

  public int getPMID() {
    return PMID;
  }

  public void setPMID(int pMID) {
    PMID = pMID;
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

  public String getMicroRnaAffection() {
    return microRnaAffection;
  }

  public void setMicroRnaAffection(String microRnaAffection) {
    this.microRnaAffection = microRnaAffection;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


}
