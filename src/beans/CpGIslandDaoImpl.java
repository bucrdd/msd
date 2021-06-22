package beans;

import java.util.List;

import beans.CpGisLand;


public interface CpGIslandDaoImpl {

	public abstract List<CpGisLand> getListALL(String species);
	public abstract CpGisLand getQueryByName(String species,String name);
	public abstract List<CpGisLand> getQueryByPosition(String species,String chrom,int start,int end);
}
