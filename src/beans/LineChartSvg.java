package beans;

import java.io.File;
import java.util.List;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.LineChartDom;
import beans.SvgDomCreate;
import beans.XmlWriter;

public class LineChartSvg {

	
	@SuppressWarnings("unused")
	private List<Float> list;
	
	private double width=1100.0;
	private double height=300.0;
	
	
	
	public LineChartSvg() {
	}
	
	
	
	
	public void createSvg(double[] data,File file) throws Exception{
		
		Document document=SvgDomCreate.getDocument(this.width, this.height);
		LineChartDom chartDom=new LineChartDom();
		chartDom.setData(data);
		chartDom.setHeight(height);
		chartDom.setWidth(width);
		chartDom.setMax(1);
		Element el=chartDom.createElement(document);
		document.getDocumentElement().appendChild(el);
        XmlWriter.writeSvg(document, file);
		
	}
	
	
	public static void main(String[] args) {
		File file=new File("D:\\svg.svg");
		
		double[] data=new double[]{0.2,0,0,0,0.5};
		LineChartSvg chartSvg=new LineChartSvg();
		try {
			chartSvg.createSvg(data, file);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
