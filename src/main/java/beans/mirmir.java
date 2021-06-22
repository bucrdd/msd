package beans;

public class mirmir {
	private int PMID;
	private String gene;
	private String microRNA_name;
	private String SNP_ID;
	private String disease;
	private String type;
	private String allele;
	private String method;
	private String microRNA_effection;
	private String discription;
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
	public String getMicroRNA_effection() {
		return microRNA_effection;
	}
	public void setMicroRNA_effection(String microRNAEffection) {
		microRNA_effection = microRNAEffection;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public mirmir(int PMID, String gene, String microRNAname ,String SNPID,String disease,String type,String allele,String method,String microRNAeffection ,String discription ){
	super();
	this.PMID = PMID;
	this.gene = gene;
	microRNA_name=microRNAname;
	SNP_ID=SNPID;
	this.disease = disease;
	this.type = type;
	this.allele = allele;
	this.method = method;
	microRNA_effection = microRNAeffection;
	this.discription = discription;
	}
	public mirmir(){
		super();
		//TODO Auto-generated constructor stub
	}
	
	
	
}
