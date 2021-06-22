package beans;

public class Histone {
	private String chrom;
	private int start;
	private int end;
	private float histoneValue;
	
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
	public Float getHistoneValue() {
		return histoneValue;
	}
	public void setHistoneValue(Float histoneValue) {
		this.histoneValue = histoneValue;
	}

}
