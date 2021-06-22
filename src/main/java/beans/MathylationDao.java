package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.SiteMeth;

public class MathylationDao{

	@SuppressWarnings("unchecked")
	public List<SiteMeth> getListByIndex(String tableName, String chrom, int start, int end) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from "+tableName+" where chrom='"+chrom+"' AND ((start>="+start+" and start<"+end+") or (end>"+start+" and end<="+end+") or (start<="+start+" and end>="+end+"))";
			//InitGlobal.logger.info(sql);
			return (List<SiteMeth>)InitGlobal.getSqlMapper().queryForList("selectSiteMethTable",sql);
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
	
		MathylationDao dao=new MathylationDao();
		List<SiteMeth> list=dao.getListByIndex("hg19_adrenal_gland_methy", "chr1",3000574, 3011000);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getChrom()+"	"+list.get(i).getStart()+"	"+list.get(i).getMethyValue()+"		"+i);
		}
	}
}
