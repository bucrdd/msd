package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.SpCas9;

public class SpCas9Dao{

	@SuppressWarnings("unchecked")
	public List<SpCas9> getListByIndex(String tableName, String chrom, int start, int end) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from "+tableName+" where chrom='"+chrom+"' AND ((start>="+start+" and start<"+end+") or (end>"+start+" and end<="+end+") or (start<="+start+" and end>="+end+"))";
			//InitGlobal.logger.info(sql);
			return (List<SpCas9>)InitGlobal.getSqlMapper().queryForList("selectSpCas9Table",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	public Integer getCountAll(String species) {
		try {
			String sql="SELECT COUNT(*) FROM "+species+"_spcas9";
			//InitGlobal.logger.info(sql);
			return (Integer)InitGlobal.getSqlMapper().queryForObject("countSpCas9All",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	
		SpCas9Dao dao=new SpCas9Dao();
		List<SpCas9> list=dao.getListByIndex("hg19_spcas9", "chr1",4767061, 4791863);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getChrom()+" "+list.get(i).getStart()+" "+list.get(i).getEnd()+" "+list.get(i).getSeedSeq());
		}
	}

}
