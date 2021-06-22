package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import util.DbCon;



import beans.mirsnp;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class mirsnp_action implements Action{
	private String mirsnp;











	public String getMirsnp() {
		return mirsnp;
	}











	public void setMirsnp(String mirsnp) {
		this.mirsnp = mirsnp;
	}











	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE="one";
		ArrayList<mirsnp> mirsnp_total = new ArrayList<mirsnp>();
		ArrayList<mirsnp> mirsnp_List = new ArrayList<mirsnp>();
		HashSet<String> mirsnp_name = new HashSet<String>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(mirsnp);
		
		String sql = "select PMID,gene,microRNA_name,SNP_ID,disease,type,allele,method,microRNA_effection from msd2 where  SNP_ID like'%"+mirsnp+"%'";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			mirsnp mirsnp = new mirsnp();
			mirsnp.setPMID(rs.getInt(1));
			mirsnp.setGene(rs.getString(2));
			mirsnp.setMicroRNA_name(rs.getString(3));
			mirsnp.setSNP_ID(rs.getString(4));
			mirsnp.setDisease(rs.getString(5));
			mirsnp.setType(rs.getString(6));
			mirsnp.setAllele(rs.getString(7));
			mirsnp.setMethod(rs.getString(8));
			mirsnp.setMicroRNA_effection(rs.getString(9));
			mirsnp_total.add(mirsnp);
			if (!mirsnp_name.contains(mirsnp.getSNP_ID())){
				mirsnp_List.add(mirsnp);
				mirsnp_name.add(mirsnp.getSNP_ID());
		}
		}
		if(index==1){
		Map<String, ArrayList<mirsnp>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("mirsnp_List",mirsnp_List);
		request.put("mirsnp_total",mirsnp_total);
		if(mirsnp_List.size()==1){
			
			return ONE;
		
		}
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
