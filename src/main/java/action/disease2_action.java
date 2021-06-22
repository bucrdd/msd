package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.DbCon;


import beans.disease2;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class disease2_action implements Action{
	private String[] disease2={};
	



















	public String[] getDisease2() {
		return disease2;
	}




















	public void setDisease2(String[] disease2) {
		this.disease2 = disease2;
	}




















	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<disease2> disease2_List = new ArrayList<disease2>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(disease2);
		String sql=null;
		for(String S: disease2)
		{
			if(S.contains("\'")){
				
			    S = S.replace("\'", "\'\'");
				}
				
			sql = "select * from msd2 where  disease ='"+S+"'";
			System.out.println(sql);
		
		
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			disease2 disease2 = new disease2();
			disease2.setPMID(rs.getInt(1));
			disease2.setGene(rs.getString(2));
			disease2.setMicroRNA_name(rs.getString(3));
			disease2.setSNP_ID(rs.getString(4));
			disease2.setDisease(rs.getString(5));
			disease2.setType(rs.getString(7));
			disease2.setAllele(rs.getString(8));
			disease2.setMethod(rs.getString(9));
			disease2.setMicroRNA_effection(rs.getString(10));
			
			disease2_List.add(disease2);
		}
		}
		if(index==1){
		Map<String, ArrayList<disease2>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("disease2_List", disease2_List);
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
