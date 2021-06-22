package action;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import util.DbCon;

import beans.disease3;



import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class disease3_action implements Action{
	private String disease3;
	private String diff_method;
	

	public String getDiff_method() {
		return diff_method;
	}


	public void setDiff_method(String diffMethod) {
		diff_method = diffMethod;
	}


	public String getDisease3() {
		return disease3;
	}


	public void setDisease3(String disease3) {
		this.disease3 = disease3;
	}


	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ArrayList<disease3> disease3_List = new ArrayList<disease3>();
		DbCon dbc = new DbCon();
		Statement st = dbc.getStat();
		ResultSet rs = null;
		int index=0;
		System.out.println(disease3);
		if(disease3.contains("\'")){
			
		    disease3 = disease3.replace("\'", "\'\'");
			}
		
		String sql = "select * from m6ahigh where disease like '%"+disease3+"%' and diff_method like '%"+diff_method+"%' ";
		System.out.println(sql);
		rs=st.executeQuery(sql);
		while (rs.next()) {
			index=1;
			disease3 disease3 = new disease3();
			disease3.setDisease(rs.getString(1));
			disease3.setName(rs.getString(2));
			disease3.setChr(rs.getString(3));
			disease3.setStrand(rs.getString(4));
			disease3.setStart(rs.getString(5));
			disease3.setEnd(rs.getString(6));
			disease3.setPvalue(rs.getString(7));
			disease3.setLogFC(rs.getString(8));
			disease3.setGse(rs.getString(9));
			disease3.setTreat_method(rs.getString(10));
			
		
			disease3.setDiff_method(rs.getString(11));
		
			
			disease3_List.add(disease3);
		}
		if(index==1){
		Map<String, ArrayList<disease3>> request = (Map) ActionContext.getContext().get("request");
			
		request.put("disease3_List", disease3_List);
		return SUCCESS;
		}else
			return ERROR;
			
			
			
		}
		

}
