package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.dbcon;

import beans.gene;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class gene_action implements Action{
	private String gene;
	
	private String disease;
	private String protein;
	public String getProtein() {
		return protein;
	}

	public void setProtein(String protein) {
		this.protein = protein;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getGene() {
		return gene;
	}

	public void setGene(String gene) {
		this.gene = gene;
	}


	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<gene> gene_List = new ArrayList<gene>();
		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(gene);
		System.out.println(disease);
	
		if(disease == null || disease.equals("")){
			
			disease = "";
		}
	if(gene == null|| gene.equals("") ){
		gene = "";
		
		}
	if(protein == null|| protein.equals("") ){
		protein = "";
		
		}
		String sql = "select * from m6a where methylation_site like '%"+gene+"%' and disease like'%"+disease+"%' and protein like'%"+protein+"%' ";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			gene gene = new gene();
			gene.setDisease(rs.getString(1));
			
			/*gene.setGeneid(rs.getString(2));
			gene.setProtein(rs.getString(3));
			gene.setRegulatory(rs.getString(4));
			gene.setPrognostic(rs.getString(5));
			gene.setMethylation_site(rs.getString(6));
			gene.setGenomic_location(rs.getString(7));
			gene.setTissue(rs.getString(8));
			gene.setMethod(rs.getString(9));
			gene.setSpecies(rs.getString(10));
			gene.setPmid(rs.getString(11));
			gene.setTitle(rs.getString(12));
			gene.setDescription(rs.getString(13));*/
			
			gene_List.add(gene);
		}
		if(index==1){
		Map<String, ArrayList<gene>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("gene_List", gene_List);
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
