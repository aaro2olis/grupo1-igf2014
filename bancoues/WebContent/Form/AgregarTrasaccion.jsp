<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dao.*" %>
 <%@ page import="dominio.*" %>
 <%@ page import="negocio.*" %>
  <%@ page import="java.util.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	 <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" />
	  <link rel="stylesheet" type="text/css" href="../css/menuleft.css" media="screen" />
	  <link rel="stylesheet" type="text/css" href="../css/menuup.css" media="screen" />
	  <link rel="stylesheet" type="text/css" href="../css/element.css" media="screen" />
	<title>Banco Ues -agregar transaccion</title>
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
</head>

<!--[if IE]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]--><body>
  		<div id="wrapper">
      		<header>
    			<div id="logo"></div>
    			<h1>&nbsp;</h1>    		
            	<nav>
        			<div id="cssmenu">
        			</div>
        			</nav>
    		</header>
			<section>
			<article style="margin-left:15%;">
					 	<div id="divname"> 
					 	Agregar trasaccion
					 	</div>
					 	
						<form action="" name="f">
						<table>
  							<tr>
								<td><label>Id Transaccion</label></td>
								<td><input type="text" name="idtransaccion"></td>
							</tr>
							<tr>
							   <td><label>Fecha de transaccion</label></td>
								<td> <input type="date" name="fechatrans"></td>
							</tr>
							<tr>
							   <td><label>Fecha Aplicada</label></td>
								<td> <input type="date" name="fechaplic"></td>
							</tr>
							<tr>
							   <td><label>Monto de transaccion</label></td>
								<td> <input type="text" name="monto"></td>
							</tr>
							<tr>
								<%
									List<Concepto> Lconcepto = Beans.getConsultas().getListaConcepto();
									System.out.println( Lconcepto.size());
								%>
								<td><label>idConcepto :</label></td>
								<td><select name='idConcepto'>
									<%
										for (int i = 0; i <Lconcepto.size(); i++) {
											System.out.println(i);
											out.println("<option value=" +Lconcepto.get(i).getIdConcepto() + "> " +  Lconcepto.get(0).getDescripcion()  + " </option>");
						
										} // fin while 
										out.println("</SELECT>");
									%> </td>
							</tr>
							<tr>
									<%
										List<Tarjetacredito> LtarjetaCredito = Beans.getConsultas().getListaTarjetaCredito();
										System.out.println( LtarjetaCredito.size());
									%>
								<td><label>idTarjetaCredito :</label></td>
								<td><select name='idTarjetadeCredito'>
									<%
										for (int i = 0; i <LtarjetaCredito.size(); i++) {
											System.out.println(i);
											out.println("<option value=" +LtarjetaCredito.get(i).getIdTarjetaCredito() + "> " +  LtarjetaCredito.get(i).getNombreTarjeta()  + " </option>");
						
										} // fin while 
										out.println("</SELECT>");
									%> </td>
							</tr>
							<tr>
									<%
										List<Cliente> Lcliente = Beans.getConsultas().getListaCliente();
										System.out.println( Lcliente.size());
									%>
						 		<td><label>Id Cliente Tarjeta :</label></td>
								<td><select name='idCliente'>
									<%
										for (int i = 0; i < Lcliente.size(); i++) {
											System.out.println(i);
											out.println("<option value=" + Lcliente.get(i).getIdCliente() + "> " +  Lcliente.get(i).getIdCliente()  + " </option>");
						
										} // fin while 
										out.println("</SELECT>");
									%> </td>
							</tr>
							<tr>
									<%
										List<ClientetarjetaestadoId> LclientetarjetaEstadoId = Beans.getConsultas().getListaClienteTarjetaEstadoId();
										System.out.println( LclientetarjetaEstadoId.size());
									%>
								<td><label>Fecha Limite de Pago </label></td>
								<td> <select name='idClientetarjetaEstId'>
									<%
										for (int i = 0; i < LclientetarjetaEstadoId.size(); i++) {
											System.out.println(i);
											out.println("<option value=" + LclientetarjetaEstadoId.get(i).getFechaLimtePago() + "> " +  LclientetarjetaEstadoId.get(i).getFechaLimtePago()  + " </option>");
						
										} // fin while 
										out.println("</SELECT>");
									%> </td>
							</tr>
							<tr>
							
									 <%
										List<Pais> LPais = Beans.getConsultas().getListaPais();
										System.out.println( LPais.size());
									%>
								<td><label>IPais :</label></td>
								<td><select name='idPais'>
									<%
										for (int i = 0; i <  LPais.size(); i++) {
											System.out.println(i);
											out.println("<option value=" +  LPais.get(i).getIdPais() + "> " +   LPais.get(i).getNombrePais() + " </option>");
						
										} // fin while 
										out.println("</SELECT>");
									%> </td>
							</tr>
							<tr>
								<td><label>Tipo de transaccion: </label></td>
								<td><input type="radio" name="tipo" value="c">Cargo<br>
						    		<input type="radio" name="tipo" value="a">Abono</td>
						    </tr>
						    <tr>
						    	<td><input type="button" value="Guardar"  class="boton" onclick="validar()"></td>
						    	<td><input type="reset" value="Restablecer" class="boton"></td>
						    </tr>
						</table>
						</form>
			</article>
		</section>
		<footer>
			<br />
		<ul>
					<li><a href='index.html'><img src="../img/help1.png" onmouseover="this.src='../img/help2.png';" onmouseout="this.src='../img/help1.png';" name="Ayuda" /></a></li>
					<li><a href='index.html'><img src="../img/email1.png" onmouseover="this.src='../img/email2.png';" onmouseout="this.src='../img/email1.png';" name="Ayuda"/></a></li>
				</ul>	
		</footer>
	</div>
</body>
</html>
</html>