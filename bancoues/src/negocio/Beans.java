package negocio;

import dao.ConsultasDAO;
import dao.GeneralDAO;

public class Beans {
	private static ConsultasDAO consulta=new ConsultasDAO();
	private static GeneralDAO base=new GeneralDAO();
	private static Control control=new Control();
	 public static ConsultasDAO getConsultas(){
		 
		 return consulta;
	 }
 public static GeneralDAO getBase(){
		 
		 return base;
	 }
 public static Control getControl() {
	 
	return control; 
	 
 }

}
