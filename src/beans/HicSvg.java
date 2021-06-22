package beans;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.SuperEnhancers;
import beans.Hic;
import beans.ImageBeans;
import beans.Color;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class HicSvg {
	private List<Hic> listhic;
	private List<SuperEnhancers> listse;
	private int MaxHicValue;
	private int start;
	private int end;
	private double width=GenomeImageGlobal.width;
	private double height=25;
	private String color=Color.orange;
	
	private String getColor(double value){
		int r=(int)(value*255/500);
		/*if(r<256){
			//return "rgb("+r+","+(255-r)/2+","+(255-r)+")";
			return "rgb(255,165,"+r+")";
		}else{
			return "rgb(255,165,255)"; 
		}*/
		if(r<64){
			r = 128 + r;
			//return "rgb("+r+","+(255-r)/2+","+(255-r)+")";
			return "rgb("+r+","+r+","+r+")";
		}else{
			return "rgb(192,192,192)"; 
		}
	}
	
	public Element getElementSE(Document document){		
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double widthMin=width/(end-start);
		for(int i=0;i<listse.size();i++){
			String col = this.getColor(listhic.get(i).getHicValue());
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			//rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "#3871C1");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", col);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(listse.get(i).getStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/4));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+((listse.get(i).getEnd()-listse.get(i).getStart())*widthMin>0.5?(listse.get(i).getEnd()-listse.get(i).getStart())*widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight*3/4));
			g.appendChild(rect);
		}		
		return g;
	}
	
	public Element getElementHic(Document document){
		
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double widthMin=width/(end-start);
		for(int i=0;i<listhic.size();i++){
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "#FB8E00");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(listhic.get(i).getStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(height*((1-listhic.get(i).getHicValue()/MaxHicValue)>0.01?(1-listhic.get(i).getHicValue()/MaxHicValue):0.01)));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(widthMin>0.5?widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(height*((listhic.get(i).getHicValue()/MaxHicValue)<0.99?(listhic.get(i).getHicValue()/MaxHicValue):0.99)));
			g.appendChild(rect);
		}
		return g;
	}
	
	public ImageBeans createImage(File file){
		Document document=SvgDomCreate.getDocument(GenomeImageGlobal.width, GenomeImageGlobal.refGeneHeight+height+5);
		Element gSE=getElementSE(document);
		Element gHistone=getElementHic(document);
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
	
	/*private Element getHicElement(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element rect;
		int length=end-start;
		double widthMin=GenomeImageGlobal.width/length;
		for(int i=0;i<list.size();i++){
			Element a=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "a");
			String vl=list.get(i).getChrom()+":"+list.get(i).getStart()+"-"+list.get(i).getEnd();
			a.setAttribute("onclick","shuoVlue('"+vl+"')");
			rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			
			String hicColor=getColor(list.get(i).getHicValue());
			if(!list.get(i).getMean().equals("-")){
				seColor=getColor(Double.parseDouble(list.get(i).getMean()));
			}else{
				seColor="rgb(255,165,0)";
			}
			//rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", seColor);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "#3871C1");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getStart()-start)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+((list.get(i).getEnd()-list.get(i).getStart())*widthMin>0.5?(list.get(i).getEnd()-list.get(i).getStart())*widthMin:0.5));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight));
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			//System.out.println(list.get(i).getName());
			//rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "title", ""+(list.get(i).getName()));

			a.appendChild(rect);
			g.appendChild(a);
		}
		
		return g;
	}
	
	
	public void createSvg(List<Hic> list,int start,int end,File file) throws IOException{

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
		Element el=this.getHicElement(document);
		el.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(5)+")");	
		document.getDocumentElement().appendChild(el);
        XmlWriter.writeSvg(document, file);
	}*/
	
	
	
	public int getStart() {
		return start;
	}
	public List<Hic> getListhic() {
		return listhic;
	}

	public void setListhic(List<Hic> listhic) {
		this.listhic = listhic;
	}

	public List<SuperEnhancers> getListse() {
		return listse;
	}

	public void setListse(List<SuperEnhancers> listse) {
		this.listse = listse;
	}

	public int getMaxHicValue() {
		return MaxHicValue;
	}

	public void setMaxHicValue(int maxHicValue) {
		MaxHicValue = maxHicValue;
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
