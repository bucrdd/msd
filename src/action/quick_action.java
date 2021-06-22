package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.dbcon;
import beans.query;






import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class quick_action implements Action{
	private String query;
	private String diff_method;

	


	public String getDiff_method() {
		return diff_method;
	}





	public void setDiff_method(String diff_method) {
		this.diff_method = diff_method;
	}





	public String getQuery() {
		return query;
	}





	public void setQuery(String query) {
		this.query = query;
	}





	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<query> query_List = new ArrayList<query>();
		dbcon dbc = new dbcon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(query);
		if(query.contains("\'")){	
			query = query.replace("\'", "\'\'");
		}
   		String table;
   		table=diff_method.toLowerCase();
		String sql = "select * from hhmdhigh where genename = '"+query+"' and option_ = '"+diff_method+"' ";
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			query query = new query();
			query.setNode2(rs.getString(3));
			
			query.setNode1(rs.getString(2));
			
			query.setNode3(rs.getString(1));
			
			System.out.println("//////////");
			query_List.add(query);
			
		}
		if(index==1){
			System.out.println(sql);
			Map<String, ArrayList<query>> request = (Map) ActionContext.getContext().get("request");
			
			request.put("query_List", query_List);
			return SUCCESS;
		}else
			return ERROR;
			
   	}

		

}
		
