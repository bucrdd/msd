package beans;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import beans.CustomTrack;

public class CustomTrackDao{
	private String label="";
	private String color="";
	private String type="";

	public String getLabel() {
		return label;
	}

	public String getColor() {
		return color;
	}

	public String getType() {
		return type;
	}

	public List<CustomTrack> getListByIndex(String fileName, String chrom, int start, int end) {
		// TODO Auto-generated method stub
		List<CustomTrack> customTrackList = new ArrayList<CustomTrack>();
		try {
			Path path = Paths.get(fileName);
			BufferedReader reader = new BufferedReader(new FileReader(path.toString()));
			String fileLine = null;
			Pattern pattern = Pattern.compile("^"+chrom);
			Pattern pattern2 = Pattern.compile("^track");
			Pattern pattern3 = Pattern.compile("^color");
			Pattern pattern4 = Pattern.compile("^type");
			while ((fileLine = reader.readLine()) != null) {
				Matcher matcher = pattern.matcher(fileLine);
				Matcher matcher2 = pattern2.matcher(fileLine);
				Matcher matcher3 = pattern3.matcher(fileLine);
				Matcher matcher4 = pattern4.matcher(fileLine);
				if (matcher2.find()){
					String[] track=fileLine.split("\"");
					label=track[1];
				}else if (matcher3.find()){
					String[] colorinfo=fileLine.split("\t");
					color=colorinfo[1];
				}else if (matcher4.find()){
					String[] typeinfo=fileLine.split("\t");
					type=typeinfo[1];
				}else if (matcher.find()){
					String[] fields=fileLine.split("\t");
					if (fields[0].equals(chrom) && Integer.parseInt(fields[1]) >= start && Integer.parseInt(fields[2]) <= end){
						CustomTrack customTrackItem = new CustomTrack();
						customTrackItem.setChrom(fields[0]);
						customTrackItem.setStart(Integer.parseInt(fields[1]));
						customTrackItem.setEnd(Integer.parseInt(fields[2]));
						customTrackItem.setScore(fields[3]);
						//System.out.println(chrom+":"+start+"-"+end+" >>> "+"	"+fileLine);
						customTrackList.add(customTrackItem);
					}
				}
			}
			reader.close();
			return customTrackList;
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
	
		Path path = Paths.get("D:/Tomcat7/webapps/SuperEnhancer/tmp", "demo", "demo_custom_example1.txt");
		CustomTrackDao dao=new CustomTrackDao();
		List<CustomTrack> list= dao.getListByIndex(path.toString(), "chr3", 181403551, 181455295);
		
		System.out.println(list.get(0).getScore());
	}

}
