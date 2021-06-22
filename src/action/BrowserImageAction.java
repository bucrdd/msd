package action;

import java.io.File;
import java.util.List;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import beans.InitGlobal;
import beans.ProjectProperties;
import beans.ImageBeans;
import beans.ImageFactoryField;
import beans.LineChartSvg;
import com.opensymphony.xwork2.ActionSupport;

public class BrowserImageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String platform;
	private String tissue;
	private String track;
	private String species;
	private String position;
	private List<ImageBeans> list;
	private ImageBeans chromeImage;
	private Map<String,List<ImageBeans>> imageBeansMap;
	private String message;
	private List<String> tableName;
	private String[] values;
	private String url;
	
	
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
		// InitGlobal.sepcies = "Human"
		species=InitGlobal.species;
		ImageFactoryField imageFactoryf=new ImageFactoryField(species,position);
		imageFactoryf.setTableNameList(tableName);
		// most important function.
		list=imageFactoryf.getImages(); // suoyoushengchengtupianxiangguan
		return "list";
	}
	
	public String returnMessage(){
		species=InitGlobal.species;
		InitGlobal.logger.info("BrowserImageAction��ѯ����: species->"+species+"; position->"+position);
		InitGlobal.logger.info("��֤��ѯ����");
		ImageFactoryField imageFactoryf=new ImageFactoryField(species,position);
		if(imageFactoryf.positionIsNotNull()) this.message="true";
		else this.message="The query fails,please check the search conditions";
		InitGlobal.logger.info("message="+message);
		return "message";
	}
	
	
	@SuppressWarnings({ "deprecation", "unused" })
	public String returnURL(){
		
		InitGlobal.logger.info("��ͼLineChartSvg-data size"+values.length);
		LineChartSvg chartSvg=new LineChartSvg();
		File file=null;
		try {
			file = File.createTempFile("svg", ".svg",new File(ServletActionContext.getRequest().getRealPath(ProjectProperties.getInstance().getConfigItem("svgFilePath","tmp/svg"))));
			double[] data=new double[values.length];
			int i=0;
			boolean nx=false;
			for(String s:values){
				if(s.equals("NA")){
					nx=true;
				}
			}
			if(nx){
				for(String s:values){
					data[i++]=0;
				}
			}else{
				for(String s:values){
					try{
						data[i++]=Double.parseDouble(s);
					}catch (Exception e) {
						// TODO: handle exception
						data[i++]=0;
						break;
					}
				}
			}
			
			chartSvg.createSvg(data, file);
			url=file.getName();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			InitGlobal.logger.warning("��ͼLineChartSvgʧ��");
			e.printStackTrace();
		}
		
		
		return "message";
	}
	
	public String getPlatform() {
		return platform;
	}


	public void setPlatform(String platform) {
		this.platform = platform;
	}


	public String getTissue() {
		return tissue;
	}


	public void setTissue(String tissue) {
		this.tissue = tissue;
	}


	public String getTrack() {
		return track;
	}


	public void setTrack(String track) {
		this.track = track;
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

	

	public String[] getValues() {
		return values;
	}


	public void setValues(String[] values) {
		this.values = values;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
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
