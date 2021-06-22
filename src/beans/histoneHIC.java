package beans;

public class histoneHIC {
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


	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	private String type;
	private String chr;
	private String start;
	private String end;
	private String frag2;
	private String freq;
	public String getFreq() {
		return freq;
	}
	public void setFreq(String freq) {
		this.freq = freq;
	}
	public String getFrag2() {
		return frag2;
	}
	public void setFrag2(String frag2) {
		this.frag2 = frag2;
	}
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
	public histoneHIC( String type,String chr ,String start,String end,String frag2){
	super();
	//this.disease = disease;
	//this.name = name;
	this.type =type;;
	this.chr =  chr;
	this.start = start;
	this.end = end;
	this.frag2 = frag2;
	//this.strand = strand;
	//this.logFC = logFC;
	
	//this.pvalue = pvalue;
	//this.diff_method = diff_method;
	
	//this.gse = gse;
	//this.Treat_method = Treat_method;
	//this.score = score;
	
	
	}
	public histoneHIC(){
		super();
		//TODO Auto-generated constructor stub
	}
	
	
	
}
