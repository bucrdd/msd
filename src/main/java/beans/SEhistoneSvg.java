package beans;

import java.io.File;
import java.util.List;

import org.apache.batik.anim.dom.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.SuperEnhancers;
import beans.Histone;
import beans.ImageBeans;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class SEhistoneSvg {

	private double width=GenomeImageGlobal.width;
	private double height=25;
	
	private List<SuperEnhancers> listse;
	private List<Histone> listHistone;
	
	private int start;
	private int end;
	private int MaxHistoneValue;
	
	public Element getElementSE(Document document){
		
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double widthMin=width/(end-start);
		for(int i=0;i<listse.size();i++){
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "#3871C1");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(listse.get(i).getStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/4));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+((listse.get(i).getEnd()-listse.get(i).getStart())*widthMin>0.5?(listse.get(i).getEnd()-listse.get(i).getStart())*widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight*3/4));
			g.appendChild(rect);
		}
		
		return g;
	}
	
	public Element getElementHistone(Document document){
		
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double widthMin=width/(end-start);
		for(int i=0;i<listHistone.size();i++){
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "#FB8E00");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(listHistone.get(i).getStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(height*((1-listHistone.get(i).getHistoneValue()/MaxHistoneValue)>0.01?(1-listHistone.get(i).getHistoneValue()/MaxHistoneValue):0.01)));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(widthMin>0.5?widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(height*((listHistone.get(i).getHistoneValue()/MaxHistoneValue)<0.99?(listHistone.get(i).getHistoneValue()/MaxHistoneValue):0.99)));
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
		Element gSE=getElementSE(document);
		Element gHistone=getElementHistone(document);
		gHistone.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(GenomeImageGlobal.refGeneHeight+5)+")");	
		document.getDocumentElement().appendChild(gSE);
		document.getDocumentElement().appendChild(gHistone);
		try{
		XmlWriter.writeSvg(document, file);
		}catch (Exception e) {
			// TODO: handle exception
		}
		ImageBeans beans=new ImageBeans();
		beans.setHeight((int)(GenomeImageGlobal.refGeneHeight+height+10));
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

	public List<SuperEnhancers> getListse() {
		return listse;
	}

	public void setListse(List<SuperEnhancers> listse) {
		this.listse = listse;
	}

	public List<Histone> getListHistone() {
		return listHistone;
	}

	public void setListHistone(List<Histone> listHistone) {
		this.listHistone = listHistone;
	}

	public int getMaxHistoneValue() {
		return MaxHistoneValue;
	}

	public void setMaxHistoneValue(int maxHistoneValue) {
		MaxHistoneValue = maxHistoneValue;
	}
	
}
