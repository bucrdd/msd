package action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.InitGlobal;
import beans.ProjectProperties;
import beans.DataInformation;
import beans.DataInformationDao;
import com.opensymphony.xwork2.ActionSupport;

public class BrowserViewAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//track���ͣ������ͣ�
	private List<String> listTrack;
	private Map<String, List<DataInformation>> mapDataInfo;
	private String position;
	//����Ĭ���Ƿ�ѡ��track
	private String trackCheck;
	//�ж�ǰ̨trackѡȡ�¼�
	private Map<String, String> click;
	//��ʼ������Ϊhuman
	private String species="Human";
	private String AssemblyMap;
	
	
	@Override
	public String execute() throws Exception{
		InitGlobal.species=species;
		AssemblyMap=InitGlobal.AssemblyMap.get(species);
		DataInformationDao dataInfoDao=new DataInformationDao();
		//�������ѯ��������ƽ̨��track���Ͳ��洢��listTrack�б��У���ʼ��������Ϊhuman�����ص��ǲ�ͬtrack����
		listTrack=dataInfoDao.getListQueryTrackAll(species, "full", "full");
		InitGlobal.logger.info("��ѯ�ɹ�listTrack��СΪ��"+listTrack.size());
		List<DataInformation> list=new ArrayList<DataInformation>();
		mapDataInfo=new HashMap<String, List<DataInformation>>();
		String str;
		if(trackCheck==null||trackCheck.equals("")){
			str=ProjectProperties.getInstance().getConfigItem("defaultTracks");
		}else{
			str=trackCheck;//AdvSearchAction����б?��ϸ�����ͽ���
		}
		String[] strs=str.split("->");
		click=new HashMap<String, String>();
		//click�洢trackѡ����Ϣ����һ����ֵ�Ե�map
		for(String s:strs){
			click.put(s, "checked");
		}
		//ѭ������ĳ����tracktype
		for(int i=0;i<listTrack.size();i++){
			//���������tracktype��ѯdatainfo�?����������洢��list�б��У�����һ��track���͵�����datainfo��Ϣ
			list=dataInfoDao.getListQueryByTrack(species, listTrack.get(i));
//			InitGlobal.logger.info("��ѯ�ɹ���СΪ��"+list.size());
			//ѭ������鵽��datainfo�����ǰ̨ѡ���˸�track����ô��datainfo��bean�����øö����clickΪtrue��Ϊÿһ����ѯ������datainfo�����click������ֵ
			for(DataInformation di:list){
				if(click.get(di.getCheck()+"")!=null&&click.get(di.getCheck()+"").equals("checked")){
					di.setClick(true);
				//Ϊʲôclick��celltype���й�ϵ
				}else if(click.get(di.getCellType()+"")!=null&&click.get(di.getCellType()+"").equals("checked")){
					di.setClick(true);
				}else{
					di.setClick(false);
				}
			}
			//mapDataInfo������tracktype���ͣ�ֵ��Ŷ�Ӧtracktype��datainfo�����б�list
			mapDataInfo.put(listTrack.get(i), list);
			InitGlobal.logger.info("��ѯ"+listTrack.get(i)+"�ɹ�,��СΪ��"+list.size());
		}
		//��ֵposition
		if(position==null||position.equals("")){
			position=ProjectProperties.getInstance().getConfigItem("InitPosition");
		}

		InitGlobal.logger.info("����BrowserViewAction");
		return SUCCESS;
	}



	public Map<String, String> getClick() {
		return click;
	}



	public void setClick(Map<String, String> click) {
		this.click = click;
	}



	public void setListPeriod(List<String> listTrack) {
		this.listTrack = listTrack;
	}


	public List<String> getListPeriod() {
		return listTrack;
	}

	public String getSpecies() {
		return species;
	}



	public void setSpecies(String species) {
		this.species = species;
	}



	public void setPosition(String position) {
		this.position = position;
	}


	public String getPosition() {
		return position;
	}



	public List<String> getListTrack() {
		return listTrack;
	}



	public void setListTrack(List<String> listTrack) {
		this.listTrack = listTrack;
	}



	public Map<String, List<DataInformation>> getMapDataInfo() {
		return mapDataInfo;
	}



	public void setMapDataInfo(Map<String, List<DataInformation>> mapDataInfo) {
		this.mapDataInfo = mapDataInfo;
	}



	public String getTrackCheck() {
		return trackCheck;
	}



	public void setTrackCheck(String trackCheck) {
		this.trackCheck = trackCheck;
	}



	public String getAssemblyMap() {
		return AssemblyMap;
	}

}
