package com.biowei.query.bean;


public class TFBS {
	private int bin;
	private String chrom;
	private int chromStart;
	private int chromEnd;
	private String name;
	private int score;
	private String strand;
	private String zScore;
	
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
	public String getzScore() {
		return zScore;
	}
	public void setzScore(String zScore) {
		this.zScore = zScore;
	}
	
}
