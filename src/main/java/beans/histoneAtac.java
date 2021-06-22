package beans;

public class histoneAtac {
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
	public String get_int() {
		return _int;
	}
	public void set_int(String _int) {
		this._int = _int;
	}
	public String getFold_change() {
		return fold_change;
	}
	public void setFold_change(String fold_change) {
		this.fold_change = fold_change;
	}
	public String getPvalue() {
		return pvalue;
	}
	public void setPvalue(String pvalue) {
		this.pvalue = pvalue;
	}
	public String getQvalue() {
		return qvalue;
	}
	public void setQvalue(String qvalue) {
		this.qvalue = qvalue;
	}
	private String _int;
	private String fold_change;
	private String pvalue;
	private String qvalue;
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
	public histoneAtac( String type,String chr ,String start,String end){
	super();
	//this.disease = disease;
	//this.name = name;
	this.type =type;;
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
	public histoneAtac(){
		super();
		//TODO Auto-generated constructor stub
	}
	
	
	
}
