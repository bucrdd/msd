package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.SNP;

public class SnpDao{

	@SuppressWarnings("unchecked")
	public List<SNP> getListByIndex(String tableName, String chrom, int start, int end) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from "+tableName+" where chrom='"+chrom+"' AND ((start>="+start+" and start<"+end+") or (end>"+start+" and end<="+end+") or (start<="+start+" and end>="+end+")) ORDER BY start ASC";
			//InitGlobal.logger.info(sql);
			return (List<SNP>)InitGlobal.getSqlMapper().queryForList("selectSnpTable",sql);
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
	
		SnpDao dao=new SnpDao();
		List<SNP> list=dao.getListByIndex("hg19_omim_snp", "chr1",1, 4791863);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getChrom()+" "+list.get(i).getStart()+" "+list.get(i).getEnd()+" "+list.get(i).getName()+" "+list.get(i).getDisease()+" "+list.get(i).getStrand());
		}
	}

}
