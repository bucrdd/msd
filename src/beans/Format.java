package beans;

import java.text.DecimalFormat;
import java.text.NumberFormat;

public class Format {

	private static DecimalFormat df=(DecimalFormat)NumberFormat.getInstance();
	
	public static String formatString(double d){
		if(d>10&&d<=1000){ 
			return fromatStringInteger(d);
			}else if(d<10&&d>1){
				return fromatStringDouble(d,1);
			}else if(d>1000){
				return fromatStringE(d);
			}else if(d>0){
				return fromatStringDouble(d,3);
			}
		return df.format(d);
	}
	
	public static String fromatString(double d,String str){
			df=new DecimalFormat(str);
			return df.format(d);
	}
	
	public static String fromatStringInteger(double d){
		df=(DecimalFormat)NumberFormat.getInstance();
		df.setMaximumFractionDigits(0);
		return df.format(d);
	}
	
	public static String fromatStringDouble(double d,int n){
		df=(DecimalFormat)NumberFormat.getInstance();
		df.setMaximumFractionDigits(n);
		return df.format(d);
	}
	
	public static String fromatStringE(double d){
		df=new DecimalFormat("0.#E0");
		return df.format(d);
	}
	
	
}
