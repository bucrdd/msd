package beans;

import java.io.File;
import java.util.List;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Expression;
import beans.ImageBeans;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class ExpressionSvg {

	private double width=GenomeImageGlobal.width;
	private double height=75;
	private List<Expression> listExpression;
	
	private int start;
	private int end;
	private int MaxExpressionValue;
	
	public Element getElementHistone(Document document){
		
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double widthMin=width/(end-start);
		for(int i=0;i<listExpression.size();i++){
			//System.out.println(listExpression.get(i).getExpressionValue()+"	"+MaxExpressionValue);
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "#663399");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(listExpression.get(i).getStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(height*((1-listExpression.get(i).getExpressionValue()/MaxExpressionValue)>0.01?(1-listExpression.get(i).getExpressionValue()/MaxExpressionValue):0.01)));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(widthMin>0.5?widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(height*((listExpression.get(i).getExpressionValue()/MaxExpressionValue)<0.99?(listExpression.get(i).getExpressionValue()/MaxExpressionValue):0.99)));
			g.appendChild(rect);
		}
		return g;
	}
	
	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public ImageBeans createImage(File file){
		Document document=SvgDomCreate.getDocument(GenomeImageGlobal.width, GenomeImageGlobal.refGeneHeight+height+5);
		Element gHistone=getElementHistone(document);
		gHistone.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(GenomeImageGlobal.refGeneHeight+5)+")");	
		document.getDocumentElement().appendChild(gHistone);
		try{
		XmlWriter.writeSvg(document, file);
		}catch (Exception e) {
			// TODO: handle exception
		}
		ImageBeans beans=new ImageBeans();
		//beans.setHeight((int)(GenomeImageGlobal.refGeneHeight+height+10));
		beans.setUrl(file.getName());
		return beans;
	}
	
	@SuppressWarnings("unused")
	private String getRG(double db){
		int r=0;
		r=(int)(255*db);
		if(r>255||r<0) return "#000";
		return "rgb("+r+","+(255-r)+",193)";
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

	public List<Expression> getListExpression() {
		return listExpression;
	}

	public void setListExpression(List<Expression> listExpression) {
		this.listExpression = listExpression;
	}

	public int getMaxExpressionValue() {
		return MaxExpressionValue;
	}

	public void setMaxExpressionValue(int maxExpressionValue) {
		MaxExpressionValue = maxExpressionValue;
	}
	
}
