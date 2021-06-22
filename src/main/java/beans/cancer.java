package beans;

public class cancer {
	
	public String getTissue() {
		return tissue;
	}
	public void setTissue(String tissue) {
		this.tissue = tissue;
	}
	public String getHm() {
		return hm;
	}
	public void setHm(String hm) {
		this.hm = hm;
	}
	public String getRefseqid() {
		return Refseqid;
	}
	public void setRefseqid(String refseqid) {
		Refseqid = refseqid;
	}
	public String getGene() {
		return gene;
	}
	public void setGene(String gene) {
		this.gene = gene;
	}
	public String getTech() {
		return Tech;
	}
	public void setTech(String tech) {
		Tech = tech;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getExperrsion() {
		return experrsion;
	}
	public void setExperrsion(String experrsion) {
		this.experrsion = experrsion;
	}
	public String getCancer_name() {
		return cancer_name;
	}
	public void setCancer_name(String cancer_name) {
		this.cancer_name = cancer_name;
	}
	public String getGenome_fature() {
		return genome_fature;
	}
	public void setGenome_fature(String genome_fature) {
		this.genome_fature = genome_fature;
	}
	private String degree;
	private String experrsion;
	private String cancer_name;
	private String genome_fature;
	private String tissue;
	private String hm;
	private String Refseqid;
	private String gene;
	private String Tech;
	private String pubmed;
	public String getPubmed() {
		return pubmed;
	}
	public void setPubmed(String pubmed) {
		this.pubmed = pubmed;
	}
	public cancer(String tissue,String hm,String Refseqid,String gene,String Tech,String degree,String experrsion,String cancer_name,String genome_fature,String pubmed){
	super();
	//this.disease = disease;
	//this.name = name;
	this.Tech =Tech;
	this.hm = hm;
	this.gene = gene;
	this.Refseqid = Refseqid;
	this.tissue = tissue;
	this.degree = degree;
	this.experrsion =  experrsion;
	this.cancer_name = cancer_name;
	this.genome_fature = genome_fature;
	this.pubmed = pubmed;
	//this.strand = strand;
	//this.logFC = logFC;
	
	//this.pvalue = pvalue;
	//this.diff_method = diff_method;
	
	//this.gse = gse;
	//this.Treat_method = Treat_method;
	//this.score = score;
	
	
	}
	public cancer(){
		super();
		//TODO Auto-generated constructor stub
	}
	
	
	
}
