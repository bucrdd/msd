package beans;

import org.apache.batik.anim.dom.SVGDOMImplementation;
import org.apache.batik.anim.dom.SVG12DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import beans.Color;
import beans.Font;

public class Libel {

	private double width=800;
	private double height=600;
	private String text="1234567890AZXSQWEDCVFRBGTNHYMJUKILOPaqwerzxcdvfrbgtnmhyjukliop";
	private String textColor=Color.black;
	private Font font=new Font();
	private double lengthPt;
	private double heightPt;
	
	public Element getXlibel(Document document){
		return createXlibel(document);
	}
	
	public Element getYlibel(Document document){
		return createYlibel(document);
	}
	
	public Element getBoxlibel(Document document){
		return createBoxLibel(document);
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

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getTextColor() {
		return textColor;
	}

	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}

	public Font getFont() {
		return font;
	}

	public void setFont(Font font) {
		this.font = font;
	}

	private Element createBoxLibel(Document document){
		
		lengthPt=0.55*getFont().getSize()*getText().length();
		heightPt=0.9*getFont().getSize();
		
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
		Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+getWidth());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-rendering", "optimizeLegibility");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
		if((getWidth()-lengthPt)>0){
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
		}else{
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getWidth()*getFont().getSize()/lengthPt);
		}
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getTextColor());
		
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ""+getFont().getSize());
		element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+heightPt);
		element.appendChild(document.createTextNode(getText()));
		g.appendChild(element);
		
		Element rect=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "rect");
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", Color.white);
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", getTextColor());
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", "0");
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", "0");
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", ""+getFont().getSize());
		rect.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", ""+getFont().getSize());
		g.appendChild(rect);
		return g;
	}
	
	
	
	private Element createXlibel(Document document){
			lengthPt=0.55*getFont().getSize()*getText().length();
			heightPt=0.9*getFont().getSize();
			
			Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+getWidth());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			if((getWidth()-lengthPt)>0){
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			}else{
			
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getWidth()*getFont().getSize()/lengthPt);
			}
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", getTextColor());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "x", ((getWidth()-lengthPt)>0?(getWidth()-lengthPt)/2:0)+"");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "y", ""+getHeightPt());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text-align", "center");
			element.appendChild(document.createTextNode(getText()));
			g.appendChild(element);
			return g;
	}

	private Element createYlibel(Document document){
		lengthPt=0.55*getFont().getSize()*getText().length();
		heightPt=0.9*getFont().getSize();
		Element g=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "g");
			Element element=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "text");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "textLength", ""+getHeight());
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "lengthAdjust", "spacingAndGlyphs");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-family", ""+getFont().getName());
			if((getHeight()-lengthPt)>0){
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getFont().getSize());
			}else{
			
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "font-size", ""+getHeight()*getFont().getSize()/lengthPt);
			}
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			element.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke",getTextColor());

			
			Element defs=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "defs");

			Element elepath=document.createElementNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "path");
			elepath.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "id", "ylibel");
			double W=(((getHeight()-lengthPt)>0?lengthPt:getHeight()));
			double H=heightPt;
			elepath.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "d", "M "+H+","+(getHeight()-(getHeight()-W)/2)+" L "+H+","+(getHeight()-W)/2);
			elepath.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "fill", "none");
			elepath.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "stroke", "none");
			
			defs.appendChild(elepath);
			g.appendChild(defs);
			Element eletextpath=document.createElementNS(SVG12DOMImplementation.SVG_NAMESPACE_URI, "textPath");
			eletextpath.setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "xlink:href", "#ylibel");
			eletextpath.appendChild(document.createTextNode(getText()));
			element.appendChild(eletextpath);
			g.appendChild(element);
			return g;
	}
	
	
	/**
	 * @return the length
	 */
	public double getLength() {
		return lengthPt;
	}

	/**
	 * @param length the length to set
	 */
	public void setLength(double length) {
		this.lengthPt = length;
	}

	/**
	 * @return the heightPt
	 */
	public double getHeightPt() {
		return heightPt;
	}

	/**
	 * @param heightPt the heightPt to set
	 */
	public void setHeightPt(double heightPt) {
		this.heightPt = heightPt;
	}
	
}
