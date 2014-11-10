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

public String AgregarTarjeta(Tarjetacredito tarjeta){
if(Beans.getConsultas().isTarjeta(tarjeta.getIdTarjetaCredito())){
return "ese identificador de tarjeta existe";}
else 
{
Beans.getBase().guardar(tarjeta);	
}	
	return "se agrego correctamente en la nueva tarjeta";

}
////////////////////////////////////////////////
public String AgregarConcepto(Concepto concepto){
if(Beans.getConsultas().isCliente(concepto.getIdConcepto())){
return "ese identificador  concepto ya existe";}
else 
{
Beans.getBase().guardar(concepto);	
}	
	return "se agrego correctamente en nuevo  concepto";

}
/////////////////////////////////////////////////////
public String AgregarPais(Pais pais){
if(Beans.getConsultas().isCliente(pais.getIdPais())){
return "ese identificador pais ya existe";}
else 
{
Beans.getBase().guardar(pais);	
}	
	return "se agrego correctamente en nuevo  pais";

}
////////////////////////////////////////////////////
public String AgregarEstablecimiento(Establecimiento establecimiento){
if(Beans.getConsultas().isCliente(establecimiento.getNumReferencia())){
return "ese identificador  concepto ya existe";}
else 
{
Beans.getBase().guardar(establecimiento);	
}	
	return "se agrego correctamente en nuevo  establecimiento";

}
/////////////////////////////////////////
public String AgregarTarjetaCredito(Tarjetacredito tarjetaCredito){
if(Beans.getConsultas().isCliente(tarjetaCredito.getIdTarjetaCredito())){
return "ese identificador  concepto ya existe";}
else 
{
Beans.getBase().guardar(tarjetaCredito);	
}	
	return "se agrego correctamente la nueva tarjeta de credito";

}
/////////////////////////////////////////////////
public String AgregarTransaccion(Transaccion transaccion){
if(Beans.getConsultas().isCliente(transaccion.getIdTransaccion())){
return "ese identificador  concepto ya existe";}
else 
{
Beans.getBase().guardar(transaccion);	
}	
	return "se agrego correctamente una nueva transaccion";

}
//////////////////////////////////////////////////
}
