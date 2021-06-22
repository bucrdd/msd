package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import util.DbCon;



import beans.gtmir;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class gtmir_action implements Action{
	private String gtmir;
	

	

	public String getGtmir() {
		return gtmir;
	}




	public void setGtmir(String gtmir) {
		this.gtmir = gtmir;
	}




	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE="one";
		ArrayList<gtmir> gtmir_List = new ArrayList<gtmir>();
		ArrayList<gtmir> gtmir_total = new ArrayList<gtmir>();
		HashSet<String> gtmir_name = new HashSet<String>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(gtmir);
		
		String sql = "select PMID,gene,microRNA_name,SNP_ID,disease,type,allele,method,microRNA_effection from msd2 where microRNA_name like'%"+gtmir+"%'";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			gtmir gtmir = new gtmir();
			gtmir.setPMID(rs.getInt(1));
			gtmir.setGene(rs.getString(2));
			gtmir.setMicroRNA_name(rs.getString(3));
			gtmir.setSNP_ID(rs.getString(4));
			gtmir.setDisease(rs.getString(5));
			gtmir.setType(rs.getString(6));
			gtmir.setAllele(rs.getString(7));
			gtmir.setMethod(rs.getString(8));
			gtmir.setMicroRNA_effection(rs.getString(9));
			gtmir_total.add(gtmir);
			
			if (!gtmir_name.contains(gtmir.getMicroRNA_name())){
				gtmir_List.add(gtmir);
				gtmir_name.add(gtmir.getMicroRNA_name());
		}
		}
		if(index==1){
		Map<String, ArrayList<gtmir>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("gtmir_List", gtmir_List);
		request.put("gtmir_total",gtmir_total);
		if(gtmir_List.size()==1){
			
			return ONE;
		}
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
