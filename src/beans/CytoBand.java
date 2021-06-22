package beans;

public class CytoBand {

	private String chrom;
	private int chromStart;
	private int chromEnd;
	private String name;
	private String gieStain;
	
	@Override
	public String toString() {
		return getChrom()+"\t"+getChromStart()+"\t"+getChromEnd()+"\t"+getName()+"\t"+getGieStain();
	};

	
	public int getChromStart() {
		return chromStart;
	}

	public void setChromStart(int chromStart) {
		this.chromStart = chromStart;
	}

	public int getChromEnd() {
		return chromEnd;
	}

	public void setChromEnd(int chromEnd) {
		this.chromEnd = chromEnd;
	}
	public String getChrom() {
		return chrom;
	}
	public void setChrom(String chrom) {
		this.chrom = chrom;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGieStain() {
		return gieStain;
	}
	public void setGieStain(String gieStain) {
		this.gieStain = gieStain;
	}
	
	
	
}
