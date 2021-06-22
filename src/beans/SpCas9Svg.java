package beans;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.SpCas9;
import beans.Color;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class SpCas9Svg {

	private List<SpCas9> list;
	private int start;
	private int end;
	private String color=Color.red;
	
	private Element getCpGisLandElement(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element rect;
		int length=end-start;
		double widthMin=GenomeImageGlobal.width/length;
		
		for(int i=0;i<list.size();i++){
//			genomeBrowseViewPage.action?position=chr1:3000000-4001001
			Element a=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "a");
			
//			a.setAttribute("xlink:href", "genomeBrowseViewPage.action?position="+list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd());
			String vl=list.get(i).getChrom()+":"+list.get(i).getStart()+"-"+list.get(i).getEnd();
			a.setAttribute("onclick","shuoVlue('"+vl+"')");
			rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+((list.get(i).getEnd()-list.get(i).getStart())*widthMin>0.5?(list.get(i).getEnd()-list.get(i).getStart())*widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight));
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			//System.out.println(list.get(i).getName());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "title", ""+(list.get(i).getSeedSeq()));

			a.appendChild(rect);
			g.appendChild(a);
		}
		return g;
	}
	
	public void createSvg(List<SpCas9> list,int start,int end,File file) throws IOException{

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
		Element el=this.getCpGisLandElement(document);
		el.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(5)+")");	
		document.getDocumentElement().appendChild(el);
        XmlWriter.writeSvg(document, file);
	}

	public List<SpCas9> getList() {
		return list;
	}

	public void setList(List<SpCas9> list) {
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
