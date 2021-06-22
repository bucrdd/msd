package util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class fcon {
	private File f = null;
	private FileReader fr = null;
	private BufferedReader br = null;
	private FileWriter fw = null;
	private BufferedWriter bw = null;
	
	public fcon(String fileName){
		this.f = new File(fileName);
	}	
	
	public BufferedReader getBr() {
		try {
			this.fr = new FileReader(this.f);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.br = new BufferedReader(fr);
		return br;
	}
	public BufferedWriter getBw() {
			try {
				this.fw = new FileWriter(this.f);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		this.bw = new BufferedWriter(fw);
		return bw;
	}
	public void close() throws IOException{
		this.br.close();
		this.bw.close();
		this.fr.close();
		this.fw.close();
		
	}
}

