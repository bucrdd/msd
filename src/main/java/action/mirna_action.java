package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.DbCon;

import beans.mirna;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class mirna_action implements Action{
	private String gene;
	






	public String getGene() {
		return gene;
	}







	public void setGene(String gene) {
		this.gene = gene;
	}







	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<mirna> mirna_List = new ArrayList<mirna>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(gene);
		
		String sql = "select * from m6ahigh where name = '"+gene+"'";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			mirna mirna = new mirna();
			mirna.setDisease(rs.getString(1));
			mirna.setName(rs.getString(2));
			mirna.setChr(rs.getString(3));
			mirna.setStrand(rs.getString(4));
			mirna.setStart(rs.getString(5));
			mirna.setEnd(rs.getString(6));
			mirna.setPvalue(rs.getString(7));
			mirna.setLogFC(rs.getString(8));
			mirna.setGse(rs.getString(9));
			mirna.setTreat_method(rs.getString(10));
			
		
			mirna.setDiff_method(rs.getString(11));
			mirna_List.add(mirna);
		}
		if(index==1){
		Map<String, ArrayList<mirna>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("mirna_List", mirna_List);
		return SUCCESS;
		}else 
			return ERROR;
			
			
			
			
		}
		

}
