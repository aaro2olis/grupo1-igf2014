<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dao.*" %>
 <%@ page import="dominio.*" %>
 <%@ page import="negocio.*" %>
  <%@ page import="java.util.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
<!--
function validar() // java script function is created
{
	if (document.f.idtransaccion.value=="" ) {
		alert("El ID es incorrecto"); //java script message will be display
		document.f.idtransaccion.focus();
		return false;
	}
	else if (document.f.fechatrans.value.length =="") {
		alert("Ingrese una fecha"); //java script message will be display
		document.f.fechatrans.focus();
		return false;
	}
	else if (document.f.fechaplic.value.length =="") {
		alert("Ingrese una fecha"); //java script message will be display
		document.f.fechaplic.focus();
		return false;
	}
	else if (document.f.monto.value=="") {
		alert("Ingrese monto"); //java script message will be display
		document.f.monto.focus();
		return false;
	}
	else if (document.f.cargo.value=="") {
		alert("Ingrese cargo"); //java script message will be display
		document.f.cargo.focus();
		return false;
	}
	else if (document.f.abono.value=="") {
		alert("Ingrese abono"); //java script message will be display
		document.f.abono.focus();
		return false;
	}
	else
	{
	document.f.submit();
	}
}
function Numeros() {
	 if ((event.keyCode < 48) || (event.keyCode > 57)) 
	  event.returnValue = false;
	}
function Nombres() {
	 if ((event.keyCode != 32) && (event.keyCode < 65) || (event.keyCode > 90) && (event.keyCode < 97) || (event.keyCode > 122))
	  event.returnValue = false;
	}
//-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Transaccion</title>
</head>
<body>
<form action="" name="f">
Agregar Trasaccion <br>

Id Transaccion <input type="text" name="idtransaccion"><br>
Fecha de transaccion <input type="date" name="fechatrans"><br>
Fecha Aplicada <input type="date" name="fechaplic"><br>
Monto de transaccion <input type="text" name="monto"><br>
 <%
		List<Concepto> Lconcepto = Beans.getConsultas().getListaConcepto();
		System.out.println( Lconcepto.size());
	%>
idConcepto :<select name='idConcepto'>
			<%
				for (int i = 0; i <Lconcepto.size(); i++) {
					System.out.println(i);
					out.println("<option value=" +Lconcepto.get(i).getIdConcepto() + "> " +  Lconcepto.get(0).getDescripcion()  + " </option>");

				} // fin while 
				out.println("</SELECT>");
			%> <br>
			<%
		List<Tarjetacredito> LtarjetaCredito = Beans.getConsultas().getListaTarjetaCredito();
		System.out.println( LtarjetaCredito.size());
	%>
idTarjetaCredito :<select name='idTarjetadeCredito'>
			<%
				for (int i = 0; i <LtarjetaCredito.size(); i++) {
					System.out.println(i);
					out.println("<option value=" +LtarjetaCredito.get(i).getIdTarjetaCredito() + "> " +  LtarjetaCredito.get(i).getNombreTarjeta()  + " </option>");

				} // fin while 
				out.println("</SELECT>");
			%> <br>
			 <%
		List<Cliente> Lcliente = Beans.getConsultas().getListaCliente();
		System.out.println( Lcliente.size());
	%>
 
 IdClienteTarjeta :<select name='idCliente'>
			<%
				for (int i = 0; i < Lcliente.size(); i++) {
					System.out.println(i);
					out.println("<option value=" + Lcliente.get(i).getIdCliente() + "> " +  Lcliente.get(i).getIdCliente()  + " </option>");

				} // fin while 
				out.println("</SELECT>");
			%> <br>
					 <%
		List<ClientetarjetaestadoId> LclientetarjetaEstadoId = Beans.getConsultas().getListaClienteTarjetaEstadoId();
		System.out.println( LclientetarjetaEstadoId.size());
	%>
			
fechaLimitePago = <select name='idClientetarjetaEstId'>
			<%
				for (int i = 0; i < LclientetarjetaEstadoId.size(); i++) {
					System.out.println(i);
					out.println("<option value=" + LclientetarjetaEstadoId.get(i).getFechaLimtePago() + "> " +  LclientetarjetaEstadoId.get(i).getFechaLimtePago()  + " </option>");

				} // fin while 
				out.println("</SELECT>");
			%> <br>
			 <%
		List<Pais> LPais = Beans.getConsultas().getListaPais();
		System.out.println( LPais.size());
	%>
IPais :<select name='idPais'>
<%
				for (int i = 0; i <  LPais.size(); i++) {
					System.out.println(i);
					out.println("<option value=" +  LPais.get(i).getIdPais() + "> " +   LPais.get(i).getNombrePais() + " </option>");

				} // fin while 
				out.println("</SELECT>");
			%> <br>
<label>Tipo de transaccion: </label><br>
	<input type="radio" name="tipo" value="c">Cargo<br>
    <input type="radio" name="tipo" value="a">Abono<br>
<input type="button" value="Guardar"  class="boton" onclick="validar()"> 
<input type="reset" value="Restablecer" class="boton">
</form>
</body>
</html>