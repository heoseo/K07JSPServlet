package util;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class FirstFunction {

	public static void srcGugudan(JspWriter out) {
		try{
			out.println("<table border='1'>");
			for(int dan = 2; dan <= 9; dan++){
				out.println("<tr>");
				for(int su = 1; su <= 9; su++){
					out.println("<td>"+dan+"*"+su +"="+(dan*su)+"</td>");
				}
				out.println("</tr>");
			}
			out.println("</table>");
		}
		catch(IOException e){}
	}
	
	public void tempFunc(JspWriter out) {
		String str = "나는 문자열";
		try {
			out.println(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
