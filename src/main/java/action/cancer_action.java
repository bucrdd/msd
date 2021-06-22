package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.DbCon;


import beans.cancer;









import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class cancer_action implements Action{
	public String getTech() {
		return Tech;
	}


	public void setTech(String tech) {
		Tech = tech;
	}


	public String getHm() {
		return hm;
	}


	public void setHm(String hm) {
		this.hm = hm;
	}


	public String getGene() {
		return gene;
	}


	public void setGene(String gene) {
		this.gene = gene;
	}


	public String getRefseqid() {
		return Refseqid;
	}


	public void setRefseqid(String refseqid) {
		Refseqid = refseqid;
	}


	public String getTissue() {
		return tissue;
	}


	public void setTissue(String tissue) {
		this.tissue = tissue;
	}


	private String Tech;
	private String hm;
	private String gene;
	private String Refseqid;
	private String tissue;

	
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE="one";
		ArrayList<cancer> cancer_List = new ArrayList<cancer>();
		ArrayList<cancer> cancer_total = new ArrayList<cancer>();

		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		/*if(type.contains("\'")){
				
			    type = type.replace("\'", "\'\'");
				}*/
		//cancer=cancer.trim();
		System.out.println(gene);
		System.out.println(hm);
		System.out.println(Refseqid);
		System.out.println(tissue);
		System.out.println(Tech);

		if (null == gene) {
			gene = "";
		}
		if (null == tissue) {
			tissue = "";
		}
		if (null == Refseqid) {
			Refseqid = "";
		}
		if (null == Tech) {
			Tech = "";
		}
		if (null == hm) {
			hm = "";
		}
					String sql =  "select * from cancer_histone_modification where Gene like'%"+gene+"%' and Tech like'%"+Tech+"%' and Refseq_id like'%"+Refseqid+"%'and Histone_modification like'%"+hm+"%'  and Cancer_name like'%"+tissue+"%' ";
					System.out.println(sql);
					rs=st.executeQuery(sql);
					while (rs.next()) {
						index=1;
						cancer cancer = new cancer();
						cancer.setGene(rs.getString(1));
						cancer.setRefseqid(rs.getString(2));
						cancer.setGenome_fature(rs.getString(3));
						cancer.setHm(rs.getString(4));
						cancer.setDegree(rs.getString(8));
						cancer.setExperrsion(rs.getString(9));
						cancer.setTissue(rs.getString(10));
						cancer.setTech(rs.getString(11));
						cancer.setCancer_name(rs.getString(12));
						cancer.setPubmed(rs.getString(14));
						cancer_total.add(cancer);
						
					}
					if(index==1){
						Map<String, ArrayList<cancer>> request = (Map) ActionContext.getContext().get("request");
							
						request.put("cancer_List", cancer_List);
						request.put("cancer_total",cancer_total);
						
						return SUCCESS;
						}else
						return ERROR;	
		
		
			
	}
		}

