package action;

import java.util.ArrayList;

import com.opensymphony.xwork2.Action;

import java.io.InputStream;

import org.apache.struts2.ServletActionContext;

public class gtgene_action implements Action {
	public ArrayList<String> getDiseasetheName() {
		return diseasetheName;
	}

	public void setDiseasetheName(ArrayList<String> diseasetheName) {
		this.diseasetheName = diseasetheName;
	}

	public ArrayList<String> getNormaltheName() {
		return normaltheName;
	}

	public void setNormaltheName(ArrayList<String> normaltheName) {
		this.normaltheName = normaltheName;
	}

	public ArrayList<String> getDiseaseCelltheName() {
		return diseaseCelltheName;
	}

	public void setDiseaseCelltheName(ArrayList<String> diseaseCelltheName) {
		this.diseaseCelltheName = diseaseCelltheName;
	}

	public ArrayList<String> getNormalCelltheName() {
		return normalCelltheName;
	}

	public void setNormalCelltheName(ArrayList<String> normalCelltheName) {
		this.normalCelltheName = normalCelltheName;
	}

	private ArrayList<String> diseasetheName;
	private ArrayList<String> normaltheName;
	private ArrayList<String> diseaseCelltheName;
	private ArrayList<String> normalCelltheName;
	public String fileName;

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String execute() throws Exception {
		// TODO Auto-generated method stub

		/*
		 * if(type.contains("\'")){ type = type.replace("\'", "\'\'"); }
		 * gtgene=gtgene.trim();
		 */
		// System.out.println(gtgene);
		//System.out.println("diseasetheName: " + diseasetheName + ", diseasetheName.size() = " + diseasetheName.size());
		//System.out.println("normaltheName: " + normaltheName + ", normaltheName.size() = " + normaltheName.size());
		//System.out.println("diseaseCelltheName: " + diseaseCelltheName + ", diseaseCelltheName.size() = " + diseaseCelltheName.size());
		//System.out.println("normalCelltheName: " + normalCelltheName + ", normalCelltheName.size() = " + normalCelltheName.size());
		int lenD;
		int lenN;
		int lenDC;
		int lenNC;
		if(diseasetheName==null){
			lenD=0;
		}else{
			lenD=diseasetheName.size();
		}
		if(normaltheName==null){
			lenN=0;
		}else{
			lenN=normaltheName.size();
		}
		if(diseaseCelltheName==null){
			lenDC=0;
		}else{
			lenDC=diseaseCelltheName.size();
		}
		
		if(normalCelltheName==null){
			lenNC=0;
		}else{
			lenNC=normalCelltheName.size();
		}
		int len =lenD+lenN+lenDC+lenNC;
		int lenDD =lenD;
		int lenDN =lenD+lenN;
		int lenDNC =lenD+lenNC;
		int lenDDC =lenD+lenDC;
		int lenNN =lenN;
		int lenNDC =lenN+lenDC;
		int lenNNC =lenN+lenNC;
		int lenDCDC =lenDC;
		int lenNCDC =+lenNC+lenDC;
		int lenNCNC =+lenNC;
		System.out.println(len);
		if(len!=2){
			return ERROR;
		}else if(lenDD==2){
			if(diseasetheName.get(0)==diseasetheName.get(1)){
				return ERROR;
			}else{
				this.fileName = diseasetheName.get(0) + "_vs_" + diseasetheName.get(1) + "_db.zip";
				getDownloadFile();
				return SUCCESS;
			}
		}else if(lenNN==2){
			if(normaltheName.get(0)==normaltheName.get(1)){
				return ERROR;
			}else{
				this.fileName = normaltheName.get(0) + "_vs_" + normaltheName.get(1) + "_db.zip";
				getDownloadFile();
				return SUCCESS;
			}
		}else if(lenDCDC==2){
			if(diseaseCelltheName.get(0)==diseaseCelltheName.get(1)){
				return ERROR;
			}else{
				this.fileName = diseaseCelltheName.get(0) + "_vs_" + diseaseCelltheName.get(1) + "_db.zip";
				getDownloadFile();
				return SUCCESS;
			}
		}else if(lenNCNC==2){
			if(normalCelltheName.get(0)==normalCelltheName.get(1)){
				return ERROR;
				
			}else{
				this.fileName = normalCelltheName.get(0) + "_vs_" + normalCelltheName.get(1) + "_db.zip";
				getDownloadFile();
				return SUCCESS;
			}
		}else if(lenDN==2){
				this.fileName = diseasetheName.get(0) + "_vs_" + normaltheName.get(0) + "_db.zip";
				getDownloadFile();
				return SUCCESS;
		}else if(lenDNC==2){
			this.fileName = diseasetheName.get(0) + "_vs_" + normalCelltheName.get(0) + "_db.zip";
			getDownloadFile();
			return SUCCESS;
		}else if(lenDDC==2){
			this.fileName = diseasetheName.get(0) + "_vs_" + diseaseCelltheName.get(0) + "_db.zip";
			getDownloadFile();
			return SUCCESS;
		}else if(lenNDC==2){
			this.fileName = normaltheName.get(0) + "_vs_" + diseaseCelltheName.get(0) + "_db.zip";
			getDownloadFile();
			return SUCCESS;
		}else if(lenNNC==2){
			this.fileName = normaltheName.get(0) + "_vs_" + normalCelltheName.get(0) + "_db.zip";
			getDownloadFile();
			return SUCCESS;
		}else if(lenNCDC==2){
			this.fileName = diseaseCelltheName.get(0) + "_vs_" + normalCelltheName.get(0) + "_db.zip";
			getDownloadFile();
			return SUCCESS;
		}else{
			return ERROR;
		}
		
	}
	public InputStream getDownloadFile() throws Exception {
		String filenamePath = "/download/DiffBind/" + fileName;
		System.out.println(filenamePath);
		return ServletActionContext.getServletContext().getResourceAsStream(
				filenamePath);

	}
}
