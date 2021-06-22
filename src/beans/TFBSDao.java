package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.TFBS;

public class TFBSDao {

	/**
	 * @param args
	 */
	@SuppressWarnings("unchecked")
	public List<TFBS> getListQueryByLoci(String species,String chrom,int start,int end) {
		try {
			String sql="SELECT * FROM "+species+"_tfbsconssites WHERE chrom = '"+chrom+"' AND chromStart >= "+start+" AND chromEnd <= "+end+" ORDER BY chromStart ASC";
			//InitGlobal.logger.info(sql);
			return (List<TFBS>)InitGlobal.getSqlMapper().queryForList("selectTFBSByLoci",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<TFBS> getListQueryByLociForDetailInfoAction(String species,String chrom,int start,int end) {
		try {
			String sql="SELECT * FROM "+species+"_tfbsconssites WHERE chrom = '"+chrom+"' AND chromStart >= "+start+" AND chromEnd <= "+end+" GROUP BY name ORDER BY chromStart ASC";
			//InitGlobal.logger.info(sql);
			return (List<TFBS>)InitGlobal.getSqlMapper().queryForList("selectTFBSByLoci",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<TFBS> getListQueryAll(String species) {
		try {
			String sql="SELECT * FROM "+species+"_tfbsconssites";
			//InitGlobal.logger.info(sql);
			return (List<TFBS>)InitGlobal.getSqlMapper().queryForList("selectTFBSAll",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	public Integer getCountAll(String species) {
		try {
			String sql="SELECT COUNT(*) FROM "+species+"_tfbsconssites";
			//InitGlobal.logger.info(sql);
			return (Integer)InitGlobal.getSqlMapper().queryForObject("countTFBSAll",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	public Integer getCount4TF(String species, String TFname) {
		try {
			String sql="SELECT COUNT(*) FROM "+species+"_tfbsconssites WHERE name = '"+TFname+"'";
			//InitGlobal.logger.info(sql);
			return (Integer)InitGlobal.getSqlMapper().queryForObject("countTFBS4TF",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	public Integer getCount4TFwithLoci(String species, String TFname, String chrom, int start, int end) {
		try {
			String sql="SELECT COUNT(*) FROM "+species+"_tfbsconssites WHERE name = '"+TFname+"' AND chrom = '"+chrom+"' AND chromStart >= "+start+" AND chromEnd <= "+end;
			//InitGlobal.logger.info(sql);
			return (Integer)InitGlobal.getSqlMapper().queryForObject("countTFBS4TFwithLoci",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<TFBS> getListQueryByTFname(String species,String TFname,String chrom,int start,int end) {
		try {
			String sql="SELECT * FROM "+species+"_tfbsconssites WHERE name = '"+TFname+"'";
			if(!chrom.isEmpty() || start>=0){
				sql=sql+" AND chrom = '"+chrom+"' AND chromStart >= "+start;
				if(end>start){
					sql=sql+" AND chromEnd <= "+end;
				}
			}
			//InitGlobal.logger.info(sql);
			return (List<TFBS>)InitGlobal.getSqlMapper().queryForList("selectTFBSByTFname",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getAllTFnames(String species) {
		// TODO Auto-generated method stub
		try {
			String sql="SELECT DISTINCT name FROM "+species+"_tfbsconssites";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectAllTFname",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}	
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TFBSDao gd=new TFBSDao();
		/*List<TFBS> list=gd.getListQueryByTFname(InitGlobal.SpeciesMap.get("Human"), "V$P300_01", "", 0, 0);
		for(int i=0;i<list.size();i++){
			//System.out.println(list.get(i));
			String t = new String(list.get(i).getChrom()+"	"+list.get(i).getChromStart()+"	"+list.get(i).getChromEnd()+"	"+list.get(i).getzScore());
			System.out.println(t);
		}*/
		System.out.println(gd.getAllTFnames(InitGlobal.SpeciesMap.get("Mouse")));
	}

}
