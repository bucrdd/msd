package beans;

import beans.DataInformation;

public class ImageBeans {

	private String url;
	private String label;
	private DataInformation dataInfo;
	private String style;
	private int height=60; 
	
	
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public void setDataInfo(DataInformation dataInfo) {
		this.dataInfo = dataInfo;
	}
	public DataInformation getDataInfo() {
		return dataInfo;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getStyle() {
		return style;
	}
	
}
