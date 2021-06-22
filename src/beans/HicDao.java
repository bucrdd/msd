package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.Hic;

public class HicDao {
	@SuppressWarnings("unchecked")
	public List<Hic> getListByIndex(String tableName, String chrom, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from "+tableName+" where chrom='"+chrom+"' AND ((start>="+startIndex+" and start<"+endIndex+") or (end>"+startIndex+" and end<="+endIndex+") or (start<="+startIndex+" and end>="+endIndex+"))";
			//InitGlobal.logger.info(sql);
			return (List<Hic>)InitGlobal.getSqlMapper().queryForList("selectHicTable",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	public Integer getMaxHicValue(String tableName, String chrom, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		try {
			String sql="select Max(hicValue) from "+tableName+" where chrom='"+chrom+"' AND ((start>="+startIndex+" and start<"+endIndex+") or (end>"+startIndex+" and end<="+endIndex+") or (start<="+startIndex+" and end>="+endIndex+"))";
			//InitGlobal.logger.info(sql);
			return (Integer)InitGlobal.getSqlMapper().queryForObject("selectMaxHicValue",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	/*public static void main(String[] args) {
		HicDao hicDao = new HicDao();
		List<Hic> list = hicDao.getListByIndex("hg19_a549_hindiii1_hic", "chr1",15544,23991);
		for(Hic ge:list){
			System.out.println(ge.getHicValue());
		}
	}*/
}
