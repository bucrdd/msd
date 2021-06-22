package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.Genome;

public class GenomeDao {
	
	@SuppressWarnings("unchecked")
	public List<Genome> getListALL(String species) {
		// TODO Auto-generated method stub
		try {
			String sql="SELECT * FROM "+species+"_hic ORDER BY txStart ASC";
			return (List<Genome>) InitGlobal.getSqlMapper().queryForList("selectGenomeAll",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	/*@SuppressWarnings("unchecked")
	public List<Genome> getListQueryByName(String species,String name) {
		// TODO Auto-generated method stub
		try {
		    String sql="SELECT * FROM "+species+"_hic where name = '"+name+"' ORDER BY thickStart ASC";
			//InitGlobal.logger.info(sql);
			return (List<Genome>)InitGlobal.getSqlMapper().queryForList("selectHicByName",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}*/
	
	@SuppressWarnings("unchecked")
	public List<Genome> getListQueryByPosition(String species,String chrom,int txStart,int txEnd) {
		// TODO Auto-generated method stub
		
		try {
			String sql="SELECT * FROM "+species+"_hic WHERE chrom ='"+chrom+"' AND ((txStart>="+txStart+" and txStart<"+txEnd+") or (txEnd>"+txStart+" and txEnd<="+txEnd+") or (txStart<="+txStart+" and txEnd>="+txEnd+")) ORDER BY txStart ASC";
			//InitGlobal.logger.info(sql);
			return (List<Genome>)InitGlobal.getSqlMapper().queryForList("selectGenomeByPosition",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	/*@SuppressWarnings("unchecked")
	public List<String> getChrom(String species) {
		try {
			String sql="SELECT DISTINCT chrom FROM "+species+"_cytoband ORDER BY chrom ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectGenomeChrom",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}*/
	
	/*public String getQueryNameByPosition(String tablename,String chrom,int index){
		try {
			String sql="SELECT DISTINCT name FROM "+tablename+" WHERE chrom = '"+chrom+"' AND chromEnd > "+index+" AND chromStart <= "+index;
			return (String)InitGlobal.getSqlMapper().queryForObject("selectHicNameByPosition",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}*/
	
	@SuppressWarnings("unchecked")
	public List<String> getExonEnds(String species,String chrom,int txStart,int txEnd) {
		// TODO Auto-generated method stub
		
		try {
			//String sql="SELECT exonEnds FROM "+species+"_hiccc WHERE chrom ='"+chrom+"' AND ((txStart>="+txStart+" and txStart<"+txEnd+") or (txEnd>"+txStart+" and txEnd<="+txEnd+") or (txStart<="+txStart+" and txEnd>="+txEnd+")) ORDER BY txStart ASC";
			String sql="SELECT exonEnds FROM "+species+"_hic WHERE chrom ='"+chrom+"' AND ((txStart>="+txStart+" and txStart<"+txEnd+") or (txEnd>"+txStart+" and txEnd<="+txEnd+") or (txStart<="+txStart+" and txEnd>="+txEnd+")) ORDER BY txStart ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectExonEnds",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}

	/*public static void main(String[] args) {
		// TODO Auto-generated method stub
		GenomeDao genome = new GenomeDao();
		//InitGlobal.logger.info(hic.getListALL(InitGlobal.SpeciesMap.get("Human38")).size()+"");
		//System.out.println(HicDao.getListALL("hg38"));
		List<String> list = genome.getExonEnds("hg19", "chr3",98910241,98914940);
		for(String ge:list){
			System.out.println(ge);
		}
	}*/

}
