package beans;

import java.util.List;
import beans.CytoBand;

public interface BandDaoImpl {

	public abstract List<CytoBand> getListALL(String species);
	public abstract List<CytoBand> getListQueryByName(String species,String name);
	/*public abstract CytoBand getQueryByID(String species,CytoBand id);*/
	
	public abstract void insert(CytoBand cytoBand);
	public abstract void update(CytoBand cytoBand);
	
	public abstract void deleteById(CytoBand id);
	public abstract void deleteByName(String id);
	
}
