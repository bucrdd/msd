package action;

import java.util.List;

import beans.InitGlobal;
import beans.DataInformationDao;
import com.opensymphony.xwork2.ActionSupport;

public class JsonJqueryStruts2Action extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/*private String experiment;
	private String tissue;
	private String period;
	private String sex;
	private String pisition;*/
	private String platform;
	private String tissue;
	private String track;
	private String species;
	private String position;
	
	private List<String> infoList;
	
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

	public List<String> getInfoList() {
		return infoList;
	}

	public void setInfoList(List<String> infoList) {
		this.infoList = infoList;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	//�����е�tracktype�洢��infoList��
	public String returnPlatform(){
		InitGlobal.logger.info("json Platform");
		DataInformationDao dataInfo=new DataInformationDao();
		infoList=dataInfo.getListQueryPlatformAll();
		return "list";
	}
	//����ĳ�����ֵ�������֯����
	public String returnTissue(){
		InitGlobal.logger.info("json Tissue Species="+species);
		DataInformationDao dataInfo=new DataInformationDao();
		infoList=dataInfo.getListQueryTissueAll(species, tissue);
		return "list";
	}
	//����ĳ����ĳƽ̨ĳ��֯tracktype��Ϊ��-��������tracktype��
	public String returnPeriod(){
		InitGlobal.logger.info("json Period Species="+species+"Platform="+platform+"Tissue="+tissue);
		DataInformationDao dataInfo=new DataInformationDao();
		infoList=dataInfo.getListQueryTrackAll(species, platform, tissue);
		return "list";
	}
	//�����������б�
	public String returnSex(){
		InitGlobal.logger.info("json Tissue Species="+species);
		DataInformationDao dataInfo=new DataInformationDao();
		infoList=dataInfo.getListQuerySpeciesAll(species);
		return "list";
	}
}
