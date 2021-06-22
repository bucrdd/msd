package beans;

public class RefGene {

	private String name;
	private String name2;
	private String chrom;
	
	private int txStart;
	private int txEnd;

	private int cdsStart;
	private int cdsEnd;
	
	private String strand;
	private int exonCount;
	
	private byte[] exonStarts;
	private byte[] exonEnds;
	
	
	
	public int getCdsStart() {
		return cdsStart;
	}
	public void setCdsStart(int cdsStart) {
		this.cdsStart = cdsStart;
	}
	public int getCdsEnd() {
		return cdsEnd;
	}
	public void setCdsEnd(int cdsEnd) {
		this.cdsEnd = cdsEnd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	public String getChrom() {
		return chrom;
	}
	public void setChrom(String chrom) {
		this.chrom = chrom;
	}
	public int getTxStart() {
		return txStart;
	}
	public void setTxStart(int txStart) {
		this.txStart = txStart;
	}
	/*public char getStrand() {
		return strand;
	}
	public void setStrand(char strand) {
		this.strand = strand;
	}*/
	
	
	public int getTxEnd() {
		return txEnd;
	}
	public String getStrand() {
		return strand;
	}
	public void setStrand(String strand) {
		this.strand = strand;
	}
	public void setTxEnd(int txEnd) {
		this.txEnd = txEnd;
	}
	public int getExonCount() {
		return exonCount;
	}
	public void setExonCount(int exonCount) {
		this.exonCount = exonCount;
	}
	public byte[] getExonStarts() {
		return exonStarts;
	}
	public void setExonStarts(byte[] exonStarts) {
		this.exonStarts = exonStarts;
	}
	public byte[] getExonEnds() {
		return exonEnds;
	}
	public void setExonEnds(byte[] exonEnds) {
		this.exonEnds = exonEnds;
	}
	
	public String getPosition(){
		return this.getChrom()+":"+this.getTxStart()+"-"+this.getTxEnd();
	}
	@Override
	public String toString(){
		return this.getName()+"\t"+this.getChrom()+"\t"+this.getName2();
	}
	
	
}
