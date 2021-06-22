package beans;

import java.util.List;

import beans.RefGene;

public interface RefGeneDaoImpl {

	public abstract List<RefGene> getListALL(String species);
	public abstract List<RefGene> getListQueryByName(String species,String name);
	public abstract List<RefGene> getListQueryByPosition(String species,String chrom,int txStart,int txEnd);
}
