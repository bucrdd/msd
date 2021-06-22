package beans;

public class gene {
	private String disease;

	private String geneid;
	//private String protein;
	//private String regulatory;
	
	//*private String prognostic;
	//private String methylation_site;
	//private String genomic_location;
	private String tissue;
	//private String method;
	//private String species;
	private String pmid;
	private String title;
	private String description;
	

	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getGeneid() {
		return geneid;
	}
	public void setGeneid(String geneid) {
		this.geneid = geneid;
	}
	/*public String getProtein() {
		return protein;
	}
	public void setProtein(String protein) {
		this.protein = protein;
	}
	public String getRegulatory() {
		return regulatory;
	}
	public void setRegulatory(String regulatory) {
		this.regulatory = regulatory;
	}
	public String getPrognostic() {
		return prognostic;
	}
	public void setPrognostic(String prognostic) {
		this.prognostic = prognostic;
	}
	public String getMethylation_site() {
		return methylation_site;
	}
	public void setMethylation_site(String methylationSite) {
		methylation_site = methylationSite;
	}
	public String getGenomic_location() {
		return genomic_location;
	}
	public void setGenomic_location(String genomicLocation) {
		genomic_location = genomicLocation;
	}*/
	public String getTissue() {
		return tissue;
	}
	public void setTissue(String tissue) {
		this.tissue = tissue;
	}
	/*public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}*/
	/*public String getSpecies() {
		return species;
	}
	public void setSpecies(String species) {
		this.species = species;
	}*/
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
	public gene( String disease, String geneid ,String protein,String regulatory,String prognostic,String methylation_site,String genomic_location ,String tissue, String method, String species,String pmid,String title,String description ){
	super();
	this.disease = disease;
	
	this.geneid =  geneid;
	/*this.protein = protein;
	this.regulatory = regulatory;
	this.prognostic = prognostic;*/
	this.tissue = tissue;
	/*this.method = method;
	this.species = species;*/
	this.pmid = pmid;
	this.title = title;
	this.description = description;
	/*this.methylation_site = methylation_site;
	this.genomic_location = genomic_location;*/
	
	}
	public gene(){
		super();
		//TODO Auto-generated constructor stub
	}
	
	
	
}
