package beans;

import java.io.File;
import java.util.List;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.TFsChIPseq;
import beans.ImageBeans;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class TFsChIPseqSvg {

	private double width=GenomeImageGlobal.width;
	private double height=35;
	private List<TFsChIPseq> listTFsChIPseq;
	
	private int start;
	private int end;
	private int MaxTFValue;
	
	public Element getElementHistone(Document document){
		
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double widthMin=width/(end-start);
		for(int i=0;i<listTFsChIPseq.size();i++){
			//System.out.println(listExpression.get(i).getExpressionValue()+"	"+MaxExpressionValue);
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "#999999");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(listTFsChIPseq.get(i).getStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(height*((1-listTFsChIPseq.get(i).getTFValue()/MaxTFValue)>0.01?(1-listTFsChIPseq.get(i).getTFValue()/MaxTFValue):0.01)));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(widthMin>0.5?widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(height*((listTFsChIPseq.get(i).getTFValue()/MaxTFValue)<0.99?(listTFsChIPseq.get(i).getTFValue()/MaxTFValue):0.99)));
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

	public List<TFsChIPseq> getListTFsChIPseq() {
		return listTFsChIPseq;
	}

	public void setListTFsChIPseq(List<TFsChIPseq> listTFsChIPseq) {
		this.listTFsChIPseq = listTFsChIPseq;
	}

	public int getMaxTFValue() {
		return MaxTFValue;
	}

	public void setMaxTFValue(int maxTFValue) {
		MaxTFValue = maxTFValue;
	}
	
}
