package beans;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.SuperEnhancers;
import beans.Color;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class SuperEnhancerSvg {

	private List<SuperEnhancers> list;
	private int start;
	private int end;
	private String color=Color.orange;
	private String col;
	
	private String getColor(double value){
		int r=(int)(value*255);
		if(r<256){
			return "rgb("+r+","+(255-r)/2+","+(255-r)+")";
		}else{
			return "rgb(255,165,0)"; 
		}
	}
	
	private Element getSuperEnhancersElement(Document document){
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
			
			//String seColor="";
			/*if(!list.get(i).getMean().equals("-")){
				seColor=getColor(Double.parseDouble(list.get(i).getMean()));
			}else{
				seColor="rgb(255,165,0)";
			}*/
			//rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
			// = "#FF1493"
			if(list.get(i).getMark().equals("SE")){
				this.setCol("#FF0000");
			}else{
				this.setCol("#3871C1");
			}
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", this.getCol());
			//rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "#3871C1");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(list.get(i).getLength()*widthMin>0.5?list.get(i).getLength()*widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight));
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", Color.green);
			//System.out.println(list.get(i).getName());
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "title", ""+(list.get(i).getName()));

			a.appendChild(rect);
			g.appendChild(a);
		}
		return g;
	}
	
	public void createSvg(List<SuperEnhancers> list,int start,int end,File file) throws IOException{

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
		Element el=this.getSuperEnhancersElement(document);
		el.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(5)+")");	
		document.getDocumentElement().appendChild(el);
        XmlWriter.writeSvg(document, file);
	}

	public List<SuperEnhancers> getList() {
		return list;
	}

	public void setList(List<SuperEnhancers> list) {
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

	public String getCol() {
		return col;
	}

	public void setCol(String col) {
		this.col = col;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
}
