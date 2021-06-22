package beans;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class InitGlobal {

	private static SqlMapClient SqlMapConfig;
	public static String species="Human";
	public static Logger logger;
	public static Map<String, String> SpeciesMap;
	public static Map<String, String> AssemblyMap;
	
	public static void setSqlMapConfig(SqlMapClient SqlMapConfigs) {
		SqlMapConfig = SqlMapConfigs;
	}
	/**
	   * It's not a good idea to put code that can fail in a class initializer,
	   * but for sake of argument, here's how you configure an SQL Map.
	   */
	static {
		SpeciesMap=new HashMap<String, String>();
		/*SpeciesMap.put("Human", "hg19");
		SpeciesMap.put("Mouse", "mm9");
		SpeciesMap.put("D. melanogaster", "dm6");
		SpeciesMap.put("C. elegans", "ce10");
		
		AssemblyMap=new HashMap<String, String>();
		AssemblyMap.put("Human", "Human Feb. 2009 (GRCh37/hg19)");
		AssemblyMap.put("Mouse", "Mouse July 2007 (NCBI37/mm9)");
		AssemblyMap.put("D. melanogaster", "D. melanogaster Aug. 2014 (BDGP Release 6 + ISO1 MT/dm6)");
		AssemblyMap.put("C. elegans", "C. elegans Oct. 2010 (WS220/ce10)");*/
		
		SpeciesMap.put("Human", "hg38");

		
		AssemblyMap=new HashMap<String, String>();
		AssemblyMap.put("Human", "Human Dec. 2013 (GRCh38/hg38)");
		
		File f=new File(ProjectProperties.getInstance().getConfigItem("logFile"));
		FileHandler fh=null;
		try {
			fh = new FileHandler(f.toString());
		} catch (SecurityException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}//*4  
		fh.setFormatter( new SimpleFormatter() ); 
		logger = Logger.getLogger("project.properties");
		logger.addHandler(fh);
	    try {
			Reader reader = Resources.getResourceAsReader("SqlMapConfig.xml");
			setSqlMapConfig(SqlMapClientBuilder.buildSqlMapClient(reader));
			reader.close(); 
	    } catch (IOException e) {
		    throw new RuntimeException("Something bad happened while building the SqlMapClient instance." + e, e);
	    }
	}
	/**
	 * @return the sqlMapper
	 */
	public static SqlMapClient getSqlMapper() {
		return SqlMapConfig;
	}
	/**
	 * @param sqlMapper the sqlMapper to set
	 */

}
