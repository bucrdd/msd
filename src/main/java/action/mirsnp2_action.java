package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.DbCon;


import beans.mirsnp2;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class mirsnp2_action implements Action{
	private String[] mirsnp2;
	
	




	public String[] getMirsnp2() {
		return mirsnp2;
	}






	public void setMirsnp2(String[] mirsnp2) {
		this.mirsnp2 = mirsnp2;
	}






	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<mirsnp2> mirsnp2_List = new ArrayList<mirsnp2>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(mirsnp2);
		String sql=null;
		for(String S: mirsnp2)
		{
			sql = "select PMID,gene,microRNA_name,SNP_ID,disease,type,allele,method,microRNA_effection from msd2 where  SNP_ID ='"+S+"'";
			System.out.println(sql);
			
		
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			mirsnp2 mirsnp2 = new mirsnp2();
			mirsnp2.setPMID(rs.getInt(1));
			mirsnp2.setGene(rs.getString(2));
			mirsnp2.setMicroRNA_name(rs.getString(3));
			mirsnp2.setSNP_ID(rs.getString(4));
			mirsnp2.setDisease(rs.getString(5));
			mirsnp2.setType(rs.getString(6));
			mirsnp2.setAllele(rs.getString(7));
			mirsnp2.setMethod(rs.getString(8));
			mirsnp2.setMicroRNA_effection(rs.getString(9));
			
			mirsnp2_List.add(mirsnp2);
		}
		}
		if(index==1){
		Map<String, ArrayList<mirsnp2>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("mirsnp2_List",mirsnp2_List);
		return SUCCESS;
		}else
			return ERROR;
			
		
		
			
		}
		

}
