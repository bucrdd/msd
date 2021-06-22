package beans;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.batik.anim.dom.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.TFBS;
import beans.Color;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class TranscriptionFactorSvg {

	private List<TFBS> list;
	private int start;
	private int end;
	private String color=Color.grey;
	
	private Element getCpGisLandElement(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element rect;
		int length=end-start;
		double widthMin=GenomeImageGlobal.width/length;
		
		for(int i=0;i<list.size();i++){
//			genomeBrowseViewPage.action?position=chr1:3000000-4001001
			Element a=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "a");
			
//			a.setAttribute("xlink:href", "genomeBrowseViewPage.action?position="+list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd());
			String vl=list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd();
			a.setAttribute("onclick","shuoVlue('"+vl+"')");
			rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getChromStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(Math.abs(list.get(i).getChromEnd()-list.get(i).getChromStart())*widthMin>0.5?Math.abs(list.get(i).getChromEnd()-list.get(i).getChromStart())*widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight));
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			//System.out.println(list.get(i).getName());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "title", ""+(list.get(i).getName()));
			
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			double space = 0;
			if (i==0){
				space = (list.get(i).getChromStart()-start)*widthMin;
			}else{
				space = (list.get(i).getChromStart()-list.get(i-1).getChromEnd())*widthMin;
			}
			if (space >= (list.get(i).getName().length()*6+10)){
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+((list.get(i).getChromStart()-start)*widthMin-list.get(i).getName().length()*6-10));
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight*4/5));
				element.appendChild(document.createTextNode(list.get(i).getName()));
			}

			a.appendChild(rect);
			g.appendChild(a);
			g.appendChild(element);
		}
		return g;
	}
	
	public void createSvg(List<TFBS> list,int start,int end,File file) throws IOException{

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

	public List<TFBS> getList() {
		return list;
	}

	public void setList(List<TFBS> list) {
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
