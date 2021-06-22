package beans;

public class Genome {
	private int bin;
	private String chrom;
	private int txStart;
	private int txEnd;
	private String name;
	private int score;
	private String strand;
	private int cdsStart;
	private int cdsEnd;
	private int reserved;
	private int exonCount;
	private String exonStarts;
	private String exonEnds;
	
	public int getBin() {
		return bin;
	}
	public void setBin(int bin) {
		this.bin = bin;
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
	public int getTxEnd() {
		return txEnd;
	}
	public void setTxEnd(int txEnd) {
		this.txEnd = txEnd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getStrand() {
		return strand;
	}
	public void setStrand(String strand) {
		this.strand = strand;
	}
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
	public int getReserved() {
		return reserved;
	}
	public void setReserved(int reserved) {
		this.reserved = reserved;
	}
	public int getExonCount() {
		return exonCount;
	}
	public void setExonCount(int exonCount) {
		this.exonCount = exonCount;
	}
	public String getExonStarts() {
		return exonStarts;
	}
	public void setExonStarts(String exonStarts) {
		this.exonStarts = exonStarts;
	}
	public String getExonEnds() {
		return exonEnds;
	}
	public void setExonEnds(String exonEnds) {
		this.exonEnds = exonEnds;
	}	
}
