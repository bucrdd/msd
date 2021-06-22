package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.RefGene;
import beans.RefGeneDaoImpl;

public class RefGeneDao implements RefGeneDaoImpl {

	@SuppressWarnings("unchecked")
	public List<RefGene> getListALL(String species) {
		// TODO Auto-generated method stub
		try {
			String sql="SELECT * FROM "+species+"_refgene ORDER BY txStart ASC";
			//InitGlobal.logger.info(sql);
			return (List<RefGene>)InitGlobal.getSqlMapper().queryForList("selectRefGeneAll",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<RefGene> getListQueryByName(String species,String name) {
		// TODO Auto-generated method stub
		try {
		    String sql="SELECT * FROM "+species+"_refgene where name = '"+name+"' ORDER BY txStart ASC";
			//InitGlobal.logger.info(sql);
			return (List<RefGene>)InitGlobal.getSqlMapper().queryForList("selectRefGeneByName",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<RefGene> getListQueryByName2(String species,String name2) {
		// TODO Auto-generated method stub
		try {
			String sql="SELECT * FROM "+species+"_refgene where name2 = '"+name2+"' ORDER BY txStart ASC";
			//InitGlobal.logger.info(sql);
			return (List<RefGene>)InitGlobal.getSqlMapper().queryForList("selectRefGeneByName2",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<RefGene> getListQueryByPosition(String species,String chrom,int txStart,int txEnd) {
		// TODO Auto-generated method stub
		
		try {
			String sql="SELECT * FROM "+species+"_refgene WHERE chrom ='"+chrom+"' AND ((txStart>="+txStart+" and txStart<"+txEnd+") or (txEnd>"+txStart+" and txEnd<="+txEnd+") or (txStart<="+txStart+" and txEnd>="+txEnd+")) ORDER BY txStart ASC";
			//InitGlobal.logger.info(sql);
			return (List<RefGene>)InitGlobal.getSqlMapper().queryForList("selectRefGeneByPosition",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<RefGene> getListQueryByPositionForDetailInfoAction(String species,String chrom,int txStart,int txEnd) {
		// TODO Auto-generated method stub
		
		try {
			String sql="SELECT * FROM "+species+"_refgene WHERE chrom ='"+chrom+"' AND ((txStart>="+txStart+" and txStart<"+txEnd+") or (txEnd>"+txStart+" and txEnd<="+txEnd+") or (txStart<="+txStart+" and txEnd>="+txEnd+")) GROUP BY name2 ORDER BY txStart ASC";
			//InitGlobal.logger.info(sql);
			return (List<RefGene>)InitGlobal.getSqlMapper().queryForList("selectRefGeneByPosition",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getChrom(String species) {
		try {
			String sql="SELECT DISTINCT chrom FROM "+species+"_cytoband ORDER BY chrom ASC";
			//InitGlobal.logger.info(sql);
			return (List<String>)InitGlobal.getSqlMapper().queryForList("selectChrom",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}

	/*public static void main(String[] args){
		RefGeneDao refg=new RefGeneDao();
		List<RefGene> list=refg.getListQueryByName2(InitGlobal.SpeciesMap.get("Human"),"SOX2");
//		Position("chr1", 193644033, 193665772);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i));
			String t = new String(list.get(i).getName2()+"----"+list.get(i).getChrom()+"----"+list.get(i).getTxStart()+"----"+list.get(i).getTxEnd());
			System.out.println(t);
			for(int j=0;j<list.get(i).getExonStarts().length;j++){
				System.out.println(list.get(i).getExonStarts()[j]);
			}
		}
	}*/
}
