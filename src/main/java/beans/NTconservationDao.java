package beans;

import java.sql.SQLException;
import java.util.List;

import beans.InitGlobal;
import beans.NTconservation;

public class NTconservationDao{

	@SuppressWarnings("unchecked")
	public List<NTconservation> getListByIndex(String tableName, String chrom, int start, int end) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from "+tableName+" where chrom='"+chrom+"' AND ((start>="+start+" and start<"+end+") or (end>"+start+" and end<="+end+") or (start<="+start+" and end>="+end+"))";
			//InitGlobal.logger.info(sql);
			return (List<NTconservation>)InitGlobal.getSqlMapper().queryForList("selectNTconservation",sql);
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
	
		NTconservationDao dao=new NTconservationDao();
		List<NTconservation> list=dao.getListByIndex("ce10_conservation", "chrIII",2122677, 2126177);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getChrom()+"	"+list.get(i).getStart()+"	"+list.get(i).getMean()+"		"+i);
		}
	}
}
