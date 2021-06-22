package action;

public class hh {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String go="www,wwwe";
String[] result = go.split("£¬");
String Sql="";
String sql_FIS="";
String sql_FIS1="";
if(result.length>1){
	for(int i= 0;i< result.length;i++) {
		sql_FIS1=" and "+"FIND_IN_SET(\'\"+"+result[i]+"+\'\",function_GO)";
		sql_FIS=sql_FIS+sql_FIS1;
		}
	
	}
Sql=sql_FIS;
System.out.println(Sql);
}
}
