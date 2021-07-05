package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.DbCon;

import beans.Gene;



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
		ArrayList<Gene> gene_List = new ArrayList<Gene>();
		DbCon dbc = new DbCon();
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
			Gene gene = new Gene();
			gene.setDisease(rs.getString(1));
			
			/*Gene.setGeneid(rs.getString(2));
			Gene.setProtein(rs.getString(3));
			Gene.setRegulatory(rs.getString(4));
			Gene.setPrognostic(rs.getString(5));
			Gene.setMethylation_site(rs.getString(6));
			Gene.setGenomic_location(rs.getString(7));
			Gene.setTissue(rs.getString(8));
			Gene.setMethod(rs.getString(9));
			Gene.setSpecies(rs.getString(10));
			Gene.setPmid(rs.getString(11));
			Gene.setTitle(rs.getString(12));
			Gene.setDescription(rs.getString(13));*/
			
			gene_List.add(gene);
		}
		if(index==1){
		Map<String, ArrayList<Gene>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("gene_List", gene_List);
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
