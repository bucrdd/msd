package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import util.dbcon;


import beans.gtgene5;
import beans.gtgene5;




import beans.gtgene5;
import beans.gtgene5;
import beans.gtgene5;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class gtgene5_action implements Action{
	private String gtgene5;
	private String hm;
	private String type;
	private String chr;
	private String start;
	private String end;
    private String diff_method;

	/*private String protein;
	private String disease;
	private String organ;*/
	public String getHm() {
		return hm;
	}

	public void setHm(String hm) {
		this.hm = hm;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}


	public String getChr() {
		return chr;
	}

	public void setChr(String chr) {
		this.chr = chr;
	}

	public String getStart() {
		return start;
	}


	public void setStart(String start) {
		this.start = start;
	}


	public String getEnd() {
		return end;
	}


	public void setEnd(String end) {
		this.end = end;
	}

public String getDiff_method() {
	return diff_method;
}


public void setDiff_method(String diffMethod) {
	diff_method = diffMethod;
}


	public String getgtgene5() {
		return gtgene5;
	}


	public void setgtgene5(String gtgene5) {
		this.gtgene5 = gtgene5;
	}


	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE="one";
		ArrayList<gtgene5> gtgene5_List = new ArrayList<gtgene5>();
		ArrayList<gtgene5> gtgene5_total = new ArrayList<gtgene5>();

		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(gtgene5);
		System.out.println(hm);
		System.out.println(type);
		System.out.println(chr);
		System.out.println(start);
		System.out.println(end);
		System.out.println(diff_method);
		diff_method="CellLine";
		if (null == gtgene5) {
			gtgene5 = "";
		}
		if (null == chr) {
			chr = "";
		}
		if(gtgene5.equals("")&&chr.equals("")){
			return ERROR;
		}
		String table1;
		String table;
		if (hm.equals("") || type.equals("")) {
			table = "";
			return ERROR;
		} else {
			if (!type.isEmpty()) {
				type.trim();
			}
			table1 = "'"+hm + "_" + type + "_cl"+"'";
			table = hm + "_" + type + "_cl";
			System.out.println(table1);
		}
		   ResultSet rs1 = null;
		    String sql1="SELECT table_name FROM information_schema.TABLES WHERE table_name ="+table1;
		    System.out.println(sql1);
		    rs1 = st.executeQuery(sql1);
		    if (rs1.next()) {
				System.out.println(sql1);
			} else {
				return ERROR;
			}
		  
		  
		if(chr.equals("")){
			if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
				System.out.println(111);
				if (null == gtgene5) {
					gtgene5 = "";
				}
				gtgene5=gtgene5.trim();
				String sql = "select * from " + table + " where genename like'%"+gtgene5+"%' and chr like'%"+chr+"%'  ";
				System.out.println(sql);
				rs=st.executeQuery(sql);
				while (rs.next()) {
					index=1;
					gtgene5 gtgene5 = new gtgene5();
					gtgene5.setType(rs.getString(1));
					gtgene5.setHm(rs.getString(2));
					gtgene5.setGenename(rs.getString(3));
					gtgene5.setChr(rs.getString(4));
					gtgene5.setStart(rs.getString(5));
					gtgene5.setEnd(rs.getString(6));
					gtgene5.setTf(rs.getString(13));
					gtgene5.setTdrug(rs.getString(12));
					gtgene5.setGse(rs.getString(16));
					gtgene5.setOption(rs.getString(17));
					gtgene5_total.add(gtgene5);
					
				}
				if(index==1){
					Map<String, ArrayList<gtgene5>> request = (Map) ActionContext.getContext().get("request");
						
					request.put("gtgene5_List", gtgene5_List);
					request.put("gtgene5_total",gtgene5_total);
					
					return SUCCESS;
					}else
						return ERROR;	
		}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
				System.out.println(111);
				String sql = "select * from " + table + " where genename like'%"+gtgene5+"%' and chr like'%"+chr+"%' and start >= '"+start+"'";
				System.out.println(sql);
				rs=st.executeQuery(sql);
				while (rs.next()) {
					index=1;
					gtgene5 gtgene5 = new gtgene5();
					gtgene5.setType(rs.getString(1));
					gtgene5.setHm(rs.getString(2));
					gtgene5.setGenename(rs.getString(3));
					gtgene5.setChr(rs.getString(4));
					gtgene5.setStart(rs.getString(5));
					gtgene5.setEnd(rs.getString(6));
					gtgene5.setTf(rs.getString(13));
					gtgene5.setTdrug(rs.getString(12));
					gtgene5.setGse(rs.getString(16));
					gtgene5.setOption(rs.getString(17));
					gtgene5_total.add(gtgene5);
					
				
				}
				if(index==1){
					Map<String, ArrayList<gtgene5>> request = (Map) ActionContext.getContext().get("request");
						
					request.put("gtgene5_List", gtgene5_List);
					request.put("gtgene5_total",gtgene5_total);
					
					return SUCCESS;
					}else
						return ERROR;	
	
		}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
				
				System.out.println(111);
				String sql = "select * from " + table + " where genename like'%"+gtgene5+"%' and chr like'%"+chr+"%'and end <= '"+end+"' ";
				System.out.println(sql);
				rs=st.executeQuery(sql);
				while (rs.next()) {
					index=1;
					gtgene5 gtgene5 = new gtgene5();
					gtgene5.setType(rs.getString(1));
					gtgene5.setHm(rs.getString(2));
					gtgene5.setGenename(rs.getString(3));
					gtgene5.setChr(rs.getString(4));
					gtgene5.setStart(rs.getString(5));
					gtgene5.setEnd(rs.getString(6));
					gtgene5.setTf(rs.getString(13));
					gtgene5.setTdrug(rs.getString(12));
					gtgene5.setGse(rs.getString(16));
					gtgene5.setOption(rs.getString(17));
					gtgene5_total.add(gtgene5);
					
				
				}
				if(index==1){
					Map<String, ArrayList<gtgene5>> request = (Map) ActionContext.getContext().get("request");
						
					request.put("gtgene5_List", gtgene5_List);
					request.put("gtgene5_total",gtgene5_total);
					
					return SUCCESS;
					}else
						return ERROR;	
		}else{
				System.out.println(111);
				String sql =   "select * from " + table + " where genename like'%"+gtgene5+"%' and chr like'%"+chr+"%' and start >= '"+start+"'and end <= '"+end+"' ";
				System.out.println(sql);
				rs=st.executeQuery(sql);
				while (rs.next()) {
					index=1;
					gtgene5 gtgene5 = new gtgene5();
					gtgene5.setType(rs.getString(1));
					gtgene5.setHm(rs.getString(2));
					gtgene5.setGenename(rs.getString(3));
					gtgene5.setChr(rs.getString(4));
					gtgene5.setStart(rs.getString(5));
					gtgene5.setEnd(rs.getString(6));
					gtgene5.setTf(rs.getString(13));
					gtgene5.setTdrug(rs.getString(12));
					gtgene5.setGse(rs.getString(16));
					gtgene5.setOption(rs.getString(17));
					gtgene5_total.add(gtgene5);
					
				
				}
				if(index==1){
					Map<String, ArrayList<gtgene5>> request = (Map) ActionContext.getContext().get("request");
						
					request.put("gtgene5_List", gtgene5_List);
					request.put("gtgene5_total",gtgene5_total);
					
					return SUCCESS;
					}else
						return ERROR;

		
		
			
	}
		}else{
			if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
				System.out.println(111);
				if (null == gtgene5) {
					gtgene5 = "";
				}
				gtgene5=gtgene5.trim();
				String sql = "select * from " + table + " where genename like'%"+gtgene5+"%' and chr ='"+chr+"'  ";
				System.out.println(sql);
				rs=st.executeQuery(sql);
				while (rs.next()) {
					index=1;
					gtgene5 gtgene5 = new gtgene5();
					gtgene5.setType(rs.getString(1));
					gtgene5.setHm(rs.getString(2));
					gtgene5.setGenename(rs.getString(3));
					gtgene5.setChr(rs.getString(4));
					gtgene5.setStart(rs.getString(5));
					gtgene5.setEnd(rs.getString(6));
					gtgene5.setTf(rs.getString(13));
					gtgene5.setTdrug(rs.getString(12));
					gtgene5.setGse(rs.getString(16));
					gtgene5.setOption(rs.getString(17));
					gtgene5_total.add(gtgene5);
					
				}
				if(index==1){
					Map<String, ArrayList<gtgene5>> request = (Map) ActionContext.getContext().get("request");
						
					request.put("gtgene5_List", gtgene5_List);
					request.put("gtgene5_total",gtgene5_total);
					
					return SUCCESS;
					}else
						return ERROR;	
		}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
				System.out.println(111);
				String sql = "select * from " + table + " where genename like'%"+gtgene5+"%' and chr ='"+chr+"' and start >= '"+start+"'";
				System.out.println(sql);
				rs=st.executeQuery(sql);
				while (rs.next()) {
					index=1;
					gtgene5 gtgene5 = new gtgene5();
					gtgene5.setType(rs.getString(1));
					gtgene5.setHm(rs.getString(2));
					gtgene5.setGenename(rs.getString(3));
					gtgene5.setChr(rs.getString(4));
					gtgene5.setStart(rs.getString(5));
					gtgene5.setEnd(rs.getString(6));
					gtgene5.setTf(rs.getString(13));
					gtgene5.setTdrug(rs.getString(12));
					gtgene5.setGse(rs.getString(16));
					gtgene5.setOption(rs.getString(17));
					gtgene5_total.add(gtgene5);
					
				
				}
				if(index==1){
					Map<String, ArrayList<gtgene5>> request = (Map) ActionContext.getContext().get("request");
						
					request.put("gtgene5_List", gtgene5_List);
					request.put("gtgene5_total",gtgene5_total);
					
					return SUCCESS;
					}else
						return ERROR;	
	
		}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
				
				System.out.println(111);
				String sql = "select * from " + table + " where genename like'%"+gtgene5+"%' and chr ='"+chr+"'and end <= '"+end+"' ";
				System.out.println(sql);
				rs=st.executeQuery(sql);
				while (rs.next()) {
					index=1;
					gtgene5 gtgene5 = new gtgene5();
					gtgene5.setType(rs.getString(1));
					gtgene5.setHm(rs.getString(2));
					gtgene5.setGenename(rs.getString(3));
					gtgene5.setChr(rs.getString(4));
					gtgene5.setStart(rs.getString(5));
					gtgene5.setEnd(rs.getString(6));
					gtgene5.setTf(rs.getString(13));
					gtgene5.setTdrug(rs.getString(12));
					gtgene5.setGse(rs.getString(16));
					gtgene5.setOption(rs.getString(17));
					gtgene5_total.add(gtgene5);
					
				
				}
				if(index==1){
					Map<String, ArrayList<gtgene5>> request = (Map) ActionContext.getContext().get("request");
						
					request.put("gtgene5_List", gtgene5_List);
					request.put("gtgene5_total",gtgene5_total);
					
					return SUCCESS;
					}else
						return ERROR;	
		}else{
				System.out.println(111);
				String sql =   "select * from " + table + " where genename like'%"+gtgene5+"%' and chr ='"+chr+"' and start >= '"+start+"'and end <= '"+end+"' ";
				System.out.println(sql);
				rs=st.executeQuery(sql);
				while (rs.next()) {
					index=1;
					gtgene5 gtgene5 = new gtgene5();
					gtgene5.setType(rs.getString(1));
					gtgene5.setHm(rs.getString(2));
					gtgene5.setGenename(rs.getString(3));
					gtgene5.setChr(rs.getString(4));
					gtgene5.setStart(rs.getString(5));
					gtgene5.setEnd(rs.getString(6));
					gtgene5.setTf(rs.getString(13));
					gtgene5.setTdrug(rs.getString(12));
					gtgene5.setGse(rs.getString(16));
					gtgene5.setOption(rs.getString(17));
					gtgene5_total.add(gtgene5);
					
				
				}
				if(index==1){
					Map<String, ArrayList<gtgene5>> request = (Map) ActionContext.getContext().get("request");
						
					request.put("gtgene5_List", gtgene5_List);
					request.put("gtgene5_total",gtgene5_total);
					
					return SUCCESS;
					}else
						return ERROR;

		
		
			
	}
		}
			
		
	   }
		}
