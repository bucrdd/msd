package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import util.dbcon;


import beans.gtgene3;


import beans.gtgene3;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class gtgene3_action implements Action{
	private String gtgene3;
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

	public String getgtgene3() {
		return gtgene3;
	}


	public void setgtgene3(String gtgene3) {
		this.gtgene3 = gtgene3;
	}


	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE="one";
		ArrayList<gtgene3> gtgene3_List = new ArrayList<gtgene3>();
		ArrayList<gtgene3> gtgene3_total = new ArrayList<gtgene3>();

		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		 diff_method="Disease";
		System.out.println(gtgene3);
		System.out.println(hm);
		System.out.println(type);
		System.out.println(chr);
		System.out.println(start);
		System.out.println(end);
		System.out.println(diff_method);
		if (null == gtgene3) {
			gtgene3 = "";
		}
		if (null == chr) {
			chr= "";
		}
		if(gtgene3.equals("")&chr.equals("")){
			System.out.println("error");
			return ERROR;
		}
		String table;
		String table1;
		if (hm.equals("") || type.equals("")) {
			table = "";
			return ERROR;
		} else {
			if (!type.isEmpty()) {
				type.trim();
			}
			table1 = "'"+hm + "_" + type + "_nt"+"'";
			table = hm + "_" + type + "_nt";
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
//		StringBuilder sqlBuilder = new StringBuilder();
//		sqlBuilder.append("SELECT * FROM")
//			.append(table)
//			.
      if(chr.equals("")){
    	  if (String.valueOf(start).equals("") && String.valueOf(end).equals("")) {
			System.out.println(111);
			
			gtgene3 = gtgene3.trim();
			hm = hm.toLowerCase();
			type = type.toLowerCase();
			

			String sql = "select * from " + table + " where genename like'%"
					+ gtgene3 + "%' and chr like'%" + chr + "%'";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				index = 1;
				gtgene3 gtgene3 = new gtgene3();
				gtgene3.setType(rs.getString(1));
				gtgene3.setHm(rs.getString(2));
				gtgene3.setGenename(rs.getString(3));
				gtgene3.setChr(rs.getString(4));
				gtgene3.setStart(rs.getString(5));
				gtgene3.setEnd(rs.getString(6));
				gtgene3.setTf(rs.getString(13));
				gtgene3.setTdrug(rs.getString(12));
				gtgene3.setGse(rs.getString(16));
				gtgene3.setOption(rs.getString(17));
				gtgene3_total.add(gtgene3);

			}
			if (index == 1) {
				Map<String, ArrayList<gtgene3>> request = (Map) ActionContext
						.getContext().get("request");

				request.put("gtgene3_List", gtgene3_List);
				request.put("gtgene3_total", gtgene3_total);

				return SUCCESS;
			} else
				return ERROR;
		}

  		if (!"".equals(String.valueOf(start)) && String.valueOf(end).equals("")) {
  			System.out.println(111);
  			String sql = "select * from " + table + " where genename like'%"
  					+ gtgene3 + "%' and chr like'%" + chr + "%' and start >= '"
  					+ start + "'";
  			System.out.println(sql);
  			rs = st.executeQuery(sql);
  			while (rs.next()) {
  				index = 1;
  				gtgene3 gtgene3 = new gtgene3();
  				gtgene3.setType(rs.getString(1));
  				gtgene3.setHm(rs.getString(2));
  				gtgene3.setGenename(rs.getString(3));
  				gtgene3.setChr(rs.getString(4));
  				gtgene3.setStart(rs.getString(5));
  				gtgene3.setEnd(rs.getString(6));
  				gtgene3.setTf(rs.getString(13));
  				gtgene3.setTdrug(rs.getString(12));
  				gtgene3.setGse(rs.getString(16));
  				gtgene3.setOption(rs.getString(17));
  				gtgene3_total.add(gtgene3);

  			}
  			if (index == 1) {
  				Map<String, ArrayList<gtgene3>> request = (Map) ActionContext
  						.getContext().get("request");

  				request.put("gtgene3_List", gtgene3_List);
  				request.put("gtgene3_total", gtgene3_total);

  				return SUCCESS;
  			} else
  				return ERROR;

  		}
  		if (String.valueOf(start).equals("") && !"".equals(String.valueOf(end))) {

			System.out.println(111);
			String sql = "select * from " + table + "  where genename="
					+ gtgene3 + " and chr like'%" + chr + "%' and end <= '"
					+ end + "' ";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				index = 1;
				gtgene3 gtgene3 = new gtgene3();
				gtgene3.setType(rs.getString(1));
				gtgene3.setHm(rs.getString(2));
				gtgene3.setGenename(rs.getString(3));
				gtgene3.setChr(rs.getString(4));
				gtgene3.setStart(rs.getString(5));
				gtgene3.setEnd(rs.getString(6));
				gtgene3.setTf(rs.getString(13));
				gtgene3.setTdrug(rs.getString(12));
				gtgene3.setGse(rs.getString(16));
				gtgene3.setOption(rs.getString(17));
				gtgene3_total.add(gtgene3);

			}
			if (index == 1) {
				Map<String, ArrayList<gtgene3>> request = (Map) ActionContext
						.getContext().get("request");

				request.put("gtgene3_List", gtgene3_List);
				request.put("gtgene3_total", gtgene3_total);

				return SUCCESS;
			} else
				return ERROR;
		}else {
			System.out.println(111);
			String sql = "select * from " + table + "  where genename like'%"
					+ gtgene3 + "%' and chr like'%" + chr + "%' and start >= '"
					+ start + "' and end <= '"
					+ end + "'";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				index = 1;
				gtgene3 gtgene3 = new gtgene3();
				gtgene3.setType(rs.getString(1));
				gtgene3.setHm(rs.getString(2));
				gtgene3.setGenename(rs.getString(3));
				gtgene3.setChr(rs.getString(4));
				gtgene3.setStart(rs.getString(5));
				gtgene3.setEnd(rs.getString(6));
				gtgene3.setTf(rs.getString(13));
				gtgene3.setTdrug(rs.getString(12));
				gtgene3.setGse(rs.getString(16));
				gtgene3.setOption(rs.getString(17));
				gtgene3_total.add(gtgene3);

			}
			if (index == 1) {
				Map<String, ArrayList<gtgene3>> request = (Map) ActionContext
						.getContext().get("request");

				request.put("gtgene3_List", gtgene3_List);
				request.put("gtgene3_total", gtgene3_total);

				return SUCCESS;
			} else
				return ERROR;

		} 
    	  }else{
    		  if (String.valueOf(start).equals("") && String.valueOf(end).equals("")) {
			System.out.println(111);
			if (null == gtgene3) {
				gtgene3 = "";
			}
			gtgene3 = gtgene3.trim();
			hm = hm.toLowerCase();
			type = type.toLowerCase();
			

			String sql = "select * from " + table + " where genename like'%"
					+ gtgene3 + "%' and chr ='" + chr + "'";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				index = 1;
				gtgene3 gtgene3 = new gtgene3();
				gtgene3.setType(rs.getString(1));
				gtgene3.setHm(rs.getString(2));
				gtgene3.setGenename(rs.getString(3));
				gtgene3.setChr(rs.getString(4));
				gtgene3.setStart(rs.getString(5));
				gtgene3.setEnd(rs.getString(6));
				gtgene3.setTf(rs.getString(13));
				gtgene3.setTdrug(rs.getString(12));
				gtgene3.setGse(rs.getString(16));
				gtgene3.setOption(rs.getString(17));
				gtgene3_total.add(gtgene3);

			}
			if (index == 1) {
				Map<String, ArrayList<gtgene3>> request = (Map) ActionContext
						.getContext().get("request");

				request.put("gtgene3_List", gtgene3_List);
				request.put("gtgene3_total", gtgene3_total);

				return SUCCESS;
			} else
				return ERROR;
		}

    			if (!"".equals(String.valueOf(start)) && String.valueOf(end).equals("")) {
    				System.out.println(111);
    				String sql = "select * from " + table + " where genename like'%"
    						+ gtgene3 + "%' and chr ='" + chr + "' and start >= '"
    						+ start + "'";
    				System.out.println(sql);
    				rs = st.executeQuery(sql);
    				while (rs.next()) {
    					index = 1;
    					gtgene3 gtgene3 = new gtgene3();
    					gtgene3.setType(rs.getString(1));
    					gtgene3.setHm(rs.getString(2));
    					gtgene3.setGenename(rs.getString(3));
    					gtgene3.setChr(rs.getString(4));
    					gtgene3.setStart(rs.getString(5));
    					gtgene3.setEnd(rs.getString(6));
    					gtgene3.setTf(rs.getString(13));
    					gtgene3.setTdrug(rs.getString(12));
    					gtgene3.setGse(rs.getString(16));
    					gtgene3.setOption(rs.getString(17));
    					gtgene3_total.add(gtgene3);

    				}
    				if (index == 1) {
    					Map<String, ArrayList<gtgene3>> request = (Map) ActionContext
    							.getContext().get("request");

    					request.put("gtgene3_List", gtgene3_List);
    					request.put("gtgene3_total", gtgene3_total);

    					return SUCCESS;
    				} else
    					return ERROR;

    			}  
    			if (String.valueOf(start).equals("") && !"".equals(String.valueOf(end))) {

    				System.out.println(111);
    				String sql = "select * from " + table + "  where genename="
    						+ gtgene3 + " and chr= '" + chr + "' and end <= '"
    						+ end + "' ";
    				System.out.println(sql);
    				rs = st.executeQuery(sql);
    				while (rs.next()) {
    					index = 1;
    					gtgene3 gtgene3 = new gtgene3();
    					gtgene3.setType(rs.getString(1));
    					gtgene3.setHm(rs.getString(2));
    					gtgene3.setGenename(rs.getString(3));
    					gtgene3.setChr(rs.getString(4));
    					gtgene3.setStart(rs.getString(5));
    					gtgene3.setEnd(rs.getString(6));
    					gtgene3.setTf(rs.getString(13));
    					gtgene3.setTdrug(rs.getString(12));
    					gtgene3.setGse(rs.getString(16));
    					gtgene3.setOption(rs.getString(17));
    					gtgene3_total.add(gtgene3);

    				}
    				if (index == 1) {
    					Map<String, ArrayList<gtgene3>> request = (Map) ActionContext
    							.getContext().get("request");

    					request.put("gtgene3_List", gtgene3_List);
    					request.put("gtgene3_total", gtgene3_total);

    					return SUCCESS;
    				} else
    					return ERROR;
    			}
    			else {
    				System.out.println(111);
    				String sql = "select * from " + table + "  where genename like'%"
    						+ gtgene3 + "%' and chr ='" + chr + "' and start >= '"
    						+ start + "'and end <= '"
					+ end + "' ";
    				System.out.println(sql);
    				rs = st.executeQuery(sql);
    				while (rs.next()) {
    					index = 1;
    					gtgene3 gtgene3 = new gtgene3();
    					gtgene3.setType(rs.getString(1));
    					gtgene3.setHm(rs.getString(2));
    					gtgene3.setGenename(rs.getString(3));
    					gtgene3.setChr(rs.getString(4));
    					gtgene3.setStart(rs.getString(5));
    					gtgene3.setEnd(rs.getString(6));
    					gtgene3.setTf(rs.getString(13));
    					gtgene3.setTdrug(rs.getString(12));
    					gtgene3.setGse(rs.getString(16));
    					gtgene3.setOption(rs.getString(17));
    					gtgene3_total.add(gtgene3);

    				}
    				if (index == 1) {
    					Map<String, ArrayList<gtgene3>> request = (Map) ActionContext
    							.getContext().get("request");

    					request.put("gtgene3_List", gtgene3_List);
    					request.put("gtgene3_total", gtgene3_total);

    					return SUCCESS;
    				} else
    					return ERROR;

    			}
    	  }
		
		
	}


}
