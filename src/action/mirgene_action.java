package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import util.dbcon;


import beans.mirgene;




import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class mirgene_action implements Action{
	private String mirgene;



	public String getMirgene() {
		return mirgene;
	}



	public void setMirgene(String mirgene) {
		this.mirgene = mirgene;
	}



	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE="one";
		ArrayList<mirgene> mirgene_List = new ArrayList<mirgene>();
		ArrayList<mirgene> mirgene_total = new ArrayList<mirgene>();
		HashSet<String> mirgene_name = new HashSet<String>();
		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(mirgene);
		
		String sql = "select PMID,gene,microRNA_name,SNP_ID,disease,type,allele,method,microRNA_effection from msd2 where  gene like'%"+mirgene+"%'";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			mirgene mirgene = new mirgene();
			mirgene.setPMID(rs.getInt(1));
			mirgene.setGene(rs.getString(2));
			mirgene.setMicroRNA_name(rs.getString(3));
			mirgene.setSNP_ID(rs.getString(4));
			mirgene.setDisease(rs.getString(5));
			mirgene.setType(rs.getString(6));
			mirgene.setAllele(rs.getString(7));
			mirgene.setMethod(rs.getString(8));
			mirgene.setMicroRNA_effection(rs.getString(9));
			mirgene_total.add(mirgene);
			
			if (!mirgene_name.contains(mirgene.getGene())){
				mirgene_List.add(mirgene);
				mirgene_name.add(mirgene.getGene());
		}
		}
		if(index==1){
		Map<String, ArrayList<mirgene>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("mirgene_List", mirgene_List);
		request.put("mirgene_total",mirgene_total);
		if(mirgene_List.size()==1){
			
			return ONE;
		}
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
