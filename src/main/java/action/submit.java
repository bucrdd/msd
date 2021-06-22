package action;

import java.sql.Statement;

import util.DbCon;

import com.opensymphony.xwork2.Action;

public class submit  implements Action{
 
	public String getGene() {
		return gene;
	}



	public void setGene(String gene) {
		this.gene = gene;
	}



	public String getMiRNA() {
		return miRNA;
	}



	public void setMiRNA(String miRNA) {
		this.miRNA = miRNA;
	}



	public String getSnp_id() {
		return snp_id;
	}



	public void setSnp_id(String snpId) {
		snp_id = snpId;
	}



	public String getDisease() {
		return disease;
	}



	public void setDisease(String disease) {
		this.disease = disease;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public String getAllele() {
		return allele;
	}



	public void setAllele(String allele) {
		this.allele = allele;
	}



	public String getMethod() {
		return method;
	}



	public void setMethod(String method) {
		this.method = method;
	}



	public String getMicroRNA_effection() {
		return microRNA_effection;
	}



	public void setMicroRNA_effection(String microRNAEffection) {
		microRNA_effection = microRNAEffection;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	private String gene;
    private String miRNA;
    private String snp_id;
    private String disease;
    private String type;
    private String allele;
    private String method;
    private String microRNA_effection;
    private String description;
    private String message;
	

	public String getMessage() {
		return message;
	}



	public void setMessage(String message) {
		this.message = message;
	}



	public String execute() throws Exception {
		// TODO Auto-generated method stub
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
	
		if(!gene.equals("")&&!miRNA.equals("")&&!snp_id.equals("")&&!disease.equals("")){
			
		
		
		String sql = "insert into newdata  values('"+ gene + "','"+ miRNA + "','"+ snp_id + "','" + disease + "','" + type + "','"+ allele +"','"+ method + "','" + microRNA_effection + "','" + description + "')";
		
		st.executeUpdate(sql);
		System.out.println(sql);
		return SUCCESS;
	}else{
		
		return ERROR;
		
	}
	}

}
