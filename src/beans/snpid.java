package beans;

public class snpid {


	public String getProtein() {
		return protein;
	}
	public void setProtein(String protein) {
		this.protein = protein;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getNode() {
		return node;
	}
	public void setNode(String node) {
		this.node = node;
	}
	private String protein;


	private String disease;

	private String node;
	private String score;
	
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public snpid(String protein,  String disease,String node,String score){
	super();
	this.protein = protein;
	this.disease = disease;

	
	this.node = node;
	this.score = score;

	}
	public snpid(){
		super();
		//TODO Auto-generated constructor stub
}
}
