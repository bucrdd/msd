package action;

import java.util.List;
import java.util.Map;

import beans.InitGlobal;
import beans.RefGene;
import beans.ImageBeans;
import beans.ImageFactoryField;
import com.opensymphony.xwork2.ActionSupport;

public class BrowserOpertorAction extends ActionSupport {

	public String getMove() {
		return move;
	}


	public void setMove(String move) {
		this.move = move;
	}


	public String getZoom() {
		return zoom;
	}


	public void setZoom(String zoom) {
		this.zoom = zoom;
	}


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String species;
	private String move;
	private String zoom;
	private String position;
	private List<ImageBeans> list;
	private ImageBeans chromeImage;
	private Map<String,List<ImageBeans>> imageBeansMap;
	private String message;
	private List<String> tableName;
	
	public Map<String, List<ImageBeans>> getImageBeansMap() {
		return imageBeansMap;
	}


	public void setImageBeansMap(Map<String, List<ImageBeans>> imageBeansMap) {
		this.imageBeansMap = imageBeansMap;
	}


/*	@Override
	public String execute() throws Exception {
		System.out.println(experiment);
		ImageFactory imageFactory=new ImageFactory(experiment,tissue,period,sex,pisition);
		chromeImage=imageFactory.getChromesome();
		list=imageFactory.getImage();
		return SUCCESS;
	}*/


	public String returnList(){
		
		ImageFactoryField imageFactoryf=new ImageFactoryField(species,position);
		imageFactoryf.setTableNameList(tableName);
//		chromeImage=imageFactory.getChromesome();
//		List<ImageBeans> listc=new ArrayList<ImageBeans>();
//		listc.add(chromeImage);
		list=imageFactoryf.getImages();
		return "list";
	}
	
	public String returnMessage(){
		species=InitGlobal.species;
		InitGlobal.logger.info("BrowserOpertorAction��ѯ����: species->"+species+"; position->"+position);
		InitGlobal.logger.info("��֤��ѯ����move or zoom "+position);
		ImageFactoryField imageFactoryf=new ImageFactoryField(species,position);
		if(imageFactoryf.positionIsNotNull()){
			RefGene refg=imageFactoryf.getRefGene();
			InitGlobal.logger.info(refg.getPosition());
			this.message="true";
			if(move!=null&&!move.equals("")){
				refg.setTxStart(refg.getTxStart()+Integer.parseInt(move));
				refg.setTxEnd(refg.getTxEnd()+Integer.parseInt(move));
				InitGlobal.logger.info(refg.getPosition());
				imageFactoryf=new ImageFactoryField(species,refg.getPosition());
				if(imageFactoryf.positionIsNotNull()){
					refg=imageFactoryf.getRefGene();
					position=refg.getPosition();
				}
				InitGlobal.logger.info(refg.getPosition());
				InitGlobal.logger.info("move="+move);
			}else if(zoom!=null&&!zoom.equals("")){
				int center=refg.getTxStart()+(refg.getTxEnd()-refg.getTxStart())/2;
				int l=(int)((refg.getTxEnd()-refg.getTxStart())*Float.parseFloat(zoom));
				refg.setTxStart(center-l/2>0?center-l/2:0);
				refg.setTxEnd(center+l/2);
				imageFactoryf=new ImageFactoryField(species,refg.getPosition());
				if(imageFactoryf.positionIsNotNull()){
					refg=imageFactoryf.getRefGene();
					position=refg.getPosition();
				}
				InitGlobal.logger.info("zoom="+zoom);
			}
		}
		else this.message="The query fails,please check the search conditions";
		InitGlobal.logger.info("message="+message);
		return "message";
	}
	

	public String getSpecies() {
		return species;
	}


	public void setSpecies(String species) {
		this.species = species;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public void setList(List<ImageBeans> list) {
		this.list = list;
	}


	public List<ImageBeans> getList() {
		return list;
	}


	public void setChromeImage(ImageBeans chromeImage) {
		this.chromeImage = chromeImage;
	}


	public ImageBeans getChromeImage() {
		return chromeImage;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	public String getMessage() {
		return message;
	}


	public void setTableName(List<String> tableName) {
		this.tableName = tableName;
	}


	public List<String> getTableName() {
		return tableName;
	}
	
	
	
}
