package beans;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.batik.anim.dom.SVGDOMImplementation;
import org.apache.batik.transcoder.TranscoderException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Color;
import beans.XmlWriter;
import beans.InitGlobal;
import beans.CytoBand;
import beans.BandDao;
import beans.SvgDomCreate;

public class ChromosomeBand {

	private int _MAX;
	private File file; 
	private double height=15;
	private double width=1120;
	private String species=InitGlobal.species;
	
	private static Map<String, String> map;
	/*
	gneg=#e3e3e3
	stalk=#7f7f7f
	gpos25=#8e8e8e
	gpos50=#555555
	gpos75=#4F4F4F
	gpos100=#393939
	acen=#963232
	gvar=#4F4F4F
	*/
	static{
		map=new HashMap<String, String>();
		map.put("gneg", "#e3e3e3");
		map.put("stalk", "#7f7f7f");
		map.put("acen", "#963232");
		map.put("gvar", "#4F4F4F");
		map.put("gpos33", "#8e8e8e");
		map.put("gpos66", "#555555");
		map.put("gpos25", "#8e8e8e");
		map.put("gpos50", "#555555");
		map.put("gpos75", "#4F4F4F");
		map.put("gpos100", "#393939");
		
		/*map.put("gpos100", "#000000");
		map.put("gneg", "#e3e3e3");
		map.put("gpos33", "#8e8e8e");
		map.put("gpos66", "#393939");
		map.put("gpos75", "#555555");*/
	}
	
	private List<CytoBand> list=null;
	
	public ChromosomeBand(List<CytoBand> list){
		this.setList(list);
	}
	
	
	@SuppressWarnings("unused")
	public Element getChromesomeBand(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element rect;
		Element element;
		int num=0;
		int length;
		InitGlobal.logger.info("����Element");
		_MAX=list.get(list.size()-1).getChromEnd();
		for(int i=0;i<list.size();i++){
			length=list.get(i).getChromEnd()-list.get(i).getChromStart();
			rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", map.get(list.get(i).getGieStain()));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+list.get(i).getChromStart()*width/_MAX);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+length*width/_MAX);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(this.height));
//			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "title", ""+list.get(i).getName()+" "+list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd());
			String vl=list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd();
			rect.setAttribute("onclick","shuoVlue('"+vl+"')");
			g.appendChild(rect);
			
			if(length*width/_MAX>list.get(i).getName().length()*5){
				double l=length*width/_MAX-list.get(i).getName().length()*5;
				element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
	//			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+length*width/_MAX);
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ((list.get(i).getGieStain().equals("gpos33")||list.get(i).getGieStain().equals("gpos66")||list.get(i).getGieStain().equals("gpos75")||list.get(i).getGieStain().equals("gvar")||list.get(i).getGieStain().equals("gpos100"))?Color.white:Color.black));
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
				
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getChromStart()*width/_MAX+l/2));
				element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(this.height-5));
				element.appendChild(document.createTextNode(list.get(i).getName()));
				g.appendChild(element);
			}
			num+=length*width/_MAX;
		}
		rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","#000000");
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill","none");
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", "0");
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+this.width);
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(this.height));
//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
		g.appendChild(rect);
		return g;
	}
	
	@SuppressWarnings("unused")
	public static void main(String[] args) throws IOException, TranscoderException{
		File file=new File("D:\\text.svg");

//		double width=900;
//		double height=20;
//		Document document=SvgDomCreate.getDocument(width, height);
//		BandDao cyto=new BandDao();
		
//		cyto.getListQueryByName("chrM");
//		ChromesomeBand chrom=new ChromesomeBand();
//		chrom.createChromosomeSvgFile(file, "chr1", 22295965, 312143520);
		
	}
	public void createChromosomeSvgFile(File file,int start,int end) throws IOException{

		double width=1120;
		double height=20;
		Document document=SvgDomCreate.getDocument(width, height+5);
		Element js=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "script");
		js.setAttribute("type", "text/javascript");
		js.appendChild(document.createTextNode("function shuoVlue(vl){\n"+
				"var parentWnd=window.parent;\n"+
				"var go=parentWnd.document.getElementById(\"go\");\n"+
				"var position=parentWnd.document.getElementById(\"position\");\n"+
//				"alert(position.value);\n"+
				"position.value=vl;\n"+
				"go.onclick();\n"+
		"}"));
		document.getDocumentElement().appendChild(js);
		
		Element g=this.getChromesomeBand(document);
		InitGlobal.logger.info("����g�ɹ�");
		Element gband=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element gall=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		g.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(2.5)+")");	
		int length=0;
		if(end>_MAX) length=_MAX-start;
		else length=end-start;
		Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke",Color.red);
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill","none");
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+start*(this.width)/_MAX);
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+length*(this.width)/_MAX);
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(height));
		gband.appendChild(g);
		gband.appendChild(rect);
		gband.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(130)+","+(0)+")");	
		gall.appendChild(gband);
		if(list.size()>0){
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
	//		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+100);
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
			String str=list.get(0).getChrom();
			BandDao cyto=new BandDao();
			String name1=cyto.getQueryNameByPosition(InitGlobal.SpeciesMap.get(species),list.get(0).getChrom(),start);
			String name2=cyto.getQueryNameByPosition(InitGlobal.SpeciesMap.get(species),list.get(0).getChrom(),end);
			if(name1.equals(name2)||name2==null){
				str+="("+name1+")";
			}else{
				str+="("+name1+"-"+name2+")";
			}
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(130-str.length()*6.5));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(this.height-2.5));
			element.appendChild(document.createTextNode(str));
			gall.appendChild(element);
		}
		gall.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(2.5)+")");	
		document.getDocumentElement().appendChild(gall);
        XmlWriter.writeSvg(document, file);
	}

	public void set_MAX(int _MAX) {
		this._MAX = _MAX;
	}

	public int get_MAX() {
		return _MAX;
	}





	public void setList(List<CytoBand> list) {
		this.list = list;
	}





	public List<CytoBand> getList() {
		return list;
	}





	public void setFile(File file) {
		this.file = file;
	}





	public File getFile() {
		return file;
	}
	
	
}
