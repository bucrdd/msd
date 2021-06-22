package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import util.DbCon;



import beans.gtsnp;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class gtsnp_action implements Action{
	private String gtsnp;
	



	public String getGtsnp() {
		return gtsnp;
	}




	public void setGtsnp(String gtsnp) {
		this.gtsnp = gtsnp;
	}




	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE="one";
		ArrayList<gtsnp> gtsnp_List = new ArrayList<gtsnp>();
		ArrayList<gtsnp> gtsnp_total = new ArrayList<gtsnp>();
		HashSet<String> gtsnp_name = new HashSet<String>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(gtsnp);
		
		String sql = "select PMID,gene,microRNA_name,SNP_ID,disease,type,allele,method,microRNA_effection from msd2 where  SNP_ID like'%"+gtsnp+"%'";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			gtsnp gtsnp = new gtsnp();
			gtsnp.setPMID(rs.getInt(1));
			gtsnp.setGene(rs.getString(2));
			gtsnp.setMicroRNA_name(rs.getString(3));
			gtsnp.setSNP_ID(rs.getString(4));
			gtsnp.setDisease(rs.getString(5));
			gtsnp.setType(rs.getString(6));
			gtsnp.setAllele(rs.getString(7));
			gtsnp.setMethod(rs.getString(8));
			gtsnp.setMicroRNA_effection(rs.getString(9));
			gtsnp_total.add(gtsnp);
			

			if (!gtsnp_name.contains(gtsnp.getSNP_ID())){
				gtsnp_List.add(gtsnp);
				gtsnp_name.add(gtsnp.getSNP_ID());
		}
		}
		if(index==1){
		Map<String, ArrayList<gtsnp>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("gtsnp_List", gtsnp_List);
		request.put("gtsnp_total",gtsnp_total);
		if(gtsnp_List.size()==1){
			
			return ONE;
		}
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
