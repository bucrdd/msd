package action;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;

import util.dbcon;
import beans.histoneHIC;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class HIC_action implements Action {

	public String getHictype() {
		return hictype;
	}




	public void setHictype(String hictype) {
		this.hictype = hictype;
	}




	public String getHicchr() {
		return hicchr;
	}




	public void setHicchr(String hicchr) {
		this.hicchr = hicchr;
	}




	public String getHicstart() {
		return hicstart;
	}




	public void setHicstart(String hicstart) {
		this.hicstart = hicstart;
	}




	public String getHicend() {
		return hicend;
	}




	public void setHicend(String hicend) {
		this.hicend = hicend;
	}





	private String hictype;
	private String hicchr;
	private String hicstart;
	private String hicend;



	
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String ONE = "one";
		ArrayList<histoneHIC> histoneHIC_List = new ArrayList<histoneHIC>();
		ArrayList<histoneHIC> histoneHIC_total = new ArrayList<histoneHIC>();

		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index = 0;
		System.out.println("type=" + hictype);
		System.out.println(hicchr);
		System.out.println(hicstart);
		System.out.println(hicend);
		String table1;
		String table;
	    table1 =  "'"+hictype+"_"+hicchr + "_hic"+"'";
	    table =  hictype+"_"+hicchr + "_hic";
	    ResultSet rs1 = null;
	    String sql1="SELECT table_name FROM information_schema.TABLES WHERE table_name ="+table1;
	    System.out.println(sql1);
	    rs1 = st.executeQuery(sql1);
	    if (rs1.next()) {
			System.out.println(sql1);
		} else {
			return ERROR;
		}
   
		String sql = "select * from " + table + " where chr='"+hicchr+"' and ((start <= '"+ hicstart + "' and end >= '" + hicend + "') or "+" (start <= '"+ hicstart + "' and end <= '" + hicend + "') or "+" (start >= '"+ hicstart + "' and end <= '" + hicend + "') or "+" (start >= '"+ hicstart + "' and end >= '" + hicend + "'))";
			System.out.println(sql);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				index = 1;
				histoneHIC histoneHIC = new histoneHIC();
				
				histoneHIC.setType(rs.getString(1));
				histoneHIC.setChr(rs.getString(2));
				histoneHIC.setStart(rs.getString(3));
				histoneHIC.setEnd(rs.getString(4));
				histoneHIC.setFrag2(rs.getString(5));
				histoneHIC.setFreq(rs.getString(6));
				histoneHIC_total.add(histoneHIC);

			}
			if (index == 1) {
				Map<String, ArrayList<histoneHIC>> request = (Map) ActionContext
						.getContext().get("request");

				request.put("histoneHIC_List", histoneHIC_List);
				request.put("histoneHIC_total", histoneHIC_total);

				return SUCCESS;
			} else
				return ERROR;
		}
}

  		

