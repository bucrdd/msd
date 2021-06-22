package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.dbcon;

import beans.detail;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class detail_action implements Action{
	private String detail;
	private String geneid;
	private String methylation_site;
	private String disease;
	private String regulatory;
	
	private String species;



	public String getSpecies() {
		return species;
	}




	public void setSpecies(String species) {
		this.species = species;
	}




	public String getDetail() {
		return detail;
	}




	public void setDetail(String detail) {
		this.detail = detail;
	}




	public String getGeneid() {
		return geneid;
	}




	public void setGeneid(String geneid) {
		this.geneid = geneid;
	}




	public String getMethylation_site() {
		return methylation_site;
	}




	public void setMethylation_site(String methylationSite) {
		methylation_site = methylationSite;
	}




	public String getDisease() {
		return disease;
	}




	public void setDisease(String disease) {
		this.disease = disease;
	}




	public String getRegulatory() {
		return regulatory;
	}




	public void setRegulatory(String regulatory) {
		this.regulatory = regulatory;
	}




	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<detail> detail_List = new ArrayList<detail>();
		
		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		
		if(disease.contains("\'")){
			
			disease = disease.replace("\'", "\'\'");
		}
		System.out.println(detail);
		if(detail == null){
			String sql = "select * from m6a where pmid ='"+detail+"' and protein='"+geneid+"' and methylation_site='"+methylation_site+"' and species='"+species+"' and disease like '%"+disease+"%' and regulatory='"+regulatory+"'";		
			System.out.println(sql);
			rs=st.executeQuery(sql);
			while (rs.next()) {
				index=1;
				detail detail = new detail();
				detail.setDisease(rs.getString(1));
				detail.setGeneid(rs.getString(2));
				detail.setProtein(rs.getString(3));
				detail.setRegulatory(rs.getString(4));
				detail.setPrognostic(rs.getString(5));
				detail.setMethylation_site(rs.getString(6));
				detail.setGenomic_location(rs.getString(7));
				detail.setTissue(rs.getString(8));
				detail.setMethod(rs.getString(9));
				detail.setSpecies(rs.getString(10));
				detail.setPmid(rs.getString(11));
				detail.setTitle(rs.getString(12));
				detail.setOrgan(rs.getString(13));
				detail.setDescription(rs.getString(14));
				
				

				detail_List.add(detail);
			}
			if(index==1){
			Map<String, ArrayList<detail>> request = (Map) ActionContext.getContext().get("request");
				
			request.put("detail_List", detail_List);
			return SUCCESS;
			}else
				return ERROR;
				
				
				
			}
		
		else{
			String sql = "select * from m6a where pmid ='"+detail+"' and protein='"+geneid+"' and methylation_site='"+methylation_site+"' and species='"+species+"' and disease like '%"+disease+"%' and regulatory='"+regulatory+"'";		
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			detail detail = new detail();
			detail.setDisease(rs.getString(1));
			detail.setGeneid(rs.getString(2));
			detail.setProtein(rs.getString(3));
			detail.setRegulatory(rs.getString(4));
			detail.setPrognostic(rs.getString(5));
			detail.setMethylation_site(rs.getString(6));
			detail.setGenomic_location(rs.getString(7));
			detail.setTissue(rs.getString(8));
			detail.setMethod(rs.getString(9));
			detail.setSpecies(rs.getString(10));
			detail.setPmid(rs.getString(11));
			detail.setTitle(rs.getString(12));
			detail.setOrgan(rs.getString(13));
			detail.setDescription(rs.getString(14));
			
			

			detail_List.add(detail);
		}
		if(index==1){
		Map<String, ArrayList<detail>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("detail_List", detail_List);
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}}
		

}
