package action;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;

import util.dbcon;
import beans.histoneAtac;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class ATAC_action implements Action {
	private String atachm;
	public String getAtachm() {
		return atachm;
	}




	public void setAtachm(String atachm) {
		this.atachm = atachm;
	}




	public String getAtactype() {
		return atactype;
	}




	public void setAtactype(String atactype) {
		this.atactype = atactype;
	}




	public String getAtacchr() {
		return atacchr;
	}




	public void setAtacchr(String atacchr) {
		this.atacchr = atacchr;
	}




	public String getAtacstart() {
		return atacstart;
	}




	public void setAtacstart(String atacstart) {
		this.atacstart = atacstart;
	}




	public String getAtacend() {
		return atacend;
	}




	public void setAtacend(String atacend) {
		this.atacend = atacend;
	}




	private String atactype;
	private String atacchr;
	private String atacstart;
	private String atacend;


	
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE = "one";
		ArrayList<histoneAtac> histoneAtac_List = new ArrayList<histoneAtac>();
		ArrayList<histoneAtac> histoneAtac_total = new ArrayList<histoneAtac>();

		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		Statement st1 = dbc.getStat();
		ResultSet rs = null;
		
		int index = 0;
		System.out.println("type=" + atactype);
		System.out.println(atacchr);
		System.out.println(atacstart);
		System.out.println(atacend);
		String table;
		String table1;
	    table1 = "'"+ atactype + "_atac"+"'";
	    table = atactype + "_atac";
	    ResultSet rs1 = null;
	    String sql1="SELECT table_name FROM information_schema.TABLES WHERE table_name ="+table1;
	    System.out.println(sql1);
	    rs1 = st.executeQuery(sql1);
	    if (rs1.next()) {
			System.out.println(sql1);
		} else {
			return ERROR;
		}
	  
	    String sql = "select * from " + table + " where chr='"+atacchr+"' and ((start <= '"+ atacstart + "' and end >= '" + atacend + "') or "+" (start <= '"+ atacstart + "' and end <= '" + atacend + "') or "+" (start >= '"+ atacstart + "' and end <= '" + atacend + "') or "+" (start >= '"+ atacstart + "' and end >= '" + atacend + "')) ";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				index = 1;
				histoneAtac histoneAtac = new histoneAtac();
				
				histoneAtac.setType(rs.getString(1));
				histoneAtac.setChr(rs.getString(2));
				histoneAtac.setStart(rs.getString(3));
				histoneAtac.setEnd(rs.getString(4));
				histoneAtac.set_int(rs.getString(5));
				histoneAtac.setFold_change(rs.getString(6));
				histoneAtac.setPvalue(rs.getString(7));
				histoneAtac.setQvalue(rs.getString(8));
				histoneAtac_total.add(histoneAtac);

			}
			if (index == 1) {
				Map<String, ArrayList<histoneAtac>> request = (Map) ActionContext
						.getContext().get("request");

				request.put("histoneAtac_List", histoneAtac_List);
				request.put("histoneAtac_total", histoneAtac_total);

				return SUCCESS;
			} else
				return ERROR;
		}
}

  		

