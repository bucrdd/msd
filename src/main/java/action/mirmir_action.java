package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import util.DbCon;


import beans.mirmir;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class mirmir_action implements Action{
	private String mirmir;






	public String getMirmir() {
		return mirmir;
	}






	public void setMirmir(String mirmir) {
		this.mirmir = mirmir;
	}






	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE="one";
		ArrayList<mirmir> mirmir_total = new ArrayList<mirmir>();
		ArrayList<mirmir> mirmir_List = new ArrayList<mirmir>();
		HashSet<String> mirmir_name = new HashSet<String>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(mirmir);
		
		String sql = "select PMID,gene,microRNA_name,SNP_ID,disease,type,allele,method,microRNA_effection from msd2 where  microRNA_name like'%"+mirmir+"%'";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			mirmir mirmir = new mirmir();
			mirmir.setPMID(rs.getInt(1));
			mirmir.setGene(rs.getString(2));
			mirmir.setMicroRNA_name(rs.getString(3));
			mirmir.setSNP_ID(rs.getString(4));
			mirmir.setDisease(rs.getString(5));
			mirmir.setType(rs.getString(6));
			mirmir.setAllele(rs.getString(7));
			mirmir.setMethod(rs.getString(8));
			mirmir.setMicroRNA_effection(rs.getString(9));
			mirmir_total.add(mirmir);
			if (!mirmir_name.contains(mirmir.getMicroRNA_name())){
				mirmir_List.add(mirmir);
				mirmir_name.add(mirmir.getMicroRNA_name());
		}
		}
		
		if(index==1){
		Map<String, ArrayList<mirmir>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("mirmir_List",mirmir_List);
		request.put("mirmir_total",mirmir_total);
		if(mirmir_List.size()==1){
			
			return ONE;
		
		}
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

	}

