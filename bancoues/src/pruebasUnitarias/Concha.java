package pruebasUnitarias;

import dao.ConsultasDAO;
import dao.GeneralDAO;
import dominio.Pais;

public class Concha {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GeneralDAO v= new GeneralDAO();
		ConsultasDAO c=new ConsultasDAO();
		
	/*	Pais n= new Pais();
		n.setNombrePais("la cagamos en dsi");
		n.setIdPais((short)5);
		
		v.guardar(n);*/
		
if(c.isPais((short)14))
System.out.println("si esta");
else 
	System.out.println("no esta");	
	}

}
