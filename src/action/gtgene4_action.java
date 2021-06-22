package action;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;

import util.dbcon;
import beans.gtgene4;
import beans.gtgene4;
import beans.gtgene4;
import beans.gtgene4;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class gtgene4_action implements Action {
	private String gtgene4;
	private String hm;
	private String type;
	private String chr;
	private String start;
	private String end;
	private String diff_method;

	/*
	 * private String protein; private String disease; private String organ;
	 */
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

	public String getGtgene4() {
		return gtgene4;
	}

	public void setGtgene4(String gtgene4) {
		this.gtgene4 = gtgene4;
	}
	
	
	private int pageNum = 1;
	
	private int pageSize = 10;

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE = "one";
		ArrayList<gtgene4> gtgene4_List = new ArrayList<gtgene4>();
		ArrayList<gtgene4> gtgene4_total = new ArrayList<gtgene4>();

		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		Statement st1 = dbc.getStat();
		ResultSet rs = null;
		ResultSet rs1 = null;
		int index = 0;
		if (null == gtgene4) {
			gtgene4 = "";
		}
		if (null == diff_method) {
			diff_method = "";
		}
		System.out.println("gtgene4=" + gtgene4);
		System.out.println("hm=" + hm);
		System.out.println("type=" + type);
		System.out.println(chr);
		System.out.println(start);
		System.out.println(end);
		System.out.println(diff_method);
		diff_method = "Normal";
		String table;
		String table1;
		if(gtgene4.equals("")&&chr.equals("")){
			return ERROR;
		}
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
			if (null == gtgene4) {
				gtgene4 = "";
			}
			gtgene4 = gtgene4.trim();
			hm = hm.toLowerCase();
			type = type.toLowerCase();
			

			String sql = "select * from " + table + " where genename like'%"
					+ gtgene4 + "%' and chr like'%" + chr + "%'";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				index = 1;
				gtgene4 gtgene4 = new gtgene4();
				gtgene4.setType(rs.getString(1));
				gtgene4.setHm(rs.getString(2));
				gtgene4.setGenename(rs.getString(3));
				gtgene4.setChr(rs.getString(4));
				gtgene4.setStart(rs.getString(5));
				gtgene4.setEnd(rs.getString(6));
				gtgene4.setTf(rs.getString(13));
				gtgene4.setTdrug(rs.getString(12));
				gtgene4.setGse(rs.getString(16));
				gtgene4.setOption(rs.getString(17));
				gtgene4_total.add(gtgene4);

			}
			if (index == 1) {
				Map<String, ArrayList<gtgene4>> request = (Map) ActionContext
						.getContext().get("request");

				request.put("gtgene4_List", gtgene4_List);
				request.put("gtgene4_total", gtgene4_total);

				return SUCCESS;
			} else
				return ERROR;
		}

  		if (!"".equals(String.valueOf(start)) && String.valueOf(end).equals("")) {
  			System.out.println(111);
  			String sql = "select * from " + table + " where genename like'%"
  					+ gtgene4 + "%' and chr like'%" + chr + "%' and start >= '"
  					+ start + "'";
  			System.out.println(sql);
  			rs = st.executeQuery(sql);
  			while (rs.next()) {
  				index = 1;
  				gtgene4 gtgene4 = new gtgene4();
  				gtgene4.setType(rs.getString(1));
  				gtgene4.setHm(rs.getString(2));
  				gtgene4.setGenename(rs.getString(3));
  				gtgene4.setChr(rs.getString(4));
  				gtgene4.setStart(rs.getString(5));
  				gtgene4.setEnd(rs.getString(6));
  				gtgene4.setTf(rs.getString(13));
  				gtgene4.setTdrug(rs.getString(12));
  				gtgene4.setGse(rs.getString(16));
  				gtgene4.setOption(rs.getString(17));
  				gtgene4_total.add(gtgene4);

  			}
  			if (index == 1) {
  				Map<String, ArrayList<gtgene4>> request = (Map) ActionContext
  						.getContext().get("request");

  				request.put("gtgene4_List", gtgene4_List);
  				request.put("gtgene4_total", gtgene4_total);

  				return SUCCESS;
  			} else
  				return ERROR;

  		}
  		if (String.valueOf(start).equals("") && !"".equals(String.valueOf(end))) {

			System.out.println(111);
			String sql = "select * from " + table + "  where genename="
					+ gtgene4 + " and chr like'%" + chr + "%' and end <= '"
					+ end + "' ";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				index = 1;
				gtgene4 gtgene4 = new gtgene4();
				gtgene4.setType(rs.getString(1));
				gtgene4.setHm(rs.getString(2));
				gtgene4.setGenename(rs.getString(3));
				gtgene4.setChr(rs.getString(4));
				gtgene4.setStart(rs.getString(5));
				gtgene4.setEnd(rs.getString(6));
				gtgene4.setTf(rs.getString(13));
				gtgene4.setTdrug(rs.getString(12));
				gtgene4.setGse(rs.getString(16));
				gtgene4.setOption(rs.getString(17));
				gtgene4_total.add(gtgene4);

			}
			if (index == 1) {
				Map<String, ArrayList<gtgene4>> request = (Map) ActionContext
						.getContext().get("request");

				request.put("gtgene4_List", gtgene4_List);
				request.put("gtgene4_total", gtgene4_total);

				return SUCCESS;
			} else
				return ERROR;
		}else {
			System.out.println(111);
			String sql = "select * from " + table + "  where genename like'%"
					+ gtgene4 + "%' and chr like'%" + chr + "%' and start >= '"
					+ start + "' and end <= '"
					+ end + "' ";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				index = 1;
				gtgene4 gtgene4 = new gtgene4();
				gtgene4.setType(rs.getString(1));
				gtgene4.setHm(rs.getString(2));
				gtgene4.setGenename(rs.getString(3));
				gtgene4.setChr(rs.getString(4));
				gtgene4.setStart(rs.getString(5));
				gtgene4.setEnd(rs.getString(6));
				gtgene4.setTf(rs.getString(13));
				gtgene4.setTdrug(rs.getString(12));
				gtgene4.setGse(rs.getString(16));
				gtgene4.setOption(rs.getString(17));
				gtgene4_total.add(gtgene4);

			}
			if (index == 1) {
				Map<String, ArrayList<gtgene4>> request = (Map) ActionContext
						.getContext().get("request");

				request.put("gtgene4_List", gtgene4_List);
				request.put("gtgene4_total", gtgene4_total);

				return SUCCESS;
			} else
				return ERROR;

		} 
    	  }else{
    		  if (String.valueOf(start).equals("") && String.valueOf(end).equals("")) {
			System.out.println(111);
			if (null == gtgene4) {
				gtgene4 = "";
			}
			gtgene4 = gtgene4.trim();
			hm = hm.toLowerCase();
			type = type.toLowerCase();
			

			String sql = "select * from " + table + " where genename like'%"
					+ gtgene4 + "%' and chr ='" + chr + "'";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				index = 1;
				gtgene4 gtgene4 = new gtgene4();
				gtgene4.setType(rs.getString(1));
				gtgene4.setHm(rs.getString(2));
				gtgene4.setGenename(rs.getString(3));
				gtgene4.setChr(rs.getString(4));
				gtgene4.setStart(rs.getString(5));
				gtgene4.setEnd(rs.getString(6));
				gtgene4.setTf(rs.getString(13));
				gtgene4.setTdrug(rs.getString(12));
				gtgene4.setGse(rs.getString(16));
				gtgene4.setOption(rs.getString(17));
				gtgene4_total.add(gtgene4);

			}
			if (index == 1) {
				Map<String, ArrayList<gtgene4>> request = (Map) ActionContext
						.getContext().get("request");

				request.put("gtgene4_List", gtgene4_List);
				request.put("gtgene4_total", gtgene4_total);

				return SUCCESS;
			} else
				return ERROR;
		}

    			if (!"".equals(String.valueOf(start)) && String.valueOf(end).equals("")) {
    				System.out.println(111);
    				String sql = "select * from " + table + " where genename like'%"
    						+ gtgene4 + "%' and chr ='" + chr + "' and start >= '"
    						+ start + "'";
    				System.out.println(sql);
    				rs = st.executeQuery(sql);
    				while (rs.next()) {
    					index = 1;
    					gtgene4 gtgene4 = new gtgene4();
    					gtgene4.setType(rs.getString(1));
    					gtgene4.setHm(rs.getString(2));
    					gtgene4.setGenename(rs.getString(3));
    					gtgene4.setChr(rs.getString(4));
    					gtgene4.setStart(rs.getString(5));
    					gtgene4.setEnd(rs.getString(6));
    					gtgene4.setTf(rs.getString(13));
    					gtgene4.setTdrug(rs.getString(12));
    					gtgene4.setGse(rs.getString(16));
    					gtgene4.setOption(rs.getString(17));
    					gtgene4_total.add(gtgene4);

    				}
    				if (index == 1) {
    					Map<String, ArrayList<gtgene4>> request = (Map) ActionContext
    							.getContext().get("request");

    					request.put("gtgene4_List", gtgene4_List);
    					request.put("gtgene4_total", gtgene4_total);

    					return SUCCESS;
    				} else
    					return ERROR;

    			}  
    			if (String.valueOf(start).equals("") && !"".equals(String.valueOf(end))) {

    				System.out.println(111);
    				String sql = "select * from " + table + "  where genename="
    						+ gtgene4 + " and chr= '" + chr + "' and end <= '"
    						+ end + "' ";
    				System.out.println(sql);
    				rs = st.executeQuery(sql);
    				while (rs.next()) {
    					index = 1;
    					gtgene4 gtgene4 = new gtgene4();
    					gtgene4.setType(rs.getString(1));
    					gtgene4.setHm(rs.getString(2));
    					gtgene4.setGenename(rs.getString(3));
    					gtgene4.setChr(rs.getString(4));
    					gtgene4.setStart(rs.getString(5));
    					gtgene4.setEnd(rs.getString(6));
    					gtgene4.setTf(rs.getString(13));
    					gtgene4.setTdrug(rs.getString(12));
    					gtgene4.setGse(rs.getString(16));
    					gtgene4.setOption(rs.getString(17));
    					gtgene4_total.add(gtgene4);

    				}
    				if (index == 1) {
    					Map<String, ArrayList<gtgene4>> request = (Map) ActionContext
    							.getContext().get("request");

    					request.put("gtgene4_List", gtgene4_List);
    					request.put("gtgene4_total", gtgene4_total);

    					return SUCCESS;
    				} else
    					return ERROR;
    			}
    			else {
    				System.out.println(111);
    				String sql = "select * from " + table + "  where genename like'%"
    						+ gtgene4 + "%' and chr ='" + chr + "' and start >= '"
    						+ start + "' and end <= '"
					+ end + "' ";
    				System.out.println(sql);
    				rs = st.executeQuery(sql);
    				while (rs.next()) {
    					index = 1;
    					gtgene4 gtgene4 = new gtgene4();
    					gtgene4.setType(rs.getString(1));
    					gtgene4.setHm(rs.getString(2));
    					gtgene4.setGenename(rs.getString(3));
    					gtgene4.setChr(rs.getString(4));
    					gtgene4.setStart(rs.getString(5));
    					gtgene4.setEnd(rs.getString(6));
    					gtgene4.setTf(rs.getString(13));
    					gtgene4.setTdrug(rs.getString(12));
    					gtgene4.setGse(rs.getString(16));
    					gtgene4.setOption(rs.getString(17));
    					gtgene4_total.add(gtgene4);

    				}
    				if (index == 1) {
    					Map<String, ArrayList<gtgene4>> request = (Map) ActionContext
    							.getContext().get("request");

    					request.put("gtgene4_List", gtgene4_List);
    					request.put("gtgene4_total", gtgene4_total);

    					return SUCCESS;
    				} else
    					return ERROR;

    			}
    	  }
		
		
	}


}
