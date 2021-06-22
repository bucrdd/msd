package beans;

public class query {
	
	private String node1;
	public String getNode1() {
		return node1;
	}
	public void setNode1(String node1) {
		this.node1 = node1;
	}
	public String getNode2() {
		return node2;
	}
	public void setNode2(String node2) {
		this.node2 = node2;
	}
	private String node2;
	private String node3;

	
	public String getNode3() {
		return node3;
	}
	public void setNode3(String node3) {
		this.node3 = node3;
	}
	public query( String node1, String node2 , String node3 ){
	super();
	this.node1 = node1;
	this.node2 = node2;
	this.node3 = node3;
	
	}
	public query(){
		super();
		//TODO Auto-generated constructor stub
	}
	
	
	
}
