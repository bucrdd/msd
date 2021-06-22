package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.CpGisLand;

public class CpGIslandDao implements CpGIslandDaoImpl {

	@SuppressWarnings("unchecked")
	public List<CpGisLand> getListALL(String species) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from "+species+"_cpgisland";
			//InitGlobal.logger.info(sql);
			return InitGlobal.getSqlMapper().queryForList("selectCpGisLandAll",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}

	public CpGisLand getQueryByName(String species,String name) {
		// TODO Auto-generated method stub
		try {
		    String sql="select * from "+species+"_cpgisland where name = '"+name+"'";
			//InitGlobal.logger.info(sql);
			return (CpGisLand) InitGlobal.getSqlMapper().queryForList("selectCpGisLandByName",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<CpGisLand> getQueryByPosition(String species,String chrom, int start, int end) {
		// TODO Auto-generated method stub
		try {
			String sql="SELECT * FROM "+species+"_cpgisland where chrom ='"+chrom+"' AND ((chromStart>="+start+" and chromStart<"+end+") or (chromEnd>"+start+" and chromEnd<="+end+") or (chromStart<="+start+" and chromEnd>="+end+")) ORDER BY chromStart ASC";
			//InitGlobal.logger.info(sql);
			return InitGlobal.getSqlMapper().queryForList("selectCpGisLandByPosition",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}

	public static void main(String[] args){
		
		CpGIslandDao cpg=new CpGIslandDao();
		InitGlobal.logger.info(cpg.getQueryByPosition(InitGlobal.SpeciesMap.get("Human"),"chr1", 3521706, 4483755).size()+"");
		
	}
}
