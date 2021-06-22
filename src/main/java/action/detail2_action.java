package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.DbCon;

import beans.detail2;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class detail2_action implements Action{
	private String detail;
	private String gene;
	private String mir;
	private String disease;
	private String microRNA_effection;
	private String snpid;
	
	
	
	


	public String getSnpid() {
		return snpid;
	}



	public void setSnpid(String snpid) {
		this.snpid = snpid;
	}



	public String getMicroRNA_effection() {
		return microRNA_effection;
	}



	public void setMicroRNA_effection(String microRNAEffection) {
		microRNA_effection = microRNAEffection;
	}



	public String getDisease() {
		return disease;
	}



	public void setDisease(String disease) {
		this.disease = disease;
	}



	public String getMir() {
		return mir;
	}



	public void setMir(String mir) {
		this.mir = mir;
	}



	public String getGene() {
		return gene;
	}



	public void setGene(String gene) {
		this.gene = gene;
	}



	public String getDetail() {
		return detail;
	}



	public void setDetail(String detail) {
		this.detail = detail;
	}



	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<detail2> detail_List = new ArrayList<detail2>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(detail);
		if(disease.contains("\'")){
			
			disease = disease.replace("\'", "\'\'");
		}
		
		String sql = "select * from msd2 where PMID ='"+detail+"' and gene='"+gene+"' and microRNA_name='"+mir+"' and SNP_ID='"+snpid+"' and disease='"+disease+"' and microRNA_effection='"+microRNA_effection+"'";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			detail2 detail = new detail2();
			detail.setPMID(rs.getInt(1));
			detail.setGene(rs.getString(2));
			detail.setMicroRNA_name(rs.getString(3));
			detail.setSNP_ID(rs.getString(4));
			detail.setDisease(rs.getString(5));
			detail.setType(rs.getString(7));
			detail.setAllele(rs.getString(8));
			detail.setMethod(rs.getString(9));
			detail.setMicroRNA_effection(rs.getString(10));
			detail.setDiscription(rs.getString(11));
			detail.setAbbr(rs.getString(6));
			detail.setTitle(rs.getString(12));
			detail.setTissue(rs.getString(13));

			detail_List.add(detail);
		}
		if(index==1){
		Map<String, ArrayList<detail2>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("detail_List", detail_List);
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
