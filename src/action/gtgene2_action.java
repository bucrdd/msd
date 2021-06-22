package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import util.dbcon;


import beans.gtgene2;









import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class gtgene2_action implements Action{
	private String gtgene2;
	private String hm;
	private String type;
	private String chr;
	private String start;
	private String end;
    private String diff_method;
	private String go;
	private String kegg;

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

	public String getGtgene2() {
		return gtgene2;
	}


	public void setGtgene2(String gtgene2) {
		this.gtgene2 = gtgene2;
	}
	  public String getGo() {
			return go;
		}

		public void setGo(String go) {
			this.go = go;
		}

		public String getKegg() {
			return kegg;
		}

		public void setKegg(String kegg) {
			this.kegg = kegg;
		}


	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE="one";
		ArrayList<gtgene2> gtgene2_List = new ArrayList<gtgene2>();
		ArrayList<gtgene2> gtgene2_total = new ArrayList<gtgene2>();

		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		/*if(type.contains("\'")){
				
			    type = type.replace("\'", "\'\'");
				}*/
		//gtgene2=gtgene2.trim();
		System.out.println(gtgene2);
		System.out.println(hm);
		System.out.println(type);
		System.out.println(chr);
		System.out.println(start);
		System.out.println(end);
		System.out.println(diff_method);
		System.out.println(go);
		System.out.println(kegg);
		if (null == go) {
			go = "";
		}
		if (null == kegg) {
			kegg = "";
		}
		if (null == type) {
			type = "";
		}
		if (null == chr) {
			chr = "";
		}
		if (null == start) {
			start = "";
		}
		if (null == end) {
			end = "";
		}
		if (null == diff_method) {
			diff_method = "";
		}
		if (null == gtgene2) {
			gtgene2 = "";
		}
		if (null == hm) {
			hm = "";
		}
		String table1;
		String table;
		if(gtgene2.equals("")&&chr.equals("")){
			return ERROR;
		}
		if (hm.equals("") || type.equals("")) {
			table = "";
			return ERROR;
		} else {
			if (!type.isEmpty()) {
				type.trim();
		}
		table1 = "'"+hm + "_" + type + "_ad"+"'";
		table = hm + "_" + type + "_ad";
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
			if(String.valueOf(go).equals("")&&String.valueOf(kegg).equals("")){
				
				if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
				
					//System.out.println(111);
					String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' ";
					System.out.println(sql);
					rs=st.executeQuery(sql);
					while (rs.next()) {
						index=1;
						gtgene2 gtgene2 = new gtgene2();
						gtgene2.setType(rs.getString(1));
						gtgene2.setHm(rs.getString(2));
						gtgene2.setGenename(rs.getString(3));
						gtgene2.setTf(rs.getString(4));
						gtgene2.setTdrug(rs.getString(5));
						gtgene2.setGse(rs.getString(6));
						gtgene2.setChr(rs.getString(7));
						gtgene2.setStart(rs.getString(8));
						gtgene2.setEnd(rs.getString(9));
						gtgene2.setOption(rs.getString(10));
						gtgene2_total.add(gtgene2);
						
					}
					if(index==1){
						Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							
						request.put("gtgene2_List", gtgene2_List);
						request.put("gtgene2_total",gtgene2_total);
						
						return SUCCESS;
						}else
						return ERROR;	
				
			
				
		
			}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
				
					
					//System.out.println(111);
					String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'";
					System.out.println(sql);
					rs=st.executeQuery(sql);
					while (rs.next()) {
						index=1;
						gtgene2 gtgene2 = new gtgene2();
						gtgene2.setType(rs.getString(1));
						gtgene2.setHm(rs.getString(2));
						gtgene2.setGenename(rs.getString(3));
						gtgene2.setTf(rs.getString(4));
						gtgene2.setTdrug(rs.getString(5));
						gtgene2.setGse(rs.getString(6));
						gtgene2.setChr(rs.getString(7));
						gtgene2.setStart(rs.getString(8));
						gtgene2.setEnd(rs.getString(9));
						gtgene2.setOption(rs.getString(10));
						gtgene2_total.add(gtgene2);
						
					}
					if(index==1){
						Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							
						request.put("gtgene2_List", gtgene2_List);
						request.put("gtgene2_total",gtgene2_total);
						
						return SUCCESS;
						}else
							return ERROR;	
				
			
				
		
			}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
			
					
					//System.out.println(111);
					String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%'and end <= '"+end+"'";
					System.out.println(sql);
					rs=st.executeQuery(sql);
					while (rs.next()) {
						index=1;
						gtgene2 gtgene2 = new gtgene2();
						gtgene2.setType(rs.getString(1));
						gtgene2.setHm(rs.getString(2));
						gtgene2.setGenename(rs.getString(3));
						gtgene2.setTf(rs.getString(4));
						gtgene2.setTdrug(rs.getString(5));
						gtgene2.setGse(rs.getString(6));
						gtgene2.setChr(rs.getString(7));
						gtgene2.setStart(rs.getString(8));
						gtgene2.setEnd(rs.getString(9));
						gtgene2.setOption(rs.getString(10));
						gtgene2_total.add(gtgene2);
						
					}
					if(index==1){
						Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							
						request.put("gtgene2_List", gtgene2_List);
						request.put("gtgene2_total",gtgene2_total);
						return SUCCESS;
						}else
							return ERROR;
			}else{
					//System.out.println(111);
					String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'and end <= '"+end+"'";
					System.out.println(sql);
					rs=st.executeQuery(sql);
					while (rs.next()) {
						index=1;
						gtgene2 gtgene2 = new gtgene2();
						gtgene2.setType(rs.getString(1));
						gtgene2.setHm(rs.getString(2));
						gtgene2.setGenename(rs.getString(3));
						gtgene2.setTf(rs.getString(4));
						gtgene2.setTdrug(rs.getString(5));
						gtgene2.setGse(rs.getString(6));
						gtgene2.setChr(rs.getString(7));
						gtgene2.setStart(rs.getString(8));
						gtgene2.setEnd(rs.getString(9));
						gtgene2.setOption(rs.getString(10));
						gtgene2_total.add(gtgene2);
					}
					if(index==1){
						Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							
						request.put("gtgene2_List", gtgene2_List);
						request.put("gtgene2_total",gtgene2_total);
						
						return SUCCESS;
						}else
							return ERROR;	
				}
			}
			if(String.valueOf(go).equals("")&&!"".equals(String.valueOf(kegg))){
				String[] result = kegg.split(",");
				String sql_FIS="";
				String sql_FIS1="";
				if(result.length>1){
					for (int i= 0;i< result.length;i++) {
						sql_FIS1=" and "+"FIND_IN_SET(\'"+result[i]+"\',function_kegg)";
						sql_FIS=sql_FIS+sql_FIS1;
						}
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
							return ERROR;	
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%'and end <= '"+end+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;	
				}else{
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'and end <= '"+end+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;	
					}
				}if(result.length==1){
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
							return ERROR;
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"' and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%'and end <= '"+end+"' and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}else{
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'and end <= '"+end+"' and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					}
				}
	                 
			}
			if(!"".equals(String.valueOf(go))&&String.valueOf(kegg).equals("")){
				go=(String) go;
				String[] result = go.split(",");
				System.out.println(result[0]);
				String sql_FIS="";
				String sql_FIS1="";
				if(result.length>1){
					for (int i= 0;i< result.length;i++) {
						System.out.println(result[i]);
						sql_FIS1=" and "+"FIND_IN_SET(\'"+result[i]+"\',function_GO)";
						sql_FIS=sql_FIS+sql_FIS1;
						}
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' "+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
							return ERROR;	
					
				
					
			
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
					
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					
				
					
			
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%'and end <= '"+end+"' "+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					
				
					
			
				}else{
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'and end <= '"+end+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					}
				}
				if(result.length==1){
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and FIND_IN_SET('"+go+"',function_GO)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
							return ERROR;	
					
				
					
			
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
					
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"' and FIND_IN_SET('"+go+"',function_GO)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					
				
					
			
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					
				
					
			
				}else{
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					}
				}
	  
			}
			else{
				String[] result = go.split(",");
				String sql_FIS="";
				String sql_FIS1="";
				String[] result_k = kegg.split(",");
				String sql_FIS_k="";
				String sql_FIS1_k="";
				if(result.length>1&&result_k.length>1){
					for (int i= 0;i< result.length;i++) {
						sql_FIS1=" and "+"FIND_IN_SET(\'"+result[i]+"\',function_GO)";
						sql_FIS=sql_FIS+sql_FIS1;
						}
					for (int i= 0;i< result_k.length;i++) {
						sql_FIS1_k=" and "+"FIND_IN_SET(\'"+result_k[i]+"',function_kegg)";
						sql_FIS_k=sql_FIS_k+sql_FIS1_k;
						if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
							
							//System.out.println(111);
							String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%'"+sql_FIS+sql_FIS_k;
							System.out.println(sql);
							rs=st.executeQuery(sql);
							while (rs.next()) {
								index=1;
								gtgene2 gtgene2 = new gtgene2();
								gtgene2.setType(rs.getString(1));
								gtgene2.setHm(rs.getString(2));
								gtgene2.setGenename(rs.getString(3));
								gtgene2.setTf(rs.getString(4));
								gtgene2.setTdrug(rs.getString(5));
								gtgene2.setGse(rs.getString(6));
								gtgene2.setChr(rs.getString(7));
								gtgene2.setStart(rs.getString(8));
								gtgene2.setEnd(rs.getString(9));
								gtgene2.setOption(rs.getString(10));
								gtgene2_total.add(gtgene2);
								
							}
							if(index==1){
								Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
									
								request.put("gtgene2_List", gtgene2_List);
								request.put("gtgene2_total",gtgene2_total);
								
								return SUCCESS;
								}else
								return ERROR;	
						
					
						

					}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
						
							
							//System.out.println(111);
							String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'"+sql_FIS+sql_FIS_k;
							System.out.println(sql);
							rs=st.executeQuery(sql);
							while (rs.next()) {
								index=1;
								gtgene2 gtgene2 = new gtgene2();
								gtgene2.setType(rs.getString(1));
								gtgene2.setHm(rs.getString(2));
								gtgene2.setGenename(rs.getString(3));
								gtgene2.setTf(rs.getString(4));
								gtgene2.setTdrug(rs.getString(5));
								gtgene2.setGse(rs.getString(6));
								gtgene2.setChr(rs.getString(7));
								gtgene2.setStart(rs.getString(8));
								gtgene2.setEnd(rs.getString(9));
								gtgene2.setOption(rs.getString(10));
								gtgene2_total.add(gtgene2);
								
							}
							if(index==1){
								Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
									
								request.put("gtgene2_List", gtgene2_List);
								request.put("gtgene2_total",gtgene2_total);
								
								return SUCCESS;
								}else
									return ERROR;	
						
					
						

					}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
					
							
							//System.out.println(111);
							String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%'and end <= '"+end+"'"+sql_FIS+sql_FIS_k;
							System.out.println(sql);
							rs=st.executeQuery(sql);
							while (rs.next()) {
								index=1;
								gtgene2 gtgene2 = new gtgene2();
								gtgene2.setType(rs.getString(1));
								gtgene2.setHm(rs.getString(2));
								gtgene2.setGenename(rs.getString(3));
								gtgene2.setTf(rs.getString(4));
								gtgene2.setTdrug(rs.getString(5));
								gtgene2.setGse(rs.getString(6));
								gtgene2.setChr(rs.getString(7));
								gtgene2.setStart(rs.getString(8));
								gtgene2.setEnd(rs.getString(9));
								gtgene2.setOption(rs.getString(10));
								gtgene2_total.add(gtgene2);
								
							}
							if(index==1){
								Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
									
								request.put("gtgene2_List", gtgene2_List);
								request.put("gtgene2_total",gtgene2_total);
								
								return SUCCESS;
								}else
									return ERROR;	
						
					
						

					}else{
					
							
							//System.out.println(111);
							String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'and end <= '"+end+"'"+sql_FIS+sql_FIS_k;
							System.out.println(sql);
							rs=st.executeQuery(sql);
							while (rs.next()) {
								index=1;
								gtgene2 gtgene2 = new gtgene2();
								gtgene2.setType(rs.getString(1));
								gtgene2.setHm(rs.getString(2));
								gtgene2.setGenename(rs.getString(3));
								gtgene2.setTf(rs.getString(4));
								gtgene2.setTdrug(rs.getString(5));
								gtgene2.setGse(rs.getString(6));
								gtgene2.setChr(rs.getString(7));
								gtgene2.setStart(rs.getString(8));
								gtgene2.setEnd(rs.getString(9));
								gtgene2.setOption(rs.getString(10));
								gtgene2_total.add(gtgene2);
								
							}
							if(index==1){
								Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
									
								request.put("gtgene2_List", gtgene2_List);
								request.put("gtgene2_total",gtgene2_total);
								
								return SUCCESS;
								}else
									return ERROR;	
						}
						}
				}if(result.length>1&&result_k.length==1){
					for (int i= 0;i< result.length;i++) {
						sql_FIS1=" and "+"FIND_IN_SET(\'"+result[i]+"\',function_GO)";
						sql_FIS=sql_FIS+sql_FIS1;
						}
		if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and FIND_IN_SET('"+kegg+"',function_kegg)"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
							return ERROR;	
					
				
					

				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
					
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"' and FIND_IN_SET('"+kegg+"',function_kegg)"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' an chr like'%"+chr+"%'and end <= '"+end+"' and FIND_IN_SET('"+kegg+"',function_kegg)"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}else{
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'and end <= '"+end+"' and FIND_IN_SET('"+kegg+"',function_kegg)"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;	
					}
				}	if(result.length==1&&result_k.length>1){
					for (int i= 0;i< result_k.length;i++) {
						sql_FIS1_k=" and "+"FIND_IN_SET(\'"+result_k[i]+"\',function_kegg)";
						sql_FIS_k=sql_FIS_k+sql_FIS1_k;
						}
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and FIND_IN_SET('"+go+"',function_GO)"+sql_FIS_k;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
							return ERROR;
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"' and FIND_IN_SET('"+go+"',function_GO)"+sql_FIS_k;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO)"+sql_FIS_k;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}else{
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO)"+sql_FIS_k;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					}
				}else{
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and FIND_IN_SET('"+go+"',function_GO) and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
							return ERROR;	
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"' and FIND_IN_SET('"+go+"',function_GO) and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO) and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					
				
					

				}else{
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr like'%"+chr+"%' and start >= '"+start+"'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO) and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					}
				}

				
				}
		}else{

			if(String.valueOf(go).equals("")&&String.valueOf(kegg).equals("")){
				
				if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
				
					//System.out.println(111);
					String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'";
					System.out.println(sql);
					rs=st.executeQuery(sql);
					while (rs.next()) {
						index=1;
						gtgene2 gtgene2 = new gtgene2();
						gtgene2.setType(rs.getString(1));
						gtgene2.setHm(rs.getString(2));
						gtgene2.setGenename(rs.getString(3));
						gtgene2.setTf(rs.getString(4));
						gtgene2.setTdrug(rs.getString(5));
						gtgene2.setGse(rs.getString(6));
						gtgene2.setChr(rs.getString(7));
						gtgene2.setStart(rs.getString(8));
						gtgene2.setEnd(rs.getString(9));
						gtgene2.setOption(rs.getString(10));
						gtgene2_total.add(gtgene2);
						
					}
					if(index==1){
						Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							
						request.put("gtgene2_List", gtgene2_List);
						request.put("gtgene2_total",gtgene2_total);
						
						return SUCCESS;
						}else
						return ERROR;	
				
			
				
		
			}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
				
					
					//System.out.println(111);
					String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'";
					System.out.println(sql);
					rs=st.executeQuery(sql);
					while (rs.next()) {
						index=1;
						gtgene2 gtgene2 = new gtgene2();
						gtgene2.setType(rs.getString(1));
						gtgene2.setHm(rs.getString(2));
						gtgene2.setGenename(rs.getString(3));
						gtgene2.setTf(rs.getString(4));
						gtgene2.setTdrug(rs.getString(5));
						gtgene2.setGse(rs.getString(6));
						gtgene2.setChr(rs.getString(7));
						gtgene2.setStart(rs.getString(8));
						gtgene2.setEnd(rs.getString(9));
						gtgene2.setOption(rs.getString(10));
						gtgene2_total.add(gtgene2);
						
					}
					if(index==1){
						Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							
						request.put("gtgene2_List", gtgene2_List);
						request.put("gtgene2_total",gtgene2_total);
						
						return SUCCESS;
						}else
							return ERROR;	
				
			
				
		
			}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
			
					
					//System.out.println(111);
					String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'and end <= '"+end+"'";
					System.out.println(sql);
					rs=st.executeQuery(sql);
					while (rs.next()) {
						index=1;
						gtgene2 gtgene2 = new gtgene2();
						gtgene2.setType(rs.getString(1));
						gtgene2.setHm(rs.getString(2));
						gtgene2.setGenename(rs.getString(3));
						gtgene2.setTf(rs.getString(4));
						gtgene2.setTdrug(rs.getString(5));
						gtgene2.setGse(rs.getString(6));
						gtgene2.setChr(rs.getString(7));
						gtgene2.setStart(rs.getString(8));
						gtgene2.setEnd(rs.getString(9));
						gtgene2.setOption(rs.getString(10));
						gtgene2_total.add(gtgene2);
						
					}
					if(index==1){
						Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							
						request.put("gtgene2_List", gtgene2_List);
						request.put("gtgene2_total",gtgene2_total);
						return SUCCESS;
						}else
							return ERROR;
			}else{
					//System.out.println(111);
					String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'and end <= '"+end+"'";
					System.out.println(sql);
					rs=st.executeQuery(sql);
					while (rs.next()) {
						index=1;
						gtgene2 gtgene2 = new gtgene2();
						gtgene2.setType(rs.getString(1));
						gtgene2.setHm(rs.getString(2));
						gtgene2.setGenename(rs.getString(3));
						gtgene2.setTf(rs.getString(4));
						gtgene2.setTdrug(rs.getString(5));
						gtgene2.setGse(rs.getString(6));
						gtgene2.setChr(rs.getString(7));
						gtgene2.setStart(rs.getString(8));
						gtgene2.setEnd(rs.getString(9));
						gtgene2.setOption(rs.getString(10));
						gtgene2_total.add(gtgene2);
					}
					if(index==1){
						Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							
						request.put("gtgene2_List", gtgene2_List);
						request.put("gtgene2_total",gtgene2_total);
						
						return SUCCESS;
						}else
							return ERROR;	
				}
			}
			if(String.valueOf(go).equals("")&&!"".equals(String.valueOf(kegg))){
				String[] result = kegg.split(",");
				String sql_FIS="";
				String sql_FIS1="";
				if(result.length>1){
					for (int i= 0;i< result.length;i++) {
						sql_FIS1=" and "+"FIND_IN_SET(\'"+result[i]+"\',function_kegg)";
						sql_FIS=sql_FIS+sql_FIS1;
						}
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
							return ERROR;	
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'and end <= '"+end+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;	
				}else{
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'and end <= '"+end+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;	
					}
				}if(result.length==1){
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
							return ERROR;
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"' and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'and end <= '"+end+"' and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}else{
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'and end <= '"+end+"' and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					}
				}
	                 
			}
			if(!"".equals(String.valueOf(go))&&String.valueOf(kegg).equals("")){
				go=(String) go;
				String[] result = go.split(",");
				System.out.println(result[0]);
				String sql_FIS="";
				String sql_FIS1="";
				if(result.length>1){
					for (int i= 0;i< result.length;i++) {
						System.out.println(result[i]);
						sql_FIS1=" and "+"FIND_IN_SET(\'"+result[i]+"\',function_GO)";
						sql_FIS=sql_FIS+sql_FIS1;
						}
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' "+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
							return ERROR;	
					
				
					
			
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
					
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					
				
					
			
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'and end <= '"+end+"' "+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					
				
					
			
				}else{
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'and end <= '"+end+"'"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					}
				}
				if(result.length==1){
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and FIND_IN_SET('"+go+"',function_GO)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
							return ERROR;	
					
				
					
			
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
					
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"' and FIND_IN_SET('"+go+"',function_GO)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					
				
					
			
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					
				
					
			
				}else{
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					}
				}
	  
			}
			else{
				String[] result = go.split(",");
				String sql_FIS="";
				String sql_FIS1="";
				String[] result_k = kegg.split(",");
				String sql_FIS_k="";
				String sql_FIS1_k="";
				if(result.length>1&&result_k.length>1){
					for (int i= 0;i< result.length;i++) {
						sql_FIS1=" and "+"FIND_IN_SET(\'"+result[i]+"\',function_GO)";
						sql_FIS=sql_FIS+sql_FIS1;
						}
					for (int i= 0;i< result_k.length;i++) {
						sql_FIS1_k=" and "+"FIND_IN_SET(\'"+result_k[i]+"',function_kegg)";
						sql_FIS_k=sql_FIS_k+sql_FIS1_k;
						if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
							
							//System.out.println(111);
							String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'"+sql_FIS+sql_FIS_k;
							System.out.println(sql);
							rs=st.executeQuery(sql);
							while (rs.next()) {
								index=1;
								gtgene2 gtgene2 = new gtgene2();
								gtgene2.setType(rs.getString(1));
								gtgene2.setHm(rs.getString(2));
								gtgene2.setGenename(rs.getString(3));
								gtgene2.setTf(rs.getString(4));
								gtgene2.setTdrug(rs.getString(5));
								gtgene2.setGse(rs.getString(6));
								gtgene2.setChr(rs.getString(7));
								gtgene2.setStart(rs.getString(8));
								gtgene2.setEnd(rs.getString(9));
								gtgene2.setOption(rs.getString(10));
								gtgene2_total.add(gtgene2);
								
							}
							if(index==1){
								Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
									
								request.put("gtgene2_List", gtgene2_List);
								request.put("gtgene2_total",gtgene2_total);
								
								return SUCCESS;
								}else
								return ERROR;	
						
					
						

					}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
						
							
							//System.out.println(111);
							String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'"+sql_FIS+sql_FIS_k;
							System.out.println(sql);
							rs=st.executeQuery(sql);
							while (rs.next()) {
								index=1;
								gtgene2 gtgene2 = new gtgene2();
								gtgene2.setType(rs.getString(1));
								gtgene2.setHm(rs.getString(2));
								gtgene2.setGenename(rs.getString(3));
								gtgene2.setTf(rs.getString(4));
								gtgene2.setTdrug(rs.getString(5));
								gtgene2.setGse(rs.getString(6));
								gtgene2.setChr(rs.getString(7));
								gtgene2.setStart(rs.getString(8));
								gtgene2.setEnd(rs.getString(9));
								gtgene2.setOption(rs.getString(10));
								gtgene2_total.add(gtgene2);
								
							}
							if(index==1){
								Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
									
								request.put("gtgene2_List", gtgene2_List);
								request.put("gtgene2_total",gtgene2_total);
								
								return SUCCESS;
								}else
									return ERROR;	
						
					
						

					}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
					
							
							//System.out.println(111);
							String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'and end <= '"+end+"'"+sql_FIS+sql_FIS_k;
							System.out.println(sql);
							rs=st.executeQuery(sql);
							while (rs.next()) {
								index=1;
								gtgene2 gtgene2 = new gtgene2();
								gtgene2.setType(rs.getString(1));
								gtgene2.setHm(rs.getString(2));
								gtgene2.setGenename(rs.getString(3));
								gtgene2.setTf(rs.getString(4));
								gtgene2.setTdrug(rs.getString(5));
								gtgene2.setGse(rs.getString(6));
								gtgene2.setChr(rs.getString(7));
								gtgene2.setStart(rs.getString(8));
								gtgene2.setEnd(rs.getString(9));
								gtgene2.setOption(rs.getString(10));
								gtgene2_total.add(gtgene2);
								
							}
							if(index==1){
								Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
									
								request.put("gtgene2_List", gtgene2_List);
								request.put("gtgene2_total",gtgene2_total);
								
								return SUCCESS;
								}else
									return ERROR;	
						
					
						

					}else{
					
							
							//System.out.println(111);
							String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'and end <= '"+end+"'"+sql_FIS+sql_FIS_k;
							System.out.println(sql);
							rs=st.executeQuery(sql);
							while (rs.next()) {
								index=1;
								gtgene2 gtgene2 = new gtgene2();
								gtgene2.setType(rs.getString(1));
								gtgene2.setHm(rs.getString(2));
								gtgene2.setGenename(rs.getString(3));
								gtgene2.setTf(rs.getString(4));
								gtgene2.setTdrug(rs.getString(5));
								gtgene2.setGse(rs.getString(6));
								gtgene2.setChr(rs.getString(7));
								gtgene2.setStart(rs.getString(8));
								gtgene2.setEnd(rs.getString(9));
								gtgene2.setOption(rs.getString(10));
								gtgene2_total.add(gtgene2);
								
							}
							if(index==1){
								Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
									
								request.put("gtgene2_List", gtgene2_List);
								request.put("gtgene2_total",gtgene2_total);
								
								return SUCCESS;
								}else
									return ERROR;	
						}
						}
				}if(result.length>1&&result_k.length==1){
					for (int i= 0;i< result.length;i++) {
						sql_FIS1=" and "+"FIND_IN_SET(\'"+result[i]+"\',function_GO)";
						sql_FIS=sql_FIS+sql_FIS1;
						}
		if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and FIND_IN_SET('"+kegg+"',function_kegg)"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
							return ERROR;	
					
				
					

				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
					
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"' and FIND_IN_SET('"+kegg+"',function_kegg)"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' an chr=' "+chr+"'and end <= '"+end+"' and FIND_IN_SET('"+kegg+"',function_kegg)"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}else{
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'and end <= '"+end+"' and FIND_IN_SET('"+kegg+"',function_kegg)"+sql_FIS;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;	
					}
				}	if(result.length==1&&result_k.length>1){
					for (int i= 0;i< result_k.length;i++) {
						sql_FIS1_k=" and "+"FIND_IN_SET(\'"+result_k[i]+"\',function_kegg)";
						sql_FIS_k=sql_FIS_k+sql_FIS1_k;
						}
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and FIND_IN_SET('"+go+"',function_GO)"+sql_FIS_k;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
							return ERROR;
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"' and FIND_IN_SET('"+go+"',function_GO)"+sql_FIS_k;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO)"+sql_FIS_k;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							return SUCCESS;
							}else
								return ERROR;
				}else{
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO)"+sql_FIS_k;
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					}
				}else{
					if(String.valueOf(start).equals("")&&String.valueOf(end).equals("")){
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and FIND_IN_SET('"+go+"',function_GO) and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
							return ERROR;	
				}if(!"".equals(String.valueOf(start))&&String.valueOf(end).equals("")){
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"' and FIND_IN_SET('"+go+"',function_GO) and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;
				}if(String.valueOf(start).equals("")&&!"".equals(String.valueOf(end))){
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO) and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					
				
					

				}else{
				
						
						//System.out.println(111);
						String sql =  "select * from " + table + " where genename like'%"+gtgene2+"%' and chr=' "+chr+"' and start >= '"+start+"'and end <= '"+end+"' and FIND_IN_SET('"+go+"',function_GO) and FIND_IN_SET('"+kegg+"',function_kegg)";
						System.out.println(sql);
						rs=st.executeQuery(sql);
						while (rs.next()) {
							index=1;
							gtgene2 gtgene2 = new gtgene2();
							gtgene2.setType(rs.getString(1));
							gtgene2.setHm(rs.getString(2));
							gtgene2.setGenename(rs.getString(3));
							gtgene2.setTf(rs.getString(4));
							gtgene2.setTdrug(rs.getString(5));
							gtgene2.setGse(rs.getString(6));
							gtgene2.setChr(rs.getString(7));
							gtgene2.setStart(rs.getString(8));
							gtgene2.setEnd(rs.getString(9));
							gtgene2.setOption(rs.getString(10));
							gtgene2_total.add(gtgene2);
							
						}
						if(index==1){
							Map<String, ArrayList<gtgene2>> request = (Map) ActionContext.getContext().get("request");
								
							request.put("gtgene2_List", gtgene2_List);
							request.put("gtgene2_total",gtgene2_total);
							
							return SUCCESS;
							}else
								return ERROR;	
					}
				}

				
				}
		
		}
		
		
		return ONE;
		
		
			
	}
		}

