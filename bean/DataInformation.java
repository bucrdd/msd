package com.biowei.query.bean;


public class DataInformation {
	private int bin;
	private int Check;
	private String Species;
	private String Platform;
	private String Tissue;
	private String CellType;
	private String Track;
	private String TableName;
	private String Author;
	private int pubmedID;
	private String DataSourceID;
	private String Description;
	private String TrackLabel;
	private String Date;
	private boolean click;
	
	
	public int getBin() {
		return bin;
	}

	public void setBin(int bin) {
		this.bin = bin;
	}

	public int getCheck() {
		return Check;
	}

	public void setCheck(int check) {
		Check = check;
	}

	public String getSpecies() {
		return Species;
	}

	public void setSpecies(String species) {
		Species = species;
	}

	public String getPlatform() {
		return Platform;
	}

	public void setPlatform(String platform) {
		Platform = platform;
	}

	public String getTissue() {
		return Tissue;
	}

	public void setTissue(String tissue) {
		Tissue = tissue;
	}

	public String getCellType() {
		return CellType;
	}

	public void setCellType(String cellType) {
		CellType = cellType;
	}

	public String getDataSourceID() {
		return DataSourceID;
	}

	public void setDataSourceID(String dataSourceID) {
		DataSourceID = dataSourceID;
	}

	public String getTrack() {
		return Track;
	}

	public void setTrack(String track) {
		Track = track;
	}

	public String getTableName() {
		return TableName;
	}

	public void setTableName(String tableName) {
		TableName = tableName;
	}

	public String getAuthor() {
		return Author;
	}

	public void setAuthor(String author) {
		Author = author;
	}

	public int getPubmedID() {
		return pubmedID;
	}

	public void setPubmedID(int pubmedID) {
		this.pubmedID = pubmedID;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}
	
	public String getTrackLabel() {
		return TrackLabel;
	}

	public void setTrackLabel(String trackLabel) {
		TrackLabel = trackLabel;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public boolean isClick() {
		return click;
	}
	
	public void setClick(boolean click) {
		this.click = click;
	}
}
