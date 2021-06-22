package beans;

import java.sql.SQLException;
import java.util.List;


import beans.InitGlobal;
import beans.SuperEnhancers;

public class SuperEnhancersDao {

	/**
	 * @param args
	 */
	
	@SuppressWarnings("unchecked")
	public List<String> getSEcellTypes(String species) {
		try {
			String sql="SELECT DISTINCT cellType FROM "+species+"_superenhancers WHERE mark = 'SE' ORDER BY cellType ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectSEcellTypes",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getGene0k(String species) {
		try {
			String sql="SELECT gene0k FROM "+species+"_superenhancers WHERE mark = 'SE' ORDER BY gene0k ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectGene0k",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getGene0k4cell(String species, String cellType) {
		try {
			String sql="SELECT gene0k FROM "+species+"_superenhancers WHERE cellType = '"+cellType+"' AND mark = 'SE' ORDER BY gene0k ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectGene0k4cell",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getGene5k(String species) {
		try {
			String sql="SELECT gene5k FROM "+species+"_superenhancers WHERE mark = 'SE' ORDER BY gene5k ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectGene5k",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getGene10k(String species) {
		try {
			String sql="SELECT gene10k FROM "+species+"_superenhancers WHERE mark = 'SE' ORDER BY gene10k ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectGene10k",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getGene20k(String species) {
		try {
			String sql="SELECT gene20k FROM "+species+"_superenhancers WHERE mark = 'SE' ORDER BY gene20k ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectGene20k",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getConservationMean(String species) {
		try {
			String sql="SELECT mean FROM "+species+"_superenhancers WHERE mean NOT LIKE '-' AND mark = 'SE' ORDER BY mean ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectConservationMean",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getConservationMedian(String species) {
		try {
			String sql="SELECT median FROM "+species+"_superenhancers WHERE median NOT LIKE '-' AND mark = 'SE' ORDER BY median ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectConservationMedian",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<SuperEnhancers> getListQueryAll(String species,String cellType,String methods,String mark,String code) {
		try {
			String sql="SELECT * FROM "+species+"_superenhancers";
			if (cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" WHERE cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" WHERE methods = '"+methods+"' ORDER BY SEID ASC";
			}else if(cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" WHERE mark = '"+mark+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" WHERE methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" WHERE mark = '"+mark+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" WHERE mark = '"+mark+"' AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&!methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" WHERE mark = '"+mark+"' AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" WHERE code = '"+code+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" WHERE code = '"+code+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" WHERE code = '"+code+"' AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else if(cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" WHERE code = '"+code+"' AND mark = '"+mark+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" WHERE code = '"+code+"' AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" WHERE code = '"+code+"' AND mark = '"+mark+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&!mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" WHERE code = '"+code+"' AND mark = '"+mark+"' AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else{
				sql=sql+" WHERE code = '"+code+"' AND mark = '"+mark+"' AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}
			//InitGlobal.logger.info(sql);
			return (List<SuperEnhancers>)InitGlobal.getSqlMapper().queryForList("selectSuperEnhancersAll",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	public Integer getCountAll(String species,String cellType) {
		try {
			String sql="SELECT COUNT(*) FROM "+species+"_superenhancers WHERE mark = 'SE'";
			if (cellType.equals("All")){
				sql=sql+" ORDER BY SEID ASC";
			}else{
				sql=sql+" AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}
			//InitGlobal.logger.info(sql);
			return (Integer)InitGlobal.getSqlMapper().queryForObject("countSuperEnhancersAll",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
/*	@SuppressWarnings("unchecked")
	public List<SuperEnhancers> getListQueryByTFChromAndCell(String species,String chrom,int start,int end,String cellType) {
		try {
			
			String sql="SELECT * FROM "+species+"_superenhancers WHERE chrom = '"+chrom+"' AND start <= "+start+" AND end >= "+end+" AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			//InitGlobal.logger.info(sql);
			return (List<SuperEnhancers>)InitGlobal.getSqlMapper().queryForList("selectSuperEnhancersByChromAndCell",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<SuperEnhancers> getListQueryByChromAndCell(String species,String chrom,int start,int end,String cellType) {
		try {
			String sql="SELECT * FROM "+species+"_superenhancers WHERE chrom = '"+chrom+"' AND ((start>="+start+" and start<"+end+") or (end>"+start+" and end<="+end+") or (start<="+start+" and end>="+end+")) AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			//InitGlobal.logger.info(sql);
			return (List<SuperEnhancers>)InitGlobal.getSqlMapper().queryForList("selectSuperEnhancersByChromAndCell",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}*/
	
	@SuppressWarnings("unchecked")
	public List<SuperEnhancers> getListQueryByTFChromLoci(String species,String chrom,int start,int end,String cellType,String methods,String mark,String code) {
		try {
			String sql="SELECT * FROM "+species+"_superenhancers WHERE chrom = '"+chrom+"' AND start <= "+start+" AND end >= "+end;
			if (cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else if(cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND mark = '"+mark+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND mark = '"+mark+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND mark = '"+mark+"' AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&!methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND mark = '"+mark+"' AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else if(cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND mark = '"+mark+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND mark = '"+mark+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&!mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND mark = '"+mark+"' AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else{
				sql=sql+" AND code = '"+code+"' AND mark = '"+mark+"' AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}
			//String sql="SELECT * FROM "+species+"_superenhancers WHERE chrom = '"+chrom+"' AND start <= "+start+" AND end >= "+end+" ORDER BY SEID ASC";
			//InitGlobal.logger.info(sql);
			return (List<SuperEnhancers>)InitGlobal.getSqlMapper().queryForList("selectSuperEnhancersByChromLoci",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<SuperEnhancers> getListQueryByChromLoci(String species,String chrom,int start,int end,String cellType,String methods,String mark,String code) {
		try {
			String sql="SELECT * FROM "+species+"_superenhancers WHERE chrom ='"+chrom+"' AND ((start>="+start+" and start<"+end+") or (end>"+start+" and end<="+end+") or (start<="+start+" and end>="+end+"))";
			if (cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else if(cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND mark = '"+mark+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND mark = '"+mark+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND mark = '"+mark+"' AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&!methods.equals("All...")&&!mark.equals("All...")&&code.equals("All...")){
				sql=sql+" AND mark = '"+mark+"' AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else if(cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND mark = '"+mark+"' ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&!methods.equals("All...")&&mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(!cellType.equals("")&&methods.equals("All...")&&!mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND mark = '"+mark+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}else if(cellType.equals("")&&!methods.equals("All...")&&!mark.equals("All...")&&!code.equals("All...")){
				sql=sql+" AND code = '"+code+"' AND mark = '"+mark+"' AND methods = '"+methods+"' ORDER BY SEID ASC";
			}else{
				sql=sql+" AND code = '"+code+"' AND mark = '"+mark+"' AND methods = '"+methods+"' AND cellType IN ('"+cellType+"') ORDER BY SEID ASC";
			}
			//String sql="SELECT * FROM "+species+"_superenhancers WHERE chrom = '"+chrom+"' AND start >= "+start+" AND end <= "+end+" ORDER BY SEID ASC";Ϊʲôû���������
			//String sql="SELECT * FROM "+species+"_superenhancers WHERE chrom ='"+chrom+"' AND ((start>="+start+" and start<"+end+") or (end>"+start+" and end<="+end+")) ORDER BY SEID ASC";
			//InitGlobal.logger.info(sql);
			return (List<SuperEnhancers>)InitGlobal.getSqlMapper().queryForList("selectSuperEnhancersByChromLoci",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<SuperEnhancers> getListQueryBySEID(String species,String SEID) {
		try {
			String sql="SELECT * FROM "+species+"_superenhancers WHERE SEID = '"+SEID+"' ORDER BY SEID ASC";
			//InitGlobal.logger.info(sql);
			return (List<SuperEnhancers>)InitGlobal.getSqlMapper().queryForList("selectSuperEnhancersBySEID",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<SuperEnhancers> getListQueryBySEname(String species,String SEname) {
		try {
			String sql="SELECT * FROM "+species+"_superenhancers WHERE name = '"+SEname+"' ORDER BY SEID ASC";
			//InitGlobal.logger.info(sql);
			return (List<SuperEnhancers>)InitGlobal.getSqlMapper().queryForList("selectSuperEnhancersBySEname",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	/**/
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SuperEnhancersDao gd=new SuperEnhancersDao();
		List<SuperEnhancers> list=gd.getListQueryByChromLoci("hg38","chr6",110617715,110700931,"22Rv1","All...","SE","All...");
		//List<SuperEnhancers> list=gd.getListQueryByChromAndCell("hg19_superenhancers", "chr13", 1, 111111111,"Ucsd_pancreas','Ucsd_adrenal_gland");
		//List<SuperEnhancers> list=gd.getListQueryBySEID(InitGlobal.SpeciesMap.get("Human"), "1_MACS_peak_12321_lociStitched");
		//List<String> list=gd.getConservationMedian(InitGlobal.SpeciesMap.get("D. melanogaster"));
		//List<String> list=gd.getGene0k4cell(InitGlobal.SpeciesMap.get("Human"), "A549");
		for(int i=0;i<list.size();i++){
			//System.out.println(list.get(i));
			//String t = new String(list.get(i).getSEID()+"	"+list.get(i).getChrom()+"	"+list.get(i).getStart()+"	"+list.get(i).getEnd()+"	"+list.get(i).getName());
			System.out.println(list.get(i));
		}
		System.out.println(list.size());

	}

}
