package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.Histone;

public class HistoneDao{

	@SuppressWarnings("unchecked")
	public List<Histone> getListByIndex(String tableName, String chrom, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from "+tableName+" where chrom='"+chrom+"' AND ((start>="+startIndex+" and start<"+endIndex+") or (end>"+startIndex+" and end<="+endIndex+") or (start<="+startIndex+" and end>="+endIndex+"))";
			//InitGlobal.logger.info(sql);
			return (List<Histone>)InitGlobal.getSqlMapper().queryForList("selectHistoneTable",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	public Integer getMaxHistoneValue(String tableName, String chrom, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		try {
			String sql="select Max(histoneValue) from "+tableName+" where chrom='"+chrom+"' AND ((start>="+startIndex+" and start<"+endIndex+") or (end>"+startIndex+" and end<="+endIndex+") or (start<="+startIndex+" and end>="+endIndex+"))";
			//InitGlobal.logger.info(sql);
			return (Integer)InitGlobal.getSqlMapper().queryForObject("selectMaxHistoneValue",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	public Double getAvgValue(String tableName, String chrom, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		try {
			String sql="select Avg(histoneValue) from "+tableName+" where chrom='"+chrom+"' AND ((start>="+startIndex+" and start<"+endIndex+") or (end>"+startIndex+" and end<="+endIndex+") or (start<="+startIndex+" and end>="+endIndex+"))";
			//InitGlobal.logger.info(sql);
			return (Double)InitGlobal.getSqlMapper().queryForObject("selectAvgValue",sql);
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
	
		HistoneDao dao=new HistoneDao();
		List<Histone> list=dao.getListByIndex("hg19_bbac_h3k27ac", "chr1",4767061, 4791863);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getChrom()+" "+list.get(i).getStart()+" "+list.get(i).getEnd()+" "+list.get(i).getHistoneValue());
		}
		System.out.println(dao.getMaxHistoneValue("hg19_bbac_h3k27ac", "chr1",4767061,4791863));
	}

}
