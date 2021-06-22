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


public class CentromereBandSvg {

	private String species=InitGlobal.species;
	private static Map<String, String> map;
	static{
		map=new HashMap<String, String>();
		map.put("gneg", "#e3e3e3");
		map.put("gpos25", "#8e8e8e");
		map.put("stalk", "#7f7f7f");
		map.put("gpos50", "#555555");
		map.put("gpos75", "#4F4F4F");
		map.put("gpos100", "#393939");
		map.put("acen", "#963232");
		map.put("gvar", "#4F4F4F");
	}
	
	private int _MAX;
	private List<CytoBand> list;
	@SuppressWarnings("unused")
	private File file; 
	private double height=15;
	private double width=1120;
	
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
			
			if(list.get(i).getGieStain().equals("acen")){
				
				if(list.get(i).getName().indexOf("p")>-1){
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","#000000");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", "0");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(list.get(i).getChromStart()*width/_MAX));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(this.height));
//					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
					g.appendChild(rect);
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "path");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", map.get(list.get(i).getGieStain()));
					String d="";
					d="M"+(list.get(i).getChromStart()*width/_MAX)+" "+0+
					" L"+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)+" "+(this.height/2)+
					" L"+(list.get(i).getChromStart()*width/_MAX)+" "+(this.height)+" Z";
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "d", d);
					g.appendChild(rect);
				}else{
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","#000000");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(this.width-(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(this.height));
//					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
					g.appendChild(rect);
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "path");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", map.get(list.get(i).getGieStain()));
					String d="";
					d="M"+(list.get(i).getChromStart()*width/_MAX)+" "+(this.height/2)+
					" L"+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)+" "+(0)+
					" L"+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)+" "+(this.height)+" Z";
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "d", d);
					g.appendChild(rect);
				}
				g.appendChild(rect);
			}else{
			rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", map.get(list.get(i).getGieStain()));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+list.get(i).getChromStart()*width/_MAX);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+length*width/_MAX);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(this.height));
//			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			g.appendChild(rect);
			
			if(length*width/_MAX>list.get(i).getName().length()*5){
			double l=length*width/_MAX-list.get(i).getName().length()*5;
			element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+length*width/_MAX);
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ((list.get(i).getGieStain().equals("gpos50")||list.get(i).getGieStain().equals("gpos75")||list.get(i).getGieStain().equals("gvar")||list.get(i).getGieStain().equals("gpos100"))?Color.white:Color.black));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
			
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getChromStart()*width/_MAX+l/2));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(this.height-5));
			element.appendChild(document.createTextNode(list.get(i).getName()));
			g.appendChild(element);
			}
			}
			num+=length*width/_MAX;
		}

		return g;
	}
	
	
	@SuppressWarnings("unused")
	public Element getChromesomeBandJs(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element rect;
		Element element;
		int num=0;
		int length;
		InitGlobal.logger.info("����Element");
		for(int i=0;i<list.size();i++){
			length=list.get(i).getChromEnd()-list.get(i).getChromStart();
			if(list.get(i).getGieStain().equals("acen")){
				Element a=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "a");
				
//				a.setAttribute("xlink:href", "genomeBrowseViewPage.action?position="+list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd());
				String vl=list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd();
				a.setAttribute("onclick","shuoVlue('"+vl+"')");
				a.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "title", ""+list.get(i).getName()+" "+list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd());
//				a.appendChild(rect);
				if(list.get(i).getName().indexOf("p")>-1){
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","#393939");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(0));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(list.get(i).getChromStart()*width/_MAX));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(this.height));
//					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
					a.appendChild(rect);
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "path");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", map.get(list.get(i).getGieStain()));
					String d="";
					d="M"+(list.get(i).getChromStart()*width/_MAX)+" "+0+
					" L"+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)+" "+(this.height/2)+
					" L"+(list.get(i).getChromStart()*width/_MAX)+" "+(this.height)+" Z";
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "d", d);
					a.appendChild(rect);
				}else{
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","#393939");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(list.get(list.size()-1).getChromEnd()*width/_MAX-(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(this.height));
//					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
					a.appendChild(rect);
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "path");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", map.get(list.get(i).getGieStain()));
					String d="";
					d="M"+(list.get(i).getChromStart()*width/_MAX)+" "+(this.height/2)+
					" L"+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)+" "+0+
					" L"+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)+" "+(this.height)+" Z";
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "d", d);
					a.appendChild(rect);
				}
				g.appendChild(a);
			}else{
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
				Element a=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "a");
				
	//			a.setAttribute("xlink:href", "genomeBrowseViewPage.action?position="+list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd());
				String vl=list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd();
				a.setAttribute("onclick","shuoVlue('"+vl+"')");
				a.appendChild(rect);
				
				if(length*width/_MAX>list.get(i).getName().length()*5){
					double l=length*width/_MAX-list.get(i).getName().length()*5;
					element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
					/*element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+length*width/_MAX);*/
					element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
					element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
					element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
					element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
					element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", ((list.get(i).getGieStain().equals("gpos50")||list.get(i).getGieStain().equals("gpos75")||list.get(i).getGieStain().equals("gvar")||list.get(i).getGieStain().equals("gpos100"))?Color.white:Color.black));
					element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
					
					element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getChromStart()*width/_MAX+l/2));
					element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(this.height-5));
					element.appendChild(document.createTextNode(list.get(i).getName()));
					a.appendChild(element);
				}
				g.appendChild(a);
			}
			num+=length*width/_MAX;
		}

		return g;
	}
	
	@SuppressWarnings("unused")
	public Element getChromesomeBandJsNone(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element rect;
		Element element;
		int num=0;
		int length;
		InitGlobal.logger.info("����Element");
		for(int i=0;i<list.size();i++){
			length=list.get(i).getChromEnd()-list.get(i).getChromStart();
			//System.out.print(list.get(i).getGieStain()+"---"+map.get(list.get(i).getGieStain()));
			if(list.get(i).getGieStain().equals("acen")){
				Element a=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "a");
				String vl=list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd();
				a.setAttribute("onclick","shuoVlue('"+vl+"')");
				a.setAttribute("onclick","shuoVlue('"+vl+"')");
//				a.appendChild(rect);
				if(list.get(i).getName().indexOf("p")>-1){
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","#000000");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", "0");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(list.get(i).getChromStart()*width/_MAX));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(this.height));
//					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rx","3");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "ry","3");

					g.appendChild(rect);
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "path");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", map.get(list.get(i).getGieStain()));
					String d="";
					d="M"+(list.get(i).getChromStart()*width/_MAX-1)+" "+0+
					" L"+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)+" "+(this.height/2)+
					" L"+(list.get(i).getChromStart()*width/_MAX-1)+" "+(this.height)+" Z";
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "d", d);
					a.setAttribute("xlink:href", "genomeBrowseViewPage.action?position="+list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd());

					a.appendChild(rect);
				}else{
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","#000000");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(0));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(list.get(list.size()-1).getChromEnd()*width/_MAX-(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(this.height));
//					="20" ry="20"
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rx","3");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "ry","3");
					g.appendChild(rect);
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "path");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", map.get(list.get(i).getGieStain()));
					String d="";
					d="M"+(list.get(i).getChromStart()*width/_MAX)+" "+(this.height/2)+
					" L"+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)+" "+(0)+
					" L"+(list.get(i).getChromStart()*width/_MAX+length*width/_MAX)+" "+(this.height)+" Z";
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "d", d);
					a.setAttribute("xlink:href", "genomeBrowseViewPage.action?position="+list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd());

					a.appendChild(rect);
				}
				
				
				g.appendChild(a);
			}else{
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
			Element a=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "a");
			a.setAttribute("xlink:href", "genomeBrowseViewPage.action?position="+list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd());
//			a.setAttribute("xlink:href", "genomeBrowseViewPage.action?position="+list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd());
			String vl=list.get(i).getChrom()+":"+list.get(i).getChromStart()+"-"+list.get(i).getChromEnd();
			a.setAttribute("onclick","shuoVlue('"+vl+"')");
			a.appendChild(rect);
			g.appendChild(a);
			}
			num+=length*width/_MAX;
		}

		return g;
	}
	
	public static void main(String[] args) throws IOException, TranscoderException{
		File file=new File("D:\\chromosome.svg");

		CentromereBandSvg bandSvg=new CentromereBandSvg();
//		BandDao bandDao=new BandDao();
//		List<CytoBand> list=bandDao.getListQueryByName("chr13");
//		bandSvg.setBandList(list);
//		double width=900;
//		double height=20;
//		Document document=SvgDomCreate.getDocument(width, height);
//		BandDao cyto=new BandDao();
//		bandSvg.createChromosomeSvgFile(file, 0, 1000000);
		bandSvg.createAllChromosomeSvgFile(file);
//		cyto.getListQueryByName("chrM");
//		ChromesomeBand chrom=new ChromesomeBand();
//		chrom.createChromosomeSvgFile(file, "chr1", 22295965, 312143520);
		
	}
	
	@SuppressWarnings("unused")
	public void createAllChromosomeSvgFile(File file) throws IOException{

		double width=1120;
		double lineheight=30;
		double height=24*lineheight;

		this.width=500;
		this.height=15;
		Document document=SvgDomCreate.getDocument(height+5, this.width+50);
//		Element g=this.getChromesomeBand(document);
		
		Element js=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "script");
		js.setAttribute("type", "text/javascript");
		js.appendChild(document.createTextNode("function shuoVlue(vl){\n"+
				"alert(vl);\n"+
		"}"));
		document.getDocumentElement().appendChild(js);
		
		
		InitGlobal.logger.info("����g�ɹ�");
		Element gband;
		BandDao bandDao=new BandDao();
		Element gall=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		String chrom;
		Element element;
		for(int i=1;i<23;i++){
			chrom="chr"+i;
			this.list=bandDao.getListQueryByName(InitGlobal.SpeciesMap.get(species),chrom);
			if(i==1) _MAX=list.get(list.size()-1).getChromEnd();
			gband=this.getChromesomeBandJsNone(document);
			element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
			
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(lineheight*(i-1)));
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(this.height+5));
			element.appendChild(document.createTextNode(""+i));
			gband.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "rotate(-90,"+(0)+","+(this.height/2)+") translate("+(0)+","+(lineheight*(i-1)+4)+")");	
//			gband.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(lineheight*(i-1))+","+(this.width+50)+")");	
//			gband.appendChild(element);
			gall.appendChild(element);
			gall.appendChild(gband);
		}
		chrom="chrX";
		this.list=bandDao.getListQueryByName(InitGlobal.SpeciesMap.get(species),chrom);
		gband=this.getChromesomeBandJsNone(document);
		element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
		
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(lineheight*22));
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(this.height+5));
		element.appendChild(document.createTextNode("X"));
		gband.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "rotate(-90,"+(0)+","+(this.height/2)+") translate("+(0)+","+(lineheight*22+4)+")");	

		gall.appendChild(element);
		gall.appendChild(gband);
		
		chrom="chrY";
		this.list=bandDao.getListQueryByName(InitGlobal.SpeciesMap.get(species),chrom);
		gband=this.getChromesomeBandJsNone(document);
		element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", Color.black);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
		
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(lineheight*23));
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(this.height+5));
		element.appendChild(document.createTextNode("Y"));
		gband.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "rotate(-90,"+(0)+","+(this.height/2)+") translate("+(0)+","+(lineheight*23+4)+")");	

		gall.appendChild(element);
		gall.appendChild(gband);

		gall.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(10)+","+(this.width+10)+")");	
		document.getDocumentElement().appendChild(gall);
        XmlWriter.writeSvg(document, file);
	}
	
	
	public void createChromosomeSvgFile(File file,int start,int end) throws IOException{

		double width=1120;
		double height=20;
		Document document=SvgDomCreate.getDocument(width, height+5);
		_MAX=list.get(list.size()-1).getChromEnd();
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

		Element g=this.getChromesomeBandJs(document);
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
			/*element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+130);*/
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
	
	
	public List<CytoBand> getBandList() {
		return list;
	}

	public void setBandList(List<CytoBand> list) {
		this.list = list;
	}
	
	
	
	
	
}
