package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.Expression;

public class ExpressionDao{

	@SuppressWarnings("unchecked")
	public List<Expression> getListByIndex(String tableName, String chrom, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from "+tableName+" where chrom='"+chrom+"' AND ((start>="+startIndex+" and start<="+endIndex+") or (end>="+startIndex+" and end<="+endIndex+") or (start<="+startIndex+" and end>="+endIndex+"))";
			//InitGlobal.logger.info(sql);
			return (List<Expression>)InitGlobal.getSqlMapper().queryForList("selectExpressionTable",sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			InitGlobal.logger.warning(e.getMessage());
			return null;
		}
	}
	
	public Integer getMaxExpressionValue(String tableName, String chrom, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		try {
			String sql="select Max(ExpressionValue) from "+tableName+" where chrom='"+chrom+"' AND ((start>="+startIndex+" and start<="+endIndex+") or (end>="+startIndex+" and end<="+endIndex+") or (start<="+startIndex+" and end>="+endIndex+"))";
			//InitGlobal.logger.info(sql);
			return (Integer)InitGlobal.getSqlMapper().queryForObject("selectMaxExpressionValue",sql);
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
	
		ExpressionDao dao=new ExpressionDao();
		List<Expression> list=dao.getListByIndex("hg19_adipose_tissue_expression", "chr1",4767061, 4791863);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getChrom()+" "+list.get(i).getStart()+" "+list.get(i).getEnd()+" "+list.get(i).getExpressionValue());
		}
		System.out.println(dao.getMaxExpressionValue("hg19_adipose_tissue_expression", "chr1",4772143,4772243));
	}

}
