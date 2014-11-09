package negocio;

import dao.GeneralDAO;
import dominio.*;

public class Control {
	private GeneralDAO dao = new GeneralDAO();
	 
public String AgregarTipoCliente(Tipocliente tipo){
if(Beans.getConsultas().isTipoCliente(tipo.getIdTipoCliente())){
return "ese tipo de cliente ya existe";}
else 
{
Beans.getBase().guardar(tipo);	
}
	
	return "se agrego correctamente en nuevo tipo de cliente";


}
public String AgregarCliente(Cliente cliente){
if(Beans.getConsultas().isCliente(cliente.getIdCliente())){
return "ese identificador  cliente ya existe";}
else 
{
Beans.getBase().guardar(cliente);	
}
	
	return "se agrego correctamente en nuevo  cliente";


}
}
