
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*"%>
<%@ page import="dominio.*"%>
<%@ page import="negocio.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.math.BigDecimal"%>
<script type="text/javascript">
<!--
function validar() // java script function is created
{
	if (document.frmcliente.id.value=="") {
		alert("El Id es incorrecto"); //java script message will be display
		document.frmcliente.id.focus();
		return false;
	}
else if (document.frmcliente.nombre.value.length < 2 ) {
		alert("Los nombres estan incorrectos"); //java script message will be display
		document.frmcliente.nombre.focus();
		return false;
	}
	else if (document.frmcliente.apellido.value.length < 2) {
		alert("Los apellidos estan incorrectos"); //java script message will be display
		document.frmcliente.apellido.focus();
		return false;
	}
	else if (document.frmcliente.direccion.value.length < 10) {
		alert("La direccion es incorrecta"); //java script message will be display
		document.frmcliente.direccion.focus();
		return false;
	}
	else if (document.frmcliente.telefono.value.length !=8) {
		alert("El telefono es incorrecto"); //java script message will be display
		document.frmcliente.telefono.focus();
		return false;
	}
	else if (fecha()==false) {
		alert("Revise la fecha"); //java script message will be display
		document.frmcliente.fecha.focus();
		return false;
	}
	else if(validarEmail( document.frmcliente.email.value )==false)
		{
		alert("El email esta incorrectos");
		document.frmcliente.email.focus();
		return false;
		}
	else if (document.frmcliente.tipo.value="") {
		alert("El tipo de cliente es incorrecto"); //java script message will be display
		document.frmcliente.tipocliente.focus();
		return false;
	}
	else
		{
		document.frmcliente.submit();
		}
		
		

}
function Nombres() {
 if ((event.keyCode != 32) && (event.keyCode < 65) || (event.keyCode > 90) && (event.keyCode < 97) || (event.keyCode > 122))
  event.returnValue = false;
}
function Numeros() {
 if ((event.keyCode < 48) || (event.keyCode > 57)) 
  event.returnValue = false;
}

function validarEmail( email ) {
expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
if(email!="")
{
if ( !expr.test(email) ){
	return false;
}
	else 
	return true;
}
}

function fecha()
{
	var fecha1,fecha2,f1,f2; 

	fecha1=new Date(); 
	fecha2=new Date(); 

	fecha2=new Date(document.frmcliente.fecha.value); 
	fecha1=new Date(fecha1.getFullYear()-18,fecha1.getMonth(),fecha1.getDate()); 
	f1=new Date(fecha2); 
	f2=new Date(fecha1); 
	if(f2<f1)
	{
		return false;
		
		}
		if(f1.getFullYear()<1930)
		{
	
	        
			return false;
		}
	}

//-->
</script>

<form method="post" name="frmcliente" action="../Procesos/PCliente.jsp">

	<p>Cliente</p>

	<label for="id">IDCliente</label> <input type="text" name="id" /></br> <label>Nombres:</label>
	<input type="text" name="nombre" /></br> <label>Apellidos:</label> <input
		type="text" name="apellido" /></br> <label>Direccion: </label> <input
		type="text" name="direccion" /></br> <label>telefono</label> <input
		type="text" name="telefono" /></br> <label>fecha nacimiento</label><input
		type="date" name="fecha" /></br> <label>Email</label> <input type="text"
		name="email" /></br>


	<%
		List<Tipocliente> tipos = Beans.getConsultas()
				.getListaTipoCliente();
		System.out.println(tipos.size());
	%>

	<p>Tipo
	<p>
		<select name='tipo'>
			<%
				for (int i = 0; i < tipos.size(); i++) {
					System.out.println(i);
					out.println("<option value=" + tipos.get(i).getIdTipoCliente()
							+ "> " + tipos.get(i).getDTipoCliente() + " </option>");

				} // fin while 
				out.println("</SELECT>");
			%>
			<input type="button" value="Guardar" class="boton" onclick="validar()"/>
			<input type="reset" value="Restablecer" class="boton" />
</form>
