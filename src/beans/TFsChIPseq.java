package beans;

public class TFsChIPseq {
	private String chrom;
	private int start;
	private int end;
	private float TFValue;
	
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
	public float getTFValue() {
		return TFValue;
	}
	public void setTFValue(float tFValue) {
		TFValue = tFValue;
	}
}
