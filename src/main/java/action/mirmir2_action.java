package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.DbCon;


import beans.mirmir2;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class mirmir2_action implements Action{
	private String[] mirmir2;
	
	public String[] getMirmir2() {
		return mirmir2;
	}


	public void setMirmir2(String[] mirmir2) {
		this.mirmir2 = mirmir2;
	}




	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<mirmir2> mirmir2_List = new ArrayList<mirmir2>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(mirmir2);
		String sql=null;
		for(String S: mirmir2)
		{
			sql = "select PMID,gene,microRNA_name,SNP_ID,disease,type,allele,method,microRNA_effection from msd2 where  microRNA_name ='"+S+"'";
			System.out.println(sql);
			
		
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			mirmir2 mirmir2 = new mirmir2();
			mirmir2.setPMID(rs.getInt(1));
			mirmir2.setGene(rs.getString(2));
			mirmir2.setMicroRNA_name(rs.getString(3));
			mirmir2.setSNP_ID(rs.getString(4));
			mirmir2.setDisease(rs.getString(5));
			mirmir2.setType(rs.getString(6));
			mirmir2.setAllele(rs.getString(7));
			mirmir2.setMethod(rs.getString(8));
			mirmir2.setMicroRNA_effection(rs.getString(9));
			
			mirmir2_List.add(mirmir2);
		}
		}
		if(index==1){
		Map<String, ArrayList<mirmir2>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("mirmir2_List",mirmir2_List);
		return SUCCESS;
		}else
			return ERROR;
			
		
		
			
		}
		

}
