package beans;

public class Expression {
	private String chrom;
	private int start;
	private int end;
	private float ExpressionValue;
	
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
	public float getExpressionValue() {
		return ExpressionValue;
	}
	public void setExpressionValue(float expressionValue) {
		ExpressionValue = expressionValue;
	}
}
