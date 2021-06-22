package beans;

public class gtgene {
	/*public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}*/
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
	/*public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStrand() {
		return strand;
	}
	public void setStrand(String strand) {
		this.strand = strand;
	}
	public String getLogFC() {
		return logFC;
	}
	public void setLogFC(String logFC) {
		this.logFC = logFC;
	}
	public String getPvalue() {
		return pvalue;
	}
	public void setPvalue(String pvalue) {
		this.pvalue = pvalue;
	}
	public String getDiff_method() {
		return diff_method;
	}
	public void setDiff_method(String diffMethod) {
		diff_method = diffMethod;
	}*/

	private String type;
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
	public String getGenename() {
		return genename;
	}
	public void setGenename(String genename) {
		this.genename = genename;
	}
	public String getTf() {
		return tf;
	}
	public void setTf(String tf) {
		this.tf = tf;
	}
	public String getdrug() {
		return drug;
	}
	public void setdrug(String drug) {
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
	private String hm;
	private String genename;
	private String tf;
	private String drug;
	private String option;
	private String gse;
	private String chr;
	private String start;
	private String end;
	
	//private String name;

	//private String disease;
	//private String strand;
	//private String logFC;
	//private String pvalue;
	//private String diff_method;

	//private String Treat_method;
	//private String score;
	
	

	
	/*public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}*/
	/*public String getTreat_method() {
		return Treat_method;
	}
	public void setTreat_method(String treatMethod) {
		Treat_method = treatMethod;
	}*/
	public gtgene( String type, String hm ,String genename,String tf,String drug,String chr ,String start,String end,String option){
	super();
	//this.disease = disease;
	//this.name = name;
	this.type =type;
	this.hm = hm;
	this.genename = genename;
	this.tf = tf;
	this.drug = drug;
	this.option = option;
	this.chr =  chr;
	this.start = start;
	this.end = end;
	
	//this.strand = strand;
	//this.logFC = logFC;
	
	//this.pvalue = pvalue;
	//this.diff_method = diff_method;
	
	//this.gse = gse;
	//this.Treat_method = Treat_method;
	//this.score = score;
	
	
	}
	public gtgene(){
		super();
		//TODO Auto-generated constructor stub
	}
	
	
	
}
