package beans;

public class SuperEnhancers {
	private int SEID;
	private String chrom;
	private int start;
	private int end;
	private String name;
	private int length;
	private String cellType;
	private String mean;
	private String median;
	private String refrence;
	private String origin;
	private String associatedGene;
	private String method4association;
	private String methods;
	private String mark;
	private String code;
	
	public int getSEID() {
		return SEID;
	}
	public void setSEID(int sEID) {
		SEID = sEID;
	}
	public String getChrom() {
		return chrom;
	}
	public void setChrom(String chrom) {
		this.chrom = chrom;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public String getCellType() {
		return cellType;
	}
	public void setCellType(String cellType) {
		this.cellType = cellType;
	}
	public String getRefrence() {
		return refrence;
	}
	public void setRefrence(String refrence) {
		this.refrence = refrence;
	}
	public String getMean() {
		return mean;
	}
	public void setMean(String mean) {
		this.mean = mean;
	}
	public String getMedian() {
		return median;
	}
	public void setMedian(String median) {
		this.median = median;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getAssociatedGene() {
		return associatedGene;
	}
	public void setAssociatedGene(String associatedGene) {
		this.associatedGene = associatedGene;
	}
	public String getMethod4association() {
		return method4association;
	}
	public void setMethod4association(String method4association) {
		this.method4association = method4association;
	}
	public String getMethods() {
		return methods;
	}
	public void setMethods(String methods) {
		this.methods = methods;
	}
	public String getMark() {
		return mark;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}	
}
