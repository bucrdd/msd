package beans;

import java.text.DecimalFormat;
import java.text.NumberFormat;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.apache.batik.dom.svg12.SVG12DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Color;
import beans.Font;
import beans.Point;
import beans.Format;

public class Axis {

	private double width=500;
	private double height=500;
	
	
	private String xlibel="1234567890AZXSQWEDCVFRBGTNHYMJUKILOPaqwerzxcdvfrbgtnmhyjukliop";
	private String ylibel="1234567890AZXSQWEDCVFRBGTNHYMJUKILOPaqwerzxcdvfrbgtnmhyjukliop";
	private double xMax=1;
	private double yMax=1;
	
	private int effective=2;

	private int xLength=4;
	private int yLength=4;
	private Font font=new Font();
	
	private String axisColor=Color.black;
	private String libelColor=Color.black;
	private double space=10;
	private boolean seal=true;
	private DecimalFormat df;
	private Point point;

	public int getEffective() {
		return effective;
	}
	
	public void setEffective(int effective) {
		this.effective = effective;
	}
	
	public Element getAxis(Document document,boolean libel){
		
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		if(libel){
		double x=createYlibel(document, g);
		double y=createXlibel(document, g);
		point=createAxis(x==0?getFont().getSize():x, y==0?getFont().getSize():y, document, g);
		}else{
			point=createAxis(document, g);
		}
		return g;
	}
	
	public Element getAxisYInteger(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		if(point==null){
			point=new Point();
			double max=Format.fromatStringInteger(yMax).length()*getFont().getSize()*0.5;
			point.setX(2*getSpace()+max);
			point.setY(getHeight()-getSpace());
		}
		g.appendChild(paintAxis(document));
		for(int i=0;i<getyLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-(Format.fromatStringInteger((i+1)*yMax/getyLength()).length()*getFont().getSize()*0.5)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()+getFont().getSize()/3));
			element.appendChild(document.createTextNode(Format.fromatStringInteger((i+1)*yMax/getyLength())));
			g.appendChild(element);
		}
		if(getyLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-getFont().getSize()*0.5));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getFont().getSize()/3));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		return g;
	}
	public Element getAxisYDouble(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		if(point==null){
			point=new Point();
			double max=Format.fromatStringInteger(yMax).length()*getFont().getSize()*0.5+getEffective()*getFont().getSize()*0.6;
			point.setX(2*getSpace()+max);
			point.setY(getHeight()-getSpace());
		}
		g.appendChild(paintAxis(document));
		for(int i=0;i<getyLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-(Format.fromatStringDouble((i+1)*yMax/getyLength(),getEffective()).length()*getFont().getSize()*0.5)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()+getFont().getSize()/3));
			element.appendChild(document.createTextNode(Format.fromatStringDouble((i+1)*yMax/getyLength(),getEffective())));
			g.appendChild(element);
		}
		if(getyLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-getFont().getSize()*0.5));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getFont().getSize()/3));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		return g;
	}
	
	public Element getAxisXInteger(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		if(point==null){
			point=new Point();
			point.setX(getSpace());
			point.setY(getHeight()-2*getSpace()-getFont().getSize());
			
		}
		g.appendChild(paintAxis(document));
		for(int i=0;i<getxLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()-(Format.fromatStringInteger((i+1)*xMax/getxLength()).length()*getFont().getSize()*0.25)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode(Format.fromatStringInteger((i+1)*xMax/getxLength())));
			g.appendChild(element);
		}
		if(getxLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getFont().getSize()/3));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		return g;
	}
	
	public Element getAxisXDouble(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		if(point==null){
			point=new Point();
			point.setX(getSpace());
			point.setY(getHeight()-2*getSpace()-getFont().getSize());
		}
		g.appendChild(paintAxis(document));
		for(int i=0;i<getxLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()-(Format.fromatStringDouble((i+1)*xMax/getxLength(),getEffective()).length()*getFont().getSize()*0.25)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode(Format.fromatStringDouble((i+1)*xMax/getxLength(),getEffective())));
			g.appendChild(element);
		}
		if(getxLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getFont().getSize()/3));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		return g;
	}
	
	public Element getAxisXYDouble(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		
		if(point==null){
			point=new Point();
			double max=Format.fromatStringInteger(yMax).length()*getFont().getSize()*0.5+getEffective()*getFont().getSize()*0.6;
			point.setX(2*getSpace()+max);
			point.setY(getHeight()-2*getSpace()-getFont().getSize());
		}
		g.appendChild(paintAxis(document));
		for(int i=0;i<getyLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-(Format.fromatStringDouble((i+1)*yMax/getyLength(),getEffective()).length()*getFont().getSize()*0.5)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()+getFont().getSize()/3));
			element.appendChild(document.createTextNode(Format.fromatStringDouble((i+1)*yMax/getyLength(),getEffective())));
			g.appendChild(element);
		}
		if(getyLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-getFont().getSize()*0.5));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getFont().getSize()/3));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		
		for(int i=0;i<getxLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()-(Format.fromatStringDouble((i+1)*xMax/getxLength(),getEffective()).length()*getFont().getSize()*0.25)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode(Format.fromatStringDouble((i+1)*xMax/getxLength(),getEffective())));
			g.appendChild(element);
		}
		if(getxLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getFont().getSize()/3));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		return g;
	}
	
	public Element getAxisXYInteger(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		
		if(point==null){
			point=new Point();
			double max=Format.fromatStringInteger(yMax).length()*getFont().getSize()*0.5;
			point.setX(2*getSpace()+max);
			point.setY(getHeight()-2*getSpace()-getFont().getSize());
		}
		g.appendChild(paintAxis(document));
		for(int i=0;i<getyLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-(Format.fromatStringInteger((i+1)*yMax/getyLength()).length()*getFont().getSize()*0.5)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()+getFont().getSize()/3));
			element.appendChild(document.createTextNode(Format.fromatStringInteger((i+1)*yMax/getyLength())));
			g.appendChild(element);
		}
		if(getyLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-getFont().getSize()*0.5));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getFont().getSize()/3));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		
		for(int i=0;i<getxLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()-(Format.fromatStringInteger((i+1)*xMax/getxLength()).length()*getFont().getSize()*0.25)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode(Format.fromatStringInteger((i+1)*xMax/getxLength())));
			g.appendChild(element);
		}
		if(getxLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getFont().getSize()/3));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		return g;
	}
	
	public Element getAxisXIntegerYDouble(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		
		if(point==null){
			point=new Point();
			double max=Format.fromatStringInteger(yMax).length()*getFont().getSize()*0.5+getEffective()*getFont().getSize()*0.6;
			point.setX(2*getSpace()+max);
			point.setY(getHeight()-2*getSpace()-getFont().getSize());
		}
		g.appendChild(paintAxis(document));
		for(int i=0;i<getyLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-(Format.fromatStringDouble((i+1)*yMax/getyLength(),getEffective()).length()*getFont().getSize()*0.5)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()+getFont().getSize()/3));
			element.appendChild(document.createTextNode(Format.fromatStringDouble((i+1)*yMax/getyLength(),getEffective())));
			g.appendChild(element);
		}
		if(getyLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-getFont().getSize()*0.5));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getFont().getSize()/3));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		
		for(int i=0;i<getxLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()-(Format.fromatStringInteger((i+1)*xMax/getxLength()).length()*getFont().getSize()*0.25)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode(Format.fromatStringInteger((i+1)*xMax/getxLength())));
			g.appendChild(element);
		}
		if(getxLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getFont().getSize()/3));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		return g;
	}
	
	public Element getAxisXDoubleYInteger(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		
		if(point==null){
			point=new Point();
			double max=Format.fromatStringInteger(yMax).length()*getFont().getSize()*0.5;
			point.setX(2*getSpace()+max);
			point.setY(getHeight()-2*getSpace()-getFont().getSize());
		}
		
		g.appendChild(paintAxis(document));
		for(int i=0;i<getyLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-(Format.fromatStringInteger((i+1)*yMax/getyLength()).length()*getFont().getSize()*0.5)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()-(i+1)*(point.getY()-getSpace())/getyLength()+getFont().getSize()/3));
			element.appendChild(document.createTextNode(Format.fromatStringInteger((i+1)*yMax/getyLength())));
			g.appendChild(element);
		}
		if(getyLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()-0.75*getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getSpace()-getFont().getSize()*0.5));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getFont().getSize()/3));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		
		for(int i=0;i<getxLength();i++){
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()+(i+1)*(getWidth()-point.getX()-getSpace())/getxLength()-(Format.fromatStringDouble((i+1)*xMax/getxLength(),getEffective()).length()*getFont().getSize()*0.25)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode(Format.fromatStringDouble((i+1)*xMax/getxLength(),getEffective())));
			g.appendChild(element);
		}
		if(getxLength()>0){
			
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()+0.75*getSpace()));
			g.appendChild(xaix);
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(point.getX()-getFont().getSize()/3));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(point.getY()+getSpace()+getFont().getSize()));
			element.appendChild(document.createTextNode("0"));
			g.appendChild(element);
		}
		return g;
	}
	
	public Element getAxisXY(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		g.appendChild(paintAxis(document));
		return g;
	}
	
	private Element paintAxis(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		if(point==null){
			point=new Point(getSpace(), getHeight()-getSpace());
		}
		if(isSeal()){
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+point.getX());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+getSpace());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(getWidth()-point.getX()-getSpace()));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(point.getY()-getSpace()));
			g.appendChild(rect);
		}else{
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(getWidth()-getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()));
			g.appendChild(xaix);
			Element yaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+getSpace());
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(point.getX()));
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(point.getY()));
			g.appendChild(yaix);
		}
		return g;
	}
	
	public Element getAxis(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double x=createYlibel(document, g);
		double y=createXlibel(document, g);
		point=createAxis(x==0?getFont().getSize():x, y==0?getFont().getSize():y, document, g);
		return g;
	}
	
	private Point createAxis(double x,double y,Document document,Element g){
		if(getyMax()>10&&getyMax()<=1000){ 
		df=(DecimalFormat)NumberFormat.getInstance();
		df.setMaximumFractionDigits(0);
		}else if(getyMax()<10){
			df=(DecimalFormat)NumberFormat.getInstance();
			df.setMaximumFractionDigits(1);
		}else{
			df=new DecimalFormat("0.#E0");
		}
		 double max=0;
		Point point=new Point();
		max=((df.format((int)getyMax()).length()+1)*getFont().getSize()*0.5+getFont().getSize()*0.6);
		 for(int i=0;i<getyLength();i++){
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			if(df.format((i+1)*getyMax()/getyLength()).length()==df.format((int)((i+1)*getyMax()/getyLength())).length()){
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(getSpace()+x+max-((df.format(((i+1)*getyMax()/getyLength())).length())*getFont().getSize()*0.5)));
			}else{
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(getSpace()+x+max-((df.format((int)((i+1)*getyMax()/getyLength())).length()+1)*getFont().getSize()*0.5+getFont().getSize()*0.6)));
			}
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(((getHeight()-2*y-getSpace())-(i+1)*(getHeight()-2*y-getSpace())/getyLength())+y/2));
			element.appendChild(document.createTextNode(df.format((i+1)*getyMax()/getyLength())));
//			max=df.format((i+1)*getyMax()/getyLength()).length()*getFont().getSize()>max?df.format((i+1)*getyMax()/getyLength()).length()*getFont().getSize():max;
//			max=0.7*max;
			g.appendChild(element);
		}
		
		for(int i=0;i<getyLength();i++){
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(getSpace()+x+max));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(((getHeight()-2*y-getSpace())-(i+1)*(getHeight()-2*y-getSpace())/getyLength())));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(getSpace()+x+max+getSpace()));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(((getHeight()-2*y-getSpace())-(i+1)*(getHeight()-2*y-getSpace())/getyLength())));
			g.appendChild(element);
		}
		if(getxMax()>10&&getxMax()<=1000){ 
			df=(DecimalFormat)NumberFormat.getInstance();
			df.setMaximumFractionDigits(0);
			}else if(getxMax()<10){
				df=(DecimalFormat)NumberFormat.getInstance();

					df.setMaximumFractionDigits(1);
			}else{
				df=new DecimalFormat("0.#E0");
			}
		for(int i=0;i<getxLength();i++){
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+((getSpace()+x+max)+(i+1)*(getWidth()-(getSpace()+x+max))/getxLength()-df.format((i+1)*getxMax()/getxLength()).length()*getFont().getSize()/4));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(getHeight()-y-getSpace()));
			element.appendChild(document.createTextNode(df.format((i+1)*getxMax()/getxLength())));
			g.appendChild(element);
		}
		for(int i=0;i<getxLength();i++){
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+((getSpace()+x+max)+(i+1)*(getWidth()-(getSpace()+x+max))/getxLength()));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(getHeight()-2*y-getSpace()));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+((getSpace()+x+max)+(i+1)*(getWidth()-(getSpace()+x+max))/getxLength()));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(getHeight()-2*y-2*getSpace()));
			g.appendChild(element);
		}
		Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(getSpace()+x+max-getFont().getSize()));
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(getHeight()-y-getSpace()-getFont().getSize()/4));
		element.appendChild(document.createTextNode("0"));
		g.appendChild(element);

		if(isSeal()){
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(x+getSpace()+max));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", "0");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(getWidth()-(x+getSpace()+max)));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(getHeight()-2*y-getSpace()));
			g.appendChild(rect);
			point.setX((x+getSpace()+max));
			point.setY((getHeight()-2*y-getSpace()));
		}else{
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(x+getSpace()+max));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(getHeight()-2*y-getSpace()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(getWidth()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(getHeight()-2*y-getSpace()));
			g.appendChild(xaix);
			Element yaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(x+getSpace()+max));
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", "0");
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(x+getSpace()+max));
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(getHeight()-2*y-getSpace()));
			g.appendChild(yaix);
			point.setX((x+getSpace()+max));
			point.setY((getHeight()-2*y-getSpace()));
		}
		return point;
	}
	
	private Point createAxis(Document document,Element g){
		if(getyMax()>10&&getyMax()<=1000){ 
			df=(DecimalFormat)NumberFormat.getInstance();

			df.setMaximumFractionDigits(0);
			}else if(getyMax()<10){
				df=(DecimalFormat)NumberFormat.getInstance();

				df.setMaximumFractionDigits(1);
			}else{
				df=new DecimalFormat("0.#E0");
			}
		 double max=0;
		Point point=new Point();
//		double x=0;
		double h=0.9*getFont().getSize();
		max=((df.format((int)getyMax()).length()+1)*getFont().getSize()*0.5+getFont().getSize()*0.6);
		 for(int i=0;i<getyLength();i++){
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			if(df.format((i+1)*getyMax()/getyLength()).length()==df.format((int)((i+1)*getyMax()/getyLength())).length()){
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(max-((df.format(((i+1)*getyMax()/getyLength())).length())*getFont().getSize()*0.5)));
			}else{
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(max-((df.format((int)((i+1)*getyMax()/getyLength())).length()+1)*getFont().getSize()*0.5+getFont().getSize()*0.6)));
			}
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(((getHeight()-h)-(i+1)*(getHeight()-h-getSpace())/getyLength())+h/2));
			element.appendChild(document.createTextNode(df.format((i+1)*getyMax()/getyLength())));
//			max=df.format((i+1)*getyMax()/getyLength()).length()*getFont().getSize()>max?df.format((i+1)*getyMax()/getyLength()).length()*getFont().getSize():max;
//			max=0.7*max;
			g.appendChild(element);
		}
		
		for(int i=0;i<getyLength();i++){
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(max));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(((getHeight()-h)-(i+1)*(getHeight()-h)/getyLength())));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(max+getSpace()));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(((getHeight()-h)-(i+1)*(getHeight()-h)/getyLength())));
			g.appendChild(element);
		}
		if(getxMax()>10&&getxMax()<=1000){ 
			df=(DecimalFormat)NumberFormat.getInstance();

			df.setMaximumFractionDigits(0);
			}else if(getxMax()<10){
				df=(DecimalFormat)NumberFormat.getInstance();

				df.setMaximumFractionDigits(1);
			}else{
				df=new DecimalFormat("0.#E0");
			}
		for(int i=0;i<getxLength();i++){
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(max+(i+1)*(getWidth()-max)/getxLength()-df.format((i+1)*getxMax()/getxLength()).length()*getFont().getSize()/4));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(getHeight()));
			element.appendChild(document.createTextNode(df.format((i+1)*getxMax()/getxLength())));
			g.appendChild(element);
		}
		for(int i=0;i<getxLength();i++){
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+((max)+(i+1)*(getWidth()-(max))/getxLength()));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(getHeight()-h));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+((max)+(i+1)*(getWidth()-(max))/getxLength()));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(getHeight()-h-getSpace()));
			g.appendChild(element);
		}
		Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ""+getAxisColor());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(max-getFont().getSize()));
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(getHeight()-getFont().getSize()/4));
		element.appendChild(document.createTextNode("0"));
		g.appendChild(element);

		if(isSeal()){
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(max));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", "0");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(getWidth()-(max)));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(getHeight()-h));
			g.appendChild(rect);
			point.setX((max));
			point.setY((getHeight()-h));
		}else{
			Element xaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(max));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(getHeight()-h));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(getWidth()));
			xaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(getHeight()-h));
			g.appendChild(xaix);
			Element yaix=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getAxisColor());
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(max));
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", "0");
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(max));
			yaix.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(getHeight()-h));
			g.appendChild(yaix);
			point.setX((max));
			point.setY((getHeight()-h));
		}
		return point;
	}
	
	private double createYlibel(Document document,Element g){
		
		if(getYlibel().length()==0){
			return 0;
		}else{
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+getHeight());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getLibelColor());

			
			Element defs=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "defs");

			Element elepath=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "path");
			elepath.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "id", "ylibel");
			double W=getYlibel().length()*getFont().getSize()>getHeight()?getHeight():getYlibel().length()*getFont().getSize();
			double H=getFont().getSize();
			W=0.65*W;
			H=0.9*H;
			elepath.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "d", "M "+H+","+(getHeight()-(getHeight()-W)/2)+" L "+H+","+(getHeight()-W)/2);
			elepath.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			elepath.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
			
			defs.appendChild(elepath);
			g.appendChild(defs);
			Element eletextpath=document.createElementNS(SVG12DOMImplementation.SVG_NAMESPACE_URI, "textPath");
			eletextpath.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "xlink:href", "#ylibel");
			eletextpath.appendChild(document.createTextNode(getYlibel()));
			element.appendChild(eletextpath);
			g.appendChild(element);
			return H;
		}
	}
	
	private double createXlibel(Document document,Element g){
		
		if(getXlibel().length()==0){
			return 0;
		}else{
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+getWidth());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getLibelColor());
			
			double W=getXlibel().length()*getFont().getSize()>getWidth()?getWidth():getXlibel().length()*getFont().getSize();
			double H=getFont().getSize();
			W=0.7*W;
			H=0.9*H;
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(getWidth()-W)/2);
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+getHeight());
			element.appendChild(document.createTextNode(getXlibel()));
			
			g.appendChild(element);
			return H;
		}
	}

	public String getXlibel() {
		return xlibel;
	}


	public void setXlibel(String xlibel) {
		this.xlibel = xlibel;
	}


	public String getYlibel() {
		return ylibel;
	}


	public void setYlibel(String ylibel) {
		this.ylibel = ylibel;
	}


	public double getxMax() {
		return xMax;
	}


	public void setxMax(double xMax) {
		this.xMax = xMax;
	}


	public double getyMax() {
		return yMax;
	}


	public void setyMax(double yMax) {
		this.yMax = yMax;
	}


	public int getxLength() {
		return xLength;
	}


	public void setxLength(int xLength) {
		this.xLength = xLength;
	}


	public int getyLength() {
		return yLength;
	}


	public void setyLength(int yLength) {
		this.yLength = yLength;
	}


	public String getAxisColor() {
		return axisColor;
	}


	public void setAxisColor(String axisColor) {
		this.axisColor = axisColor;
	}


	public String getLibelColor() {
		return libelColor;
	}


	public void setLibelColor(String libelColor) {
		this.libelColor = libelColor;
	}


	/**
	 * @return the height
	 */
	public double getHeight() {
		return height;
	}


	/**
	 * @param height the height to set
	 */
	public void setHeight(double height) {
		this.height = height;
	}


	/**
	 * @return the width
	 */
	public double getWidth() {
		return width;
	}


	/**
	 * @param width the width to set
	 */
	public void setWidth(double width) {
		this.width = width;
	}



	/**
	 * @return the font
	 */
	public Font getFont() {
		return font;
	}



	/**
	 * @param font the font to set
	 */
	public void setFont(Font font) {
		this.font = font;
	}

	/**
	 * @return the space
	 */
	public double getSpace() {
		return space;
	}

	/**
	 * @param space the space to set
	 */
	public void setSpace(double space) {
		this.space = space;
	}

	/**
	 * @return the seal
	 */
	public boolean isSeal() {
		return seal;
	}

	/**
	 * @param seal the seal to set
	 */
	public void setSeal(boolean seal) {
		this.seal = seal;
	}

	/**
	 * @return the point
	 */
	public Point getPoint() {
		return point;
	}

	/**
	 * @param point the point to set
	 */
	public void setPoint(Point point) {
		this.point = point;
	}
	
	
	
}
