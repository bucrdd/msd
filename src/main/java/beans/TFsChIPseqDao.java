package beans;

import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import beans.InitGlobal;
import beans.TFsChIPseq;

public class TFsChIPseqDao{

	@SuppressWarnings("unchecked")
	public List<TFsChIPseq> getListByIndex(String tableName, String chrom, int startIndex, int endIndex) {
		// TODO Auto-generated method stub
		try {
			String sql="select * from "+tableName+" where chrom='"+chrom+"' AND ((start>="+startIndex+" and start<="+endIndex+") or (end>="+startIndex+" and end<="+endIndex+") or (start<="+startIndex+" and end>="+endIndex+"))";
			//InitGlobal.logger.info(sql);
			return (List<TFsChIPseq>)InitGlobal.getSqlMapper().queryForList("selectTFsChIPseqTable",sql);
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
			String sql="select Max(TFValue) from "+tableName+" where chrom='"+chrom+"' AND ((start>="+startIndex+" and start<="+endIndex+") or (end>="+startIndex+" and end<="+endIndex+") or (start<="+startIndex+" and end>="+endIndex+"))";
			//InitGlobal.logger.info(sql);
			return (Integer)InitGlobal.getSqlMapper().queryForObject("selectMaxTFValue",sql);
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
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:ms");//�������ڸ�ʽ
		System.out.println(df.format(new Date(System.currentTimeMillis())));// new Date()Ϊ��ȡ��ǰϵͳʱ��
		TFsChIPseqDao dao=new TFsChIPseqDao();
		List<TFsChIPseq> list=dao.getListByIndex("hg19_a549_cebpb_tf", "chr1",1, 14791863);
		System.out.println(list.size());
		/*for(int i=0;i<list.size();i++){
			System.out.println(i+" -> "+list.get(i).getChrom()+" "+list.get(i).getStart()+" "+list.get(i).getEnd()+" "+list.get(i).getTFValue());
		}*/
		
		System.out.println(dao.getMaxExpressionValue("hg19_a549_cebpb_tf", "chr1",1, 14791863));
		System.out.println(df.format(new Date(System.currentTimeMillis())));
	}

}
