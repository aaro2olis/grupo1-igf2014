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
	if (document.f.id.value=="" ) {
		alert("El ID es incorrecto"); //java script message will be display
		document.f.id.focus();
		return false;
	}
	else if (document.f.fecha.value.length < 1) {
		alert("Seleccione una fecha"); //java script message will be display
		document.f.fecha.focus();
		return false;
	}
	else if (document.f.limite.value.length =="") {
		alert("El limite es incorrecto"); //java script message will be display
		document.f.limite.focus();
		return false;
	}
	else if (document.f.puntos.value=="") {
		alert("Los puntos son incorrectos"); //java script message will be display
		document.f.puntos.focus();
		return false;
	}
	else if (document.f.selec.value=="") {
		alert("Selecione uno"); //java script message will be display
		document.f.selec.focus();
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuleft.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuup.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/element.css" media="screen" />
<title>Banco Ues - Agregar Cliente Tarjeta</title>
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
    				 		Banco Ues - Agregar Cliente Tarjeta
					    </div>
						 <form action="../Procesos/AgregarClienteTarjetaP.jsp" name="f" method="post">
						 
						<table>
  							<tr>
								<%
											List<Cliente> Lcliente = Beans.getConsultas().getListaCliente();
											System.out.println( Lcliente.size());
								%>
								<td><label>IdClienteTarjeta :</label></td>
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
								List<Tarjetacredito> LtarjetaCredito = Beans.getConsultas().getListaTarjetaCredito();
								System.out.println( LtarjetaCredito.size());
								%>
								<td><label>IdTarjeta de Credito :</label></td>
								<td><select name='idtarjetaCredito'>
									<%
										for (int i = 0; i < LtarjetaCredito.size(); i++) {
											System.out.println(i);
											out.println("<option value=" + LtarjetaCredito.get(i).getIdTarjetaCredito() + "> " +  LtarjetaCredito.get(i).getNombreTarjeta()  + " </option>");
						
										} // fin while 
										out.println("</SELECT>");
									%> </td>
							</tr>
							<tr>
								<td><label> Fecha de emision :</label></td>
								<td><input type="date" name="fecha"> </td>
							</tr>
							<tr>
								<td><label>Limite de credito :</label></td>
								<td>input type="text" name="limite"> </td>
							</tr>
							<tr>
								<td><label>Puntos tarjeta : </label></td>
								<td><input type="text" name="puntos"></td>
							</tr>
							<tr>
								<td><input type="button" class="boton"  value="Guardar" onclick="validar()"></td>
								<td><input type="reset" class="boton" value="Restablecer"></td>
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