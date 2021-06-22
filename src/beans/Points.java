package beans;

import java.util.ArrayList;
import java.util.List;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Color;
import beans.Point;

public class Points {

	private double width=500;
	private double height=500;
	private double opacity=0.5;
	private double maxX=1;
	private double maxY=1;
	private double pointSize=2;
	private String pointColor=Color.black;
	
	private List<Point> list;
	private Point[] points;
	
	public double getOpacity() {
		return opacity;
	}


	public void setOpacity(double opacity) {
		this.opacity = opacity;
	}


	public List<Point> createPoints(double[] x,double[] y){
		
			Point point;
			double lx=getWidth()/maxX;
			double ly=getHeight()/maxY;
			list=new ArrayList<Point>();
			for(int i=0;i<(x.length>y.length?y.length:x.length);i++){
				point=new Point();
				point.setX(x[i]*lx);
				point.setY(getHeight()-y[i]*ly);
				list.add(point);
			}
		return list;
	}
	
	
	public Element getpoints(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		if(points!=null||list!=null){
		if(list!=null){
			for(int i=0;i<list.size();i++){
				g.appendChild(createPoint(document, list.get(i)));
			}
		}else{
			for(int i=0;i<points.length;i++){
				g.appendChild(createPoint(document, points[i]));
			}
		}	
		}
		return g;
	}
	
	public Element createPoint(Document document,Point point){

		Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "circle");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "cx", point.getX()+"");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "cy", point.getY()+"");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "r", getPointSize()+"");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", getPointColor());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
		
		return element;
	}
	
	public Element createPoint(Document document,double x,double y){

		Point point=new Point();
		point.setX(x);
		point.setY(y);
		return createPoint(document, point);
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
	public double getPointSize() {
		return pointSize;
	}
	public void setPointSize(double pointSize) {
		this.pointSize = pointSize;
	}
	public String getPointColor() {
		return pointColor;
	}
	public void setPointColor(String pointColor) {
		this.pointColor = pointColor;
	}
	public List<Point> getList() {
		return list;
	}
	public void setList(List<Point> list) {
		this.list = list;
	}
	public Point[] getPoints() {
		return points;
	}
	public void setPoints(Point[] points) {
		this.points = points;
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


	/**
	 * @return the maxY
	 */
	public double getMaxY() {
		return maxY;
	}


	/**
	 * @param maxY the maxY to set
	 */
	public void setMaxY(double maxY) {
		this.maxY = maxY;
	}
}
