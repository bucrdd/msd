package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.DbCon;


import beans.Gtmir2;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class gtmir2_action implements Action{
	private String[] gtmir2={};




	public String[] getGtmir2() {
		return gtmir2;
	}




	public void setGtmir2(String[] gtmir2) {
		this.gtmir2 = gtmir2;
	}




	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<Gtmir2> gtmir2_List = new ArrayList<Gtmir2>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(gtmir2);
		String sql=null;
		for(String S: gtmir2)
		{
			sql = "select PMID,gene,microRNA_name,SNP_ID,disease,type,allele,method,microRNA_effection from msd2 where microRNA_name ='"+S+"'";
			System.out.println(sql);
		
		
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			Gtmir2 gtmir2 = new Gtmir2();
			gtmir2.setPmid(rs.getInt(1));
			gtmir2.setGene(rs.getString(2));
			gtmir2.setMicroRNA_name(rs.getString(3));
			gtmir2.setSNP_ID(rs.getString(4));
			gtmir2.setDisease(rs.getString(5));
			gtmir2.setType(rs.getString(6));
			gtmir2.setAllele(rs.getString(7));
			gtmir2.setMethod(rs.getString(8));
			gtmir2.setMicroRNA_effection(rs.getString(9));
			
			gtmir2_List.add(gtmir2);
		}
		}
		if(index==1){
		Map<String, ArrayList<Gtmir2>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("gtmir2_List", gtmir2_List);
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
