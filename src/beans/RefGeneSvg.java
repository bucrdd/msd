package beans;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.apache.batik.transcoder.TranscoderException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Color;
import beans.XmlWriter;
import beans.InitGlobal;
import beans.RefGene;
import beans.RefGeneDao;
import beans.GenomeImageGlobal;
import beans.SvgDomCreate;

public class RefGeneSvg {

	
	private RefGene refGene;
	private int txStart;
	private int txEnd;
	private String color=Color.blue;
	
	public Element getRefGeneElement(Document document){
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element line;
		Element rect;
		Element element;
		int length=txEnd-txStart;
		double widthMin=GenomeImageGlobal.width/length;
		line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", color);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+(refGene.getTxStart()-txStart)*widthMin);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight/2));
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+(refGene.getTxEnd()-txStart)*widthMin);
		line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
		g.appendChild(line);
		double w=(refGene.getTxEnd()-refGene.getTxStart())*widthMin;
		int l=(int)(w*4/GenomeImageGlobal.refGeneHeight);
		if(refGene.getStrand().equals("+")){
			for(int i=0;i<l;i++){
				if(((refGene.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4)>=0&&
						((refGene.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4)<=GenomeImageGlobal.width){
					line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", color);
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+((refGene.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight/3));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+((refGene.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity","0.5");
					g.appendChild(line);
					line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", color);
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+((refGene.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight*2/3));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+((refGene.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity","0.5");
					g.appendChild(line);
				}
			}
		}else{
			for(int i=0;i<l;i++){
				if(((refGene.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4)>=0&&
						((refGene.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4)<=GenomeImageGlobal.width){
					line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", color);
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+((refGene.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight/3));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+((refGene.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity","0.5");
					g.appendChild(line);
					line=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "line");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", color);
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x1", ""+((refGene.getTxStart()-txStart)*widthMin+(i+1)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y1", ""+(GenomeImageGlobal.refGeneHeight*2/3));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x2", ""+((refGene.getTxStart()-txStart)*widthMin+(i)*GenomeImageGlobal.refGeneHeight/4));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y2", ""+(GenomeImageGlobal.refGeneHeight/2));
					line.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity","0.5");
					g.appendChild(line);
				}
			}
		}
		int[][] index=this.getIndex();
		boolean min=false;
		if(refGene.getCdsStart()<refGene.getCdsEnd()&&refGene.getCdsStart()<refGene.getTxEnd()){
			min=true;
			rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(refGene.getTxStart()-txStart)*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/4));
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(refGene.getCdsStart()-refGene.getTxStart())*widthMin);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight/2));
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
	//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			g.appendChild(rect);
	//		System.out.println((refGene.getCdsEnd()+"\t"+refGene.getCdsStart()));
			if(refGene.getCdsEnd()>=index[index.length-1][1]){
				rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(refGene.getCdsEnd()-txStart)*widthMin);
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight/4));
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(refGene.getTxEnd()-refGene.getCdsEnd())*widthMin);
				rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight/2));
		//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
		//		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
				g.appendChild(rect);
			}
			
		}
		
		for(int i=0;i<index.length;i++){
			rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill",color);
			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(index[i][0]-txStart)*widthMin);

			if(min){
				if(refGene.getCdsEnd()>=index[index.length-1][1]){
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(index[i][1]-index[i][0])*widthMin);
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", "0");
				}else{
				if(index[i][0]<refGene.getCdsEnd()&&index[i][1]>refGene.getCdsEnd()){
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(refGene.getCdsEnd()-index[i][0])*widthMin);
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+(GenomeImageGlobal.refGeneHeight));
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", "0");
					g.appendChild(rect);
					rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke","none");
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill",color);
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+(refGene.getCdsEnd()-txStart)*widthMin);
					rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+(index[i][1]-refGene.getCdsEnd())*widthMin);
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
			}
//			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill-opacity",getOpacity()+"");
//			rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke-opacity",getOpacity()+"");
			g.appendChild(rect);
		}
		element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
//		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+length*width/_MAX);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", "sans-serif");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", "11px");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", color);
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
		
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+((refGene.getTxStart()-txStart)*widthMin-refGene.getName2().length()*6-10));
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+(GenomeImageGlobal.refGeneHeight*4/5));
		element.appendChild(document.createTextNode(refGene.getName2()));
		g.appendChild(element);
		return g;
	}
	
	private int[][] getIndex(){
		int[][] index=new int[refGene.getExonCount()][2];
		String st=new String(refGene.getExonStarts());
		String et=new String(refGene.getExonEnds());
		//System.out.println(222);
		/*try{
			int stt = Integer.parseInt(st,16);
			System.out.println(333);
			System.out.println(stt);
		}catch(Exception e){
			e.printStackTrace();
		}*/
		String[] sts=st.split(",");
		String[] ets=et.split(",");
		if(refGene.getCdsStart()<refGene.getCdsEnd()&&refGene.getCdsStart()<refGene.getTxEnd()){
			System.out.println(13);
			index[0][0]=refGene.getCdsStart();
			System.out.println(14);
			//try{
			//System.out.println(ets[0]);
			index[0][1]=Integer.parseInt(ets[0]);
			/*}catch(Exception e){
				System.out.println(e.toString());
                System.out.println("-------------------------------------------------");
                System.out.println(e.getMessage());
                System.out.println("-------------------------------------------------");
                e.printStackTrace();
			}
			System.out.println(15);*/
			for(int i=1;i<refGene.getExonCount()-1;i++){
				index[i][0]=Integer.parseInt(sts[i]);
				index[i][1]=Integer.parseInt(ets[i]);
			}
			//System.out.println(16);
			index[refGene.getExonCount()-1][0]=Integer.parseInt(sts[refGene.getExonCount()-1]);
			//System.out.println(17);
			if(refGene.getCdsEnd()>index[refGene.getExonCount()-1][0]){
				index[refGene.getExonCount()-1][1]=refGene.getCdsEnd();
			}else{
				index[refGene.getExonCount()-1][1]=Integer.parseInt(ets[refGene.getExonCount()-1]);
			}
		}else{
			for(int i=0;i<refGene.getExonCount();i++){
				index[i][0]=Integer.parseInt(sts[i]);
				index[i][1]=Integer.parseInt(ets[i]);
			}
		}
		return index;
	}
	
	@SuppressWarnings("unused")
	public static void main(String[] args) throws IOException, TranscoderException{
	
		RefGeneDao refg=new RefGeneDao();
		List<RefGene> list=refg.getListQueryByPosition(InitGlobal.SpeciesMap.get("Human"),"chr1", 3660701, 3661156);
		for(int i=0;i<list.size();i++){
			//System.out.println(list.get(i));
			String t = new String(list.get(i).getExonStarts());
			//System.out.println(t+"--"+list.get(i).getTxStart());
/*			for(int j=0;j<list.get(i).getExonStarts().length;j++){
				System.out.println(list.get(i).getExonStarts()[j]);
			}*/
		}
		double width=1120;
		double height=10;
		File file=new File("text.svg");
		File pngFile=new File("text.png");

//		Document document=SvgDomCreate.getDocument(width, height);
		RefGeneSvg refs=new RefGeneSvg();
//		refs.setRefGene(list.get(2));
//		refs.setTxStart(3660701);
//		refs.setTxEnd(3661156);
//		document.getDocumentElement().appendChild(refs.getRefGeneElement(document));
		refs.createSvg(list.get(0), 3660701, 3661156, file);
//		XmlWriter.writeSvg(document, file);
        
//        XmlWriter.writePng(file, pngFile);
	}

	public void createSvg(RefGene refGene,int start,int end,File file) throws IOException{
		//System.out.println("����ʼ����");
		Document document=SvgDomCreate.getDocument(GenomeImageGlobal.width, GenomeImageGlobal.refGeneHeight+10);
		//System.out.println(1);
		this.setRefGene(refGene);
		//System.out.println(2);
		this.setTxStart(start);
		//System.out.println(3);
		this.setTxEnd(end);
		//System.out.println(4);
		Element el=this.getRefGeneElement(document);
		//System.out.println(5);
		el.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "transform", "translate("+(0)+","+(5)+")");	
		//System.out.println(6);
		document.getDocumentElement().appendChild(el);
		//System.out.println(7);
        XmlWriter.writeSvg(document, file);
        //System.out.println("������óɹ�");
	}
	
	public void setRefGene(RefGene refGene) {
		this.refGene = refGene;
	}

	public RefGene getRefGene() {
		return refGene;
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
