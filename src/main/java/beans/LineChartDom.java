package beans;

import org.apache.batik.anim.dom.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Axis;
import beans.Libel;
import beans.Points;
import beans.Color;
import beans.Point;
import beans.MathStas;

public class LineChartDom {

	private Axis axis;
	private double[] data;
	private double max;
	private boolean seal;
	private double height;
	private double width;
	private String ylabel="Methylation";
	private String xlabel="Mouse Development";
	
	public Element createElement(Document document){
		if(max==0){
			max=MathStas.getMax(getData());
		}
		return paint(document);
	}

	
	private Element paint(Document document){
		
		Element gall=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Axis axis=new Axis();
		axis.setWidth(width-10);
		axis.setHeight(height-10);
		axis.setyMax(max);
		axis.setxMax(data.length-1);
		axis.setxLength(data.length-1);
		axis.setyLength(5);
		axis.setSeal(true);
		
		Libel ylibel=new Libel();
		ylibel.setHeight(height-30);
		ylibel.setWidth(width);
		ylibel.setWidth(axis.getSpace());
		ylibel.setText(ylabel);
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element l=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
		Element p;
		Points points;
		Point point=new Point();;
		Element e=axis.getAxisXIntegerYDouble(document);
		g.appendChild(e);
		
		Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+axis.getWidth());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+ylibel.getFont().getName());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+ylibel.getFont().getSize());
		
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", Color.black);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", (((axis.getWidth()-axis.getPoint().getX())-xlabel.length()*0.6)/2)+"");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+height);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-align", "center");
		element.appendChild(document.createTextNode(xlabel));
		
		g.appendChild(element);
		if(data!=null){
		for(int i=0;i<data.length;i++){
			if(data[i]>=0){
			points=new Points();
			points.setPointSize(5);
			points.setOpacity(1);
			points.setPointColor("#06F");
			double x=(axis.getPoint().getX()+(i)*(axis.getWidth()-axis.getPoint().getX()-axis.getSpace())/axis.getxLength());
//			axis.getPoint().getX()+((axis.getWidth()-axis.getPoint().getX())/axis.getxLength())*(i+1);
			double y=axis.getPoint().getY()-(axis.getPoint().getY()/axis.getyMax())*(data[i]);
			if(i>0){
				l=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
				l.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "#FC0");
				l.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
				l.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "opacity", "0.7");
				l.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(point.getX()));
				l.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(point.getY()));
				l.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(x));
				l.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(y));
				g.appendChild(l);
			}
			point.setX(x);
			point.setY(y);
			p=points.createPoint(document, point);
			
			g.appendChild(p);
			}
		}
		}
		g.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate(10,0)");
		gall.appendChild(g);
		gall.appendChild(ylibel.getYlibel(document));
		
		return gall;	
	}
	
	
	public double getHeight() {
		return height;
	}


	public void setHeight(double height) {
		this.height = height;
	}


	public double getWidth() {
		return width;
	}


	public void setWidth(double width) {
		this.width = width;
	}

	public boolean isSeal() {
		return seal;
	}


	public void setSeal(boolean seal) {
		this.seal = seal;
	}


	public Axis getAxis() {
		return axis;
	}

	public void setAxis(Axis axis) {
		this.axis = axis;
	}

	public double[] getData() {
		return data;
	}

	public void setData(double[] data) {
		this.data = data;
	}

	public double getMax() {
		return max;
	}

	public void setMax(double max) {
		this.max = max;
	}
	
	
}
