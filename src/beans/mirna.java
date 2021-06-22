package beans;

public class mirna {
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
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
	public String getName() {
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
	}
	public String getGse() {
		return gse;
	}
	public void setGse(String gse) {
		this.gse = gse;
	}
	private String disease;


	private String chr;
	private String start;
	private String end;
	private String name;

	
	private String strand;
	private String logFC;
	private String pvalue;
	private String diff_method;


	private String gse;
	private String Treat_method;
	
	

	
	public String getTreat_method() {
		return Treat_method;
	}
	public void setTreat_method(String treatMethod) {
		Treat_method = treatMethod;
	}
	public mirna( String disease, String name ,String chr ,String start,String end,String strand,String logFC ,String pvalue, String diff_method,String gse, String Treat_method){
	super();
	this.disease = disease;
	this.name = name;
	this.chr =  chr;
	this.start = start;
	this.end = end;
	
	this.strand = strand;
	this.logFC = logFC;
	
	this.pvalue = pvalue;
	this.diff_method = diff_method;
	
	this.gse = gse;
	this.Treat_method = Treat_method;
	
	
	}
	public mirna(){
		super();
		//TODO Auto-generated constructor stub
	}
	
	
	
}
