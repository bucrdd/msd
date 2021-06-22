package beans;

public class Color {

		public static String black="#000000";
		public static String white="#FFFFFF";
		public static String grey="#808080";
		public static String green="#008000";
		public static String brown="#A52A2A";
		public static String red="#FF0000";
		public static String yellow="#FFFF00";
		public static String orange="#FFA500";
		public static String blue="#0000FF";
		
		private static String colors[]=new String[]{"#000000","#FFFF00","#B0E0E6","#00FFFF","#00C957","#FF0000"
			,"#A020F0","#B0171F","#0000FF","#00C78C","#FF00FF","#872657","#0B1746","#802A2A","#DDA0DD","#FCE6C9"};

		public static void setColors(String colors[]) {
			Color.colors = colors;
		}

		public static String[] getColors() {
			return colors;
		}

}
