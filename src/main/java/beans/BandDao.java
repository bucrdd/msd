package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.CytoBand;

public class BandDao implements BandDaoImpl {

	@SuppressWarnings("unchecked")
	public List<CytoBand> getListALL(String species) {
		// TODO Auto-generated method stub
		try {
			String sql="SELECT * FROM hg38_cytoband";
			return (List<CytoBand>) InitGlobal.getSqlMapper().queryForObject("selectCbandAll",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}

	public String getQueryNameByPosition(String species,String chrom,int index){
		try {
			String sql="SELECT DISTINCT name FROM hg38_cytoband WHERE chrom = '"+chrom+"' AND chromEnd > "+index+" AND chromStart <= "+index;
			return (String)InitGlobal.getSqlMapper().queryForObject("selectCbandNameByPosition",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	public Integer getQueryMaxByChrom(String species,String chr) {
		// TODO Auto-generated method stub
		try {
			String sql="SELECT Max(chromEnd) from hg38_cytoband WHERE chrom = '"+chr+"'";
			return (Integer)InitGlobal.getSqlMapper().queryForObject("selectCbandMaxByChrom",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public double getGenomeSize(String species) {
		// TODO Auto-generated method stub
		double GenomeSize=0;
		try {
			String sql="SELECT DISTINCT chrom from hg38_cytoband";
			List<String> chromList = (List<String>)InitGlobal.getSqlMapper().queryForList("selectChromList",sql);
			for(int i=0;i<chromList.size();i++){
				int chromSize = this.getQueryMaxByChrom(species, chromList.get(i));
				GenomeSize = GenomeSize + chromSize;
			}
			return GenomeSize;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return 0;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<CytoBand> getListQueryByName(String species,String name) {
		// TODO Auto-generated method stub
		try {
		    String sql="SELECT chrom, chromStart, chromEnd, name, gieStain from hg38_cytoband WHERE chrom = '"+name+"'";
			return InitGlobal.getSqlMapper().queryForList("selectCbandByName",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}

	/*public CytoBand getQueryByID(String species,CytoBand id) {
		// TODO Auto-generated method stub
		try {
		    String sql="SELECT chrom, chromStart, chromEnd, name, gieStain from hg38_cytoband WHERE chromStart = #chromStart# and chrom=#chrom#";
			return (CytoBand) InitGlobal.getSqlMapper().queryForObject("selectCbandById",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}*/

	public void insert(CytoBand cytoBand) {
		// TODO Auto-generated method stub
		try {
			InitGlobal.getSqlMapper().insert("insertCband", cytoBand);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
		}
	}

	public void update(CytoBand cytoBand) {
		// TODO Auto-generated method stub
		try {
			InitGlobal.getSqlMapper().update("updateCband", cytoBand);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
		}
	}

	public void deleteById(CytoBand id) {
		// TODO Auto-generated method stub
		try {
			InitGlobal.getSqlMapper().delete("deleteCbandById", id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
		}
	}

	public void deleteByName(String id) {
		// TODO Auto-generated method stub
		try {
			InitGlobal.getSqlMapper().delete("deleteCbandByName", id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
		}
	}

	/**
	 * @param args
	 */
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		InitGlobal.logger.info("xxxx");
		InitGlobal.logger.warning("vvvvv");
		
		BandDao bandDao=new BandDao();
		/*CytoBand cytoBand=new CytoBand();
		cytoBand.setChrom("chr1");
		cytoBand.setChromStart(0);
		cytoBand.setChromEnd(1000);
		cytoBand.setName("biowei");
		cytoBand.setGieStain("giestatain");
//		bandDao.getListQueryByName("chr1");
		
		int max=bandDao.getQueryMaxByChrom(InitGlobal.SpeciesMap.get("Human"),"chr1");
		for(int i=0;i<list.size();i++){
			
			System.out.println(list.get(i));
		}
		System.out.println(max);*/
		
		System.out.println(bandDao.getGenomeSize(InitGlobal.SpeciesMap.get("Human")));
	}

}
