package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import util.dbcon;


import beans.disease;




import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class disease_action implements Action{
	private String disease;
	
	

	

	public String getDisease() {
		return disease;
	}





	public void setDisease(String disease) {
		this.disease = disease;
	}





	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE="one";
		ArrayList<disease> disease_List = new ArrayList<disease>();
		ArrayList<disease> disease_total = new ArrayList<disease>();
		HashSet<String> disease_name = new HashSet<String>();
		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(disease);
		 if(disease.contains("\'")){
				
			    disease = disease.replace("\'", "\'\'");
				}
		
		String sql = "select PMID,gene,microRNA_name,SNP_ID,disease,type,allele,method,microRNA_effection from msd2 where disease like'%"+disease+"%'";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			disease disease = new disease();
			disease.setPMID(rs.getInt(1));
			disease.setGene(rs.getString(2));
			disease.setMicroRNA_name(rs.getString(3));
			disease.setSNP_ID(rs.getString(4));
			disease.setDisease(rs.getString(5));
			disease.setType(rs.getString(6));
			disease.setAllele(rs.getString(7));
			disease.setMethod(rs.getString(8));
			disease.setMicroRNA_effection(rs.getString(9));
			

			disease_total.add(disease);
			
			if (!disease_name.contains(disease.getDisease())){
				disease_List.add(disease);
				disease_name.add(disease.getDisease());
		}
		}
		if(index==1){
		Map<String, ArrayList<disease>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("disease_List", disease_List);
		request.put("disease_total",disease_total);
		if(disease_List.size()==1){
			
			return ONE;
		}
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
