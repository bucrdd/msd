package beans;

public class detail2 {
	private int PMID;
	private String gene;
	private String microRNA_name;
	private String SNP_ID;
	private String disease;
	private String abbr;
	public String getAbbr() {
		return abbr;
	}
	public void setAbbr(String abbr) {
		this.abbr = abbr;
	}
	private String type;
	private String allele;
	private String method;
	private String microRNA_effection;
	private String discription;
	private String title;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTissue() {
		return tissue;
	}
	public void setTissue(String tissue) {
		this.tissue = tissue;
	}
	private String tissue;
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
	public detail2(int PMID, String gene,String title,String tissue ,String microRNAname ,String SNPID,String disease,String abbr,String type,String allele,String method,String microRNAeffection ,String discription ){
	super();
	this.PMID = PMID;
	this.gene = gene;
	microRNA_name=microRNAname;
	SNP_ID=SNPID;
	this.disease = disease;
	this.abbr=abbr;
	this.type = type;
	this.allele = allele;
	this.method = method;
	microRNA_effection = microRNAeffection;
	this.discription = discription;
	this.title=title;
	this.tissue=tissue;
	}
	public detail2(){
		super();
		//TODO Auto-generated constructor stub
	}
	
	
	
}

