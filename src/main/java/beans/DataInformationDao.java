package beans;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import beans.InitGlobal;
import beans.DataInformation;

public class DataInformationDao{

	
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		DataInformationDao dataInformationDao=new DataInformationDao();
		System.out.println(dataInformationDao.getListQueryTrackAll("human", "full", "full"));
		System.out.println(dataInformationDao.getListALL().get(0).getCellType());
	}

	@SuppressWarnings("unchecked")
	public List<DataInformation> getListALL() {
		// TODO Auto-generated method stub
		try {
			return InitGlobal.getSqlMapper().queryForList("selectDataInfoAll");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	//����ָ��tablename��datainfo��¼
	public DataInformation getQueryByTableName(String tableName) {
		// TODO Auto-generated method stub
		try {
			return (DataInformation) InitGlobal.getSqlMapper().queryForObject("selectDataInfoByTableName",tableName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}
	
	public DataInformation getQueryByBin(String bin) {
		// TODO Auto-generated method stub
		try {
			return (DataInformation) InitGlobal.getSqlMapper().queryForObject("selectDataInfoByBin",bin);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}
	
	@SuppressWarnings("unchecked")
	public List<DataInformation> getListQueryByPlatform(String platform) {
		// TODO Auto-generated method stub
		try {
			return InitGlobal.getSqlMapper().queryForList("selectDataInfoByPlatform",platform);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}

	
	
	
	@SuppressWarnings("unchecked")
	public List<String> getListQuerySpeciesAll(String species) {
		// TODO Auto-generated method stub
		List<String> list;
		try {
			String sql="select DISTINCT Species from datainfo";
			if(!species.equals("full")) sql+=" where Species='"+species+"'";
			sql+=" ORDER BY CellType ASC";
			//InitGlobal.logger.info(sql);
			List<DataInformation> listd=InitGlobal.getSqlMapper().queryForList("selectDataInfoSpeciesAll",sql);
			list=new ArrayList<String>();
			for(int i=0;i<listd.size();i++){
				list.add(listd.get(i).getSpecies());
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getListQueryPlatformAll() {
		// TODO Auto-generated method stub
		List<String> list;
		try {
			String sql="select DISTINCT Platform from datainfo";
			//InitGlobal.logger.info(sql);
			List<DataInformation> listd=InitGlobal.getSqlMapper().queryForList("selectDataInfoPlatformAll",sql);
			list=new ArrayList<String>();
			for(int i=0;i<listd.size();i++){
				list.add(listd.get(i).getPlatform());
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getListQueryTissueAll(String species,String tissue) {
		// TODO Auto-generated method stub
		List<String> list;
		try {
			String sql="select DISTINCT tissue from datainfo where Species='"+species+"'";
			if(!tissue.equals("full")) sql+=" where Tissue='"+tissue+"'";
			//InitGlobal.logger.info(sql);
			List<DataInformation> listd=InitGlobal.getSqlMapper().queryForList("selectDataInfoTissueAll",sql);
			list=new ArrayList<String>();
			for(int i=0;i<listd.size();i++){
				list.add(listd.get(i).getTissue());
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getListQueryTrackAll(String species,String platform,String tissue) {
		// TODO Auto-generated method stub
		List<String> list;
		try {//Track��Ӧ���ӻ�ҳ���е�track����
			String sql="select DISTINCT Track from datainfo where Track!='-' and Species='"+species+"'";
			if(!platform.equals("full")||!tissue.equals("full")){
				sql+=" and";
				if(!platform.equals("full")){
					sql+=" Platform='"+platform+"'";
					if(!tissue.equals("full")) sql+=" and tissue='"+tissue+"'";
				}else{
					sql+=" tissue="+tissue;
				}
			}
			sql+=" ORDER BY bin ASC";
			//InitGlobal.logger.info(sql);listd�洢�˲�ѯ������ĳ�����ֵ�����track���ͣ�����ΪDataInformation����
			List<DataInformation> listd=InitGlobal.getSqlMapper().queryForList("selectDataInfoTrackAll",sql);
			list=new ArrayList<String>();
			//ȡ����ѯ��������track���Ͳ��洢��list�б��У�����list�б�
			for(int i=0;i<listd.size();i++){
				list.add(listd.get(i).getTrack());
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}
	
	@SuppressWarnings("unchecked")
	public List<DataInformation> getListQueryByCondition(String condition) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from datainfo "+condition+" ORDER BY Platform ASC";
			//InitGlobal.logger.info(sql);
			return (List<DataInformation>)InitGlobal.getSqlMapper().queryForList("selectDataInfoByCondition",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<DataInformation> getListQueryByTissue(String tissue) {
		// TODO Auto-generated method stubselectDInformationByTissue
		try {
			return InitGlobal.getSqlMapper().queryForList("selectDataInfoByTissue",tissue);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}

	@SuppressWarnings("unchecked")
	public List<DataInformation> getListQueryByTrack(String species, String track) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from datainfo where Track = '"+track+"' and Species = '"+species+"' ORDER BY CellType ASC";
			InitGlobal.logger.info(sql);
			return InitGlobal.getSqlMapper().queryForList("selectDataInfoByTrack",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}
	
	@SuppressWarnings("unchecked")
	public List<DataInformation> getListByTrackCellType(String species, String track, String cellType) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from datainfo where Track = '"+track+"' and Species = '"+species+"' AND cellType IN ('"+cellType+"') ORDER BY CellType ASC";
			InitGlobal.logger.info(sql);
			return InitGlobal.getSqlMapper().queryForList("selectDataInfoByTrackCellType",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}
	
	@SuppressWarnings("unchecked")
	public List<DataInformation> getListQueryByDescription(String description) {
		// TODO Auto-generated method stub
		try {
			return InitGlobal.getSqlMapper().queryForList("selectDataInfoByDescription",description);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}

	@SuppressWarnings("unchecked")
	public List<DataInformation> getListQueryBySpecies(String species) {
		// TODO Auto-generated method stub
		try {
			return InitGlobal.getSqlMapper().queryForList("selectDataInfoBySpecies",species);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}

	
	
	public void insert(DataInformation dataInfo) {
		// TODO Auto-generated method stub
		try {
			InitGlobal.getSqlMapper().insert("insertDataInfo",dataInfo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
		}
	}

	public void update(DataInformation dataInfo) {
		// TODO Auto-generated method stub
		
	}

	public void deleteById(DataInformation dataInfo) {
		// TODO Auto-generated method stub
		
	}

}
