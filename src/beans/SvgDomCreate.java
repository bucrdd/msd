package beans;

import org.apache.batik.dom.svg.SVGDOMImplementation;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;

public class SvgDomCreate {

	/**
	 * @param args
	 */

	public static Document getDocument(double width,double height){
		DOMImplementation impl = SVGDOMImplementation.getDOMImplementation();
		Document document = impl.createDocument(SVGDOMImplementation.SVG_NAMESPACE_URI, "svg", null);// ��ø�Ԫ��('svg' Ԫ��). 
		document.getDocumentElement().setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "width", width+"");
		document.getDocumentElement().setAttributeNS(SVGDOMImplementation.SVG_NAMESPACE_URI, "height", height+"");
		return document;
	}
}
