package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.DbCon;


import beans.gtsnp2;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class gtsnp2_action implements Action{
	private String[] gtsnp2={};
	



















	public String[] getGtsnp2() {
		return gtsnp2;
	}




















	public void setGtsnp2(String[] gtsnp2) {
		this.gtsnp2 = gtsnp2;
	}




















	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<gtsnp2> gtsnp2_List = new ArrayList<gtsnp2>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(gtsnp2);
		String sql=null;
		for(String S: gtsnp2)
		{
			sql = "select PMID,gene,microRNA_name,SNP_ID,disease,type,allele,method,microRNA_effection from msd2 where  SNP_ID='"+S+"'";
			System.out.println(sql);
		
		
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			gtsnp2 gtsnp2 = new gtsnp2();
			gtsnp2.setPMID(rs.getInt(1));
			gtsnp2.setGene(rs.getString(2));
			gtsnp2.setMicroRNA_name(rs.getString(3));
			gtsnp2.setSNP_ID(rs.getString(4));
			gtsnp2.setDisease(rs.getString(5));
			gtsnp2.setType(rs.getString(6));
			gtsnp2.setAllele(rs.getString(7));
			gtsnp2.setMethod(rs.getString(8));
			gtsnp2.setMicroRNA_effection(rs.getString(9));
			
			gtsnp2_List.add(gtsnp2);
		}
		}
		if(index==1){
		Map<String, ArrayList<gtsnp2>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("gtsnp2_List", gtsnp2_List);
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
