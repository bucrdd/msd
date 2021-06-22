package beans;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.batik.anim.dom.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.NTconservation;
import beans.Color;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class NTconservationSvg {

	private List<NTconservation> list;
	private int start;
	private int end;
	private String color=Color.grey;
	
	private Element getSiteMethElement(Document document){
		double width=GenomeImageGlobal.width;
		double height=35;
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double widthMin=width/(end-start);
		for(int i=0;i<list.size();i++){
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(height*(1-list.get(i).getMean())));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(widthMin>0.5?widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(height*list.get(i).getMean()));
			g.appendChild(rect);
		}
		return g;
	}
	
	public void createSvg(List<NTconservation> list,int start,int end,File file) throws IOException{

		Document document=SvgDomCreate.getDocument(GenomeImageGlobal.width, GenomeImageGlobal.refGeneHeight+10);
		this.setList(list);
		this.setStart(start);
		this.setEnd(end);
		Element js=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "script");
		js.setAttribute("type", "text/javascript");
		js.appendChild(document.createTextNode("function shuoVlue(vl){\n"+
				"var parentWnd=window.parent;\n"+
				"var go=parentWnd.document.getElementById(\"go\");\n"+
				"var position=parentWnd.document.getElementById(\"position\");\n"+
//				"alert(pisition.value);\n"+
				"position.value=vl;\n"+
				"go.onclick();\n"+
		"}"));
		document.getDocumentElement().appendChild(js);
		Element css=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "script");
		css.setAttribute("type", "text/javascript");
		css.appendChild(document.createTextNode("function shuoVlue(vl){\n"+
				"var parentWnd=window.parent;"+
		"var go=parentWnd.document.getElementById(\"go\");"+
		"var position=parentWnd.document.getElementById(\"position\");"+
		"position.Value=\"chr1:100-1000\";"+
					"alert(go);\n"+
		"}"));
		Element el=this.getSiteMethElement(document);
		el.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(5)+")");	
		document.getDocumentElement().appendChild(el);
        XmlWriter.writeSvg(document, file);
	}

	public List<NTconservation> getList() {
		return list;
	}

	public void setList(List<NTconservation> list) {
		this.list = list;
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

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
}
