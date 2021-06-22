package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.dbcon;


import beans.snpid;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class snpid_action implements Action{
	private String disease;
	public String getDisease() {
		return disease;
	}



	public void setDisease(String disease) {
		this.disease = disease;
	}



	public String getProtein() {
		return protein;
	}



	public void setProtein(String protein) {
		this.protein = protein;
	}



	private String protein;

	

	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<snpid> snpid_List = new ArrayList<snpid>();
		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(disease);
		System.out.println(protein);
		String sql = "select * from m6apro where disease ='"+disease+"' and  protein like '%"+protein+"%'";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			snpid snpid = new snpid();
			
			snpid.setDisease(rs.getString(1));
			snpid.setProtein(rs.getString(2));
			snpid.setNode(rs.getString(3));
			snpid.setScore(rs.getString(4));
			
			
			snpid_List.add(snpid);
		}
		if(index==1){
		Map<String, ArrayList<snpid>> request = (Map) ActionContext.getContext().get("request");
		request.put("snpid_List", snpid_List);
		return SUCCESS;
		}else
			return ERROR;
		
		
	}
}
