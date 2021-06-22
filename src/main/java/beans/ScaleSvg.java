package beans;

import java.io.File;
import java.io.IOException;

import org.apache.batik.anim.dom.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.InitGlobal;
import beans.Color;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class ScaleSvg {

	private int start;
	private int end;
	private String species;
	
	public Element getScaleElement(Document document){
		species=InitGlobal.species;
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element line;
		Element element;
		String str="";
		int length=end-start;
		double widthMin=GenomeImageGlobal.width/length;
		
		if(length>30000){
			str=(int)(length/30000)+" Mb";
		}else if(length>3000){
			str=(int)(length/3000)+" kb";
		}else if(length<3000){
			str=(int)(length/3)+" base";
		}
		
		line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", Color.black);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(GenomeImageGlobal.width/2-((int)(length/3)*widthMin)/2));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight/2));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(GenomeImageGlobal.width/2+((int)(length/3)*widthMin)/2));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
		g.appendChild(line);
		
		line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", Color.black);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(GenomeImageGlobal.width/2-((int)(length/3)*widthMin)/2));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight/3));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(GenomeImageGlobal.width/2-((int)(length/3)*widthMin)/2));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight*2/3));
		g.appendChild(line);
		
		line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", Color.black);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(GenomeImageGlobal.width/2+((int)(length/3)*widthMin)/2));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight/3));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(GenomeImageGlobal.width/2+((int)(length/3)*widthMin)/2));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight*2/3));
		g.appendChild(line);
		

		
		element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
//		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+length*width/_MAX);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
		
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+((GenomeImageGlobal.width/2-((int)(length/3)*widthMin)/2)-str.length()*8));
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight*4/5));
		element.appendChild(document.createTextNode(str));
		g.appendChild(element);
		
		element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
//		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+length*width/_MAX);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
		
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+((GenomeImageGlobal.width/2+((int)(length/3)*widthMin)/2)+5));
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight*4/5));
		if (species.equals("Human")){
			element.appendChild(document.createTextNode("hg19"));
		}else if (species.equals("Mouse")){
			element.appendChild(document.createTextNode("mm9"));
		}else if (species.equals("rat")){
			element.appendChild(document.createTextNode("rn5"));
		}else if (species.equals("pig")){
			element.appendChild(document.createTextNode("susscr3"));
		}else if (species.equals("ovis")){
			element.appendChild(document.createTextNode("oviari1"));
		}else if (species.equals("canis")){
			element.appendChild(document.createTextNode("canfam3"));
		}else if (species.equals("cow")){
			element.appendChild(document.createTextNode("bostau7"));
		}else if (species.equals("rabbit")){
			element.appendChild(document.createTextNode("orycun2"));
		}
		g.appendChild(element);
		
		return g;
	}

	
	public void createSvg(int start,int end,File file) throws IOException{

		Document document=SvgDomCreate.getDocument(GenomeImageGlobal.width, GenomeImageGlobal.refGeneHeight);
		this.setStart(start);
		this.setEnd(end);
		if(end-start<10){}else{
		Element el=this.getScaleElement(document);
//		el.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(5)+")");	
		document.getDocumentElement().appendChild(el);
		}
        XmlWriter.writeSvg(document, file);
	}
	
	
	public void setEnd(int end) {
		this.end = end;
	}

	public int getEnd() {
		return end;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getStart() {
		return start;
	}
}
