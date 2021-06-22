package beans;

import java.io.File;
import java.io.IOException;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Color;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class ScaleCoordSvg {

	private int start;
	private int end;
	@SuppressWarnings("unused")
	private String chrom; 
	
	public Element getScaleCoordElement(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element line;
		Element element;
		String str="";
		int length=end-start;
		int max=10;

		for(int i=1;i<=max;i++){
		str=(start+(int)(length*i/max))+"";
		line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", Color.black);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(GenomeImageGlobal.width*i/max));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight/4));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(GenomeImageGlobal.width*i/max));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight*3/4));
		g.appendChild(line);
		
		element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
//		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+length*width/_MAX);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
		
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+((GenomeImageGlobal.width*i/max)-str.length()*7));
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight*4/5));
		element.appendChild(document.createTextNode(str));
		g.appendChild(element);
		}

		return g;
	}

	
	public void createSvg(int start,int end,File file) throws IOException{

		Document document=SvgDomCreate.getDocument(GenomeImageGlobal.width, GenomeImageGlobal.refGeneHeight);
		this.setStart(start);
		this.setEnd(end);
		if(end-start<10){}else{
		Element el=this.getScaleCoordElement(document);
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
