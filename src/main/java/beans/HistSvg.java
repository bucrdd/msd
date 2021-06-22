package beans;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.batik.anim.dom.SVGDOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Histone;
import beans.Axis;
import beans.Histogram;
import beans.Color;
import beans.Font;
import beans.Point;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;
import beans.MathStas;

public class HistSvg {

	private double width;
	private double height;
	private double ymax=1;
	
	private double[] data;
	private double[] region;

	private String histColor=Color.brown;
	private double opacity=0.7;
	private List<Histone> list=null;
	
	private String getColor(double value){
		int r=(int)(value*255);
		if(r<256){
			return "rgb("+r+","+(256-r)+",0)";
		}else{
			return "rgb(0,0,0)"; 
		}
	}
	
	public Element getHistElement(Document document,int start,int end){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		double win=width/(end-start);
		double hin=height/ymax;
//		System.out.println("ymax"+ymax+"\tlistSize:"+list.size());
		for(int i=0;i<list.size();i++){
//			System.out.println(i);
			if(list.get(i)!=null){
			Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", getColor(list.get(i).getHistoneValue()));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+((list.get(i).getStart()-start)*win));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(height-(list.get(i).getHistoneValue()*hin)));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(list.get(i).getEnd()-list.get(i).getStart())*win);
	 		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(list.get(i).getHistoneValue()*hin));
	 		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "title", ""+(list.get(i).getHistoneValue()));
			g.appendChild(rect);
			}
//			System.out.println("--"+i);
		}
		return g;
	}

	
	public Element getHistElement(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Axis axis=new Axis();
		axis.setWidth(getWidth());
		Point point=new Point(0,height);
		axis.setPoint(point);
		axis.setHeight(height);
		axis.setyLength(1);
		axis.setyMax(ymax);
//		axis.setPoint(point);
		axis.setSeal(false);
		Font font=new Font();
		font.setName("sans-serif");
		font.setSize(11);
		axis.setFont(font);
		g.appendChild(axis.getAxisYDouble(document));;
		point=axis.getPoint();
		Histogram histogram=new Histogram();
		histogram.setHistColor(getHistColor());
		histogram.setOpacity(getOpacity());
		histogram.setHeight(point.getY()-axis.getSpace());
		histogram.setWidth(axis.getWidth()-point.getX()-axis.getSpace());
//		histogram.setMaxX(getMaxX());
		histogram.setData(getData());
		histogram.setMax(getYmax());
		Element element=histogram.getHist(getData(),region, document);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(point.getX())+","+axis.getSpace()+")");	
		g.appendChild(element);
		
		return g;
	}

	
	public double[] getRegion() {
		return region;
	}

	public void setRegion(double[] region) {
		this.region = region;
	}





	public List<Histone> getList() {
		return list;
	}


	public void setList(List<Histone> list) {
		this.list = list;
	}


	public double getOpacity() {
		return opacity;
	}



	public void setOpacity(double opacity) {
		this.opacity = opacity;
	}



	public String getHistColor() {
		return histColor;
	}



	public void setHistColor(String histColor) {
		this.histColor = histColor;
	}

	public void create(File file) throws IOException{
		Document document=SvgDomCreate.getDocument(GenomeImageGlobal.width, GenomeImageGlobal.histoneHeight+10);
		Element el=this.getHistElement(document);
		el.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(5)+")");	
		document.getDocumentElement().appendChild(el);
		XmlWriter.writeSvg(document, file);
	}
	
	public void create(File file,int start,int end) throws IOException{
		Document document=SvgDomCreate.getDocument(GenomeImageGlobal.width, GenomeImageGlobal.histoneHeight+10);
		//System.out.println("svgStart");
		Element el=this.getHistElement(document,start,end);
		//System.out.println("svgEnd");
		el.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(5)+")");	
		document.getDocumentElement().appendChild(el);
		XmlWriter.writeSvg(document, file);
	}

 
	@SuppressWarnings("unused")
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		File file=new File("D:/text.svg");

		double width=800;
		double height=100;
		double[][] data=new double[2][1000];
		double[] region=new double[1000];
		double max;
		for(int i=0;i<data.length;i++){
			for(int j=0;j<data[i].length;j++){
			data[i][j]=Math.random()*100;
			region[j]=Math.random()*10;
			}
		}
		max=MathStas.getMaxs(data);
		Document document=SvgDomCreate.getDocument(width+30, height+10);
		HistSvg histogramSvgDom=new HistSvg();
		histogramSvgDom.setRegion(region);
		histogramSvgDom.setYmax(90);
		histogramSvgDom.setHeight(height);
		histogramSvgDom.setWidth(width);
		histogramSvgDom.setData(data[0]);
		histogramSvgDom.setHistColor(Color.grey);
		Element g=histogramSvgDom.getHistElement(document);
		g.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(30)+","+0+")");	
		document.getDocumentElement().appendChild(g);

        XmlWriter.writeSvg(document, file);
		
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



	public double getYmax() {
		return ymax;
	}



	public void setYmax(double ymax) {
		this.ymax = ymax;
	}



	public double[] getData() {
		return data;
	}



	public void setData(double[] data) {
		this.data = data;
	}
	
	
	
}
