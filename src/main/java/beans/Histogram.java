package beans;

import org.apache.batik.anim.dom.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Color;
import beans.MathStas;

public class Histogram {

	private double width=800;
	private double height=600;
	private double maxX=1;
	private int num=50;
	
	private double[] data;
	private double opacity=0.5;
	private double max=1;
	private String histColor=Color.blue;
	private double histWidth=10;
	private double start=0;
	
	public Histogram(){}
	
	public Histogram(double[] data){
		this.data=data;
	}
	
	
	
	public double getOpacity() {
		return opacity;
	}

	public void setOpacity(double opacity) {
		this.opacity = opacity;
	}

	public double getMax() {
		return max;
	}

	public void setMax(double max) {
		this.max = max;
	}

	public String getHistColor() {
		return histColor;
	}

	public void setHistColor(String histColor) {
		this.histColor = histColor;
	}

	public Element getHist(Document document){
		return getHist(getData(), document);
	}
	
	public Element getHist(int[] statisticData,Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double av=getHeight()/getMax();
		for(int i=0;i<statisticData.length;i++){
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", getHistColor());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(i*getHistWidth()+getStart()));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(getHeight()-av*statisticData[i]));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+getHistWidth());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(av*statisticData[i]));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
			g.appendChild(rect);
		}
		return g;
	}
	
	public Element getHist(double[]data,Document document){
		return getHist(getStatisticData(data), document);
	}
	
	public Element getHist(double[] data,double[] region,Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double av=getHeight()/getMax();
		double d=(getWidth()-getStart())/MathStas.getNum(region);
		double a=getStart();
		for(int i=0;i<region.length;i++){
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke",getHistColor());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", getHistColor());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(a));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(getHeight()-av*data[i]));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+region[i]*d);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(av*data[i]));
//			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			g.appendChild(rect);
			a+=(region[i]*d);
		}
		return g;
	}
	
	public int[] getStatisticData(double[] data){
		
		MathStas mathStas=new MathStas();
		int[] sta=mathStas.getBarHeight(data, getNum());
		histWidth=mathStas.getBarWidth()*getWidth()/mathStas.getBarEnd();
		max=MathStas.getMax(sta);
		start=mathStas.getBarStart()*getWidth()/mathStas.getBarEnd();
		return sta;
	}
	
	public double getWidth() {
		return width;
	}

	public void setWidth(double width) {
		this.width = width;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public double[] getData() {
		return data;
	}

	public void setData(double[] data) {
		this.data = data;
	}

	/**
	 * @return the histWidth
	 */
	public double getHistWidth() {
		return histWidth;
	}

	/**
	 * @param histWidth the histWidth to set
	 */
	public void setHistWidth(double histWidth) {
		this.histWidth = histWidth;
	}

	/**
	 * @return the start
	 */
	public double getStart() {
		return start;
	}

	/**
	 * @param start the start to set
	 */
	public void setStart(double start) {
		this.start = start;
	}

	/**
	 * @return the maxX
	 */
	public double getMaxX() {
		return maxX;
	}

	/**
	 * @param maxX the maxX to set
	 */
	public void setMaxX(double maxX) {
		this.maxX = maxX;
	}
	
	
}
