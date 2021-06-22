package beans;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.apache.batik.transcoder.TranscoderException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Genome;
import beans.GenomeDao;
import beans.Color;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class GenomeSvg {

	
	private Genome genome;
	private int txStart;
	private int txEnd;
	private String color=Color.black;
	
	public Element getGenomeElement(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element line;
		Element rect;
		Element element;
		int length=txEnd-txStart;
		double widthMin=GenomeImageGlobal.width/length;//globalWidth:1120
		line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
		//stroke��fill�������ɶ��
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", color);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
		//System.out.println((refGene));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(genome.getTxStart()-txStart)*widthMin);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight/2));// ""+(GenomeImageGlobal.refGeneHeight/2)
		//line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight*2/5));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(genome.getTxEnd()-txStart)*widthMin);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
		//line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight*2/5));
		g.appendChild(line); 
		//����������Ϊ��ʲô
		/*double w=(genome.getTxEnd()-genome.getTxStart())*widthMin;
		int l=(int)(w*4/GenomeImageGlobal.refGeneHeight);
		if(genome.getStrand().equals("+")){
			for(int i=0;i<l;i++){ 
				if(((genome.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4)>=0&&
						((genome.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4)<=GenomeImageGlobal.width){
					line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", color);
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+((genome.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight/3));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+((genome.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity","0.5");
					g.appendChild(line);
					line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", color);
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+((genome.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight*2/3));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+((genome.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity","0.5");
					g.appendChild(line);
				}
			}
		}else{
			for(int i=0;i<l;i++){
				if(((genome.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4)>=0&&
						((genome.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4)<=GenomeImageGlobal.width){
					line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", color);
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+((genome.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight/3));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+((genome.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity","0.5");
					g.appendChild(line);
					line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", color);
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+((genome.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight*2/3));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+((genome.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity","0.5");
					g.appendChild(line);
				}
			}
		}*/
		int[][] index=this.getIndex();
		/*boolean min=false;
		if(genome.getCdsStart()<genome.getCdsEnd()&&genome.getCdsStart()<genome.getTxEnd()){
			min=true;
			rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(genome.getTxStart()-txStart)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/4));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(genome.getCdsStart()-genome.getTxStart())*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight/2));
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			g.appendChild(rect);
	//		System.out.println((refGene.getCdsEnd()+"\t"+refGene.getCdsStart()));
			if(genome.getCdsEnd()>=index[index.length-1][1]){
				rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(genome.getCdsEnd()-txStart)*widthMin);
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/4));
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(genome.getTxEnd()-genome.getCdsEnd())*widthMin);
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight/2));
		//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
		//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
				g.appendChild(rect);
			}
		}*/
		
		
		for(int i=0;i<index.length;i++){
			rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill",color);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(genome.getTxStart()+index[i][0]-txStart)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(index[i][1]-index[i][0])*widthMin);
			//rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight/2));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/4));
			//rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight*2/5));
			//rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/30));
			//rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", "0");
			/*if(min){
				if(genome.getCdsEnd()>=index[index.length-1][1]){
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(index[i][1]-index[i][0])*widthMin);
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", "0");
				}else{
					if(index[i][0]<genome.getCdsEnd()&&index[i][1]>genome.getCdsEnd()){
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(genome.getCdsEnd()-index[i][0])*widthMin);
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight));
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", "0");
						g.appendChild(rect);
						rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill",color);
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(genome.getCdsEnd()-txStart)*widthMin);
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(index[i][1]-genome.getCdsEnd())*widthMin);
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/4));
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight/2));
					}else{
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(index[i][1]-index[i][0])*widthMin);
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/4));
						rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight/2));
				}}
			}else{
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(index[i][1]-index[i][0])*widthMin);
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/4));
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight/2));
			}*/
//			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			g.appendChild(rect);
		}
		element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
//		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+length*width/_MAX);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");//�Ƿ�����޸������С11px
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
		//*****************
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+((genome.getTxStart()-txStart)*widthMin-genome.getName().length()*6-10));
		//element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/2));
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight*4/5));
		//**********************
		element.appendChild(document.createTextNode(genome.getName()));
		g.appendChild(element);
		return g;
	}
	
	private int[][] getIndex(){
		int[][] index=new int[genome.getExonCount()][2];
		String st=new String(genome.getExonStarts());
		String et=new String(genome.getExonEnds());
		String[] sts=st.split(",");
		String[] ets=et.split(",");
		for(int i=0;i<genome.getExonCount();i++){
			index[i][0]=Integer.parseInt(sts[i]);
			index[i][1]=Integer.parseInt(ets[i]);
		}
		return index;
	}
	
	/*private int[][] getIndex(){
		int[][] index=new int[genome.getExonCount()][2];
		String st=new String(genome.getExonStarts());
		String et=new String(genome.getExonEnds());
		String[] sts=st.split(",");
		String[] ets=et.split(",");
		if(genome.getCdsStart()<genome.getCdsEnd()&&genome.getCdsStart()<genome.getTxEnd()){
			//index��һ�д��cdsstart,�Լ���һ��exonends
			index[0][0]=genome.getCdsStart();
			index[0][1]=Integer.parseInt(ets[0]);
			//������ÿһ�ж����exonstart��exonend
			for(int i=1;i<genome.getExonCount()-1;i++){
				index[i][0]=Integer.parseInt(sts[i]);
				index[i][1]=Integer.parseInt(ets[i]);
			}
			//���һ�д�����һ��exonstart,���cdsend�������һ��exonend����ô���һ�еڶ��д��cdsend������������exonend
			index[genome.getExonCount()-1][0]=Integer.parseInt(sts[genome.getExonCount()-1]);
			if(genome.getCdsEnd()>index[genome.getExonCount()-1][0]){
				index[genome.getExonCount()-1][1]=genome.getCdsEnd();
			}else{
				index[genome.getExonCount()-1][1]=Integer.parseInt(ets[genome.getExonCount()-1]);
			}
		}else{
			for(int i=0;i<genome.getExonCount();i++){
				index[i][0]=Integer.parseInt(sts[i]);
				index[i][1]=Integer.parseInt(ets[i]);
			}
		}
		return index;
	}*/
	
	/*@SuppressWarnings("unused")
	public static void main(String[] args) throws IOException, TranscoderException{
	
		GenomeDao geno=new GenomeDao();
		List<Genome> list=geno.getListQueryByPosition("hg19_hic","chr1", 3660701, 3661156);
		for(int i=0;i<list.size();i++){
			//System.out.println(list.get(i));
			String t = new String(list.get(i).getExonStarts());
			//System.out.println(t+"--"+list.get(i).getTxStart());
			for(int j=0;j<list.get(i).getExonStarts().length;j++){
				System.out.println(list.get(i).getExonStarts()[j]);
			}
		}
		double width=1120;
		double height=10;
		File file=new File("text.svg");
		File pngFile=new File("text.png");

//		Document document=SvgDomCreate.getDocument(width, height);
		GenomeSvg gens=new GenomeSvg();
//		refs.setRefGene(list.get(2));
//		refs.setTxStart(3660701);
//		refs.setTxEnd(3661156);
//		document.getDocumentElement().appendChild(refs.getRefGeneElement(document));
		gens.createSvg(list.get(0), 3660701, 3661156, file);
//		XmlWriter.writeSvg(document, file);
        
//        XmlWriter.writePng(file, pngFile);
	}*/

	public void createSvg(Genome genome,int start,int end,File file) throws IOException{

		Document document=SvgDomCreate.getDocument(GenomeImageGlobal.width, GenomeImageGlobal.refGeneHeight+10);
		this.setGenome(genome);
		this.setTxStart(start);
		this.setTxEnd(end);
		Element el=this.getGenomeElement(document);
		el.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(5)+")");	
		document.getDocumentElement().appendChild(el);
        XmlWriter.writeSvg(document, file);
	}
	
	public void setGenome(Genome genome) {
		this.genome = genome;
	}

	public Genome getGenome() {
		return genome;
	}

	public void setTxStart(int txStart) {
		this.txStart = txStart;
	}

	public int getTxStart() {
		return txStart;
	}

	public void setTxEnd(int txEnd) {
		this.txEnd = txEnd;
	}

	public int getTxEnd() {
		return txEnd;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
}