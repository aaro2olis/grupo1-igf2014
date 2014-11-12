<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	 <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" />
	  <link rel="stylesheet" type="text/css" href="../css/menuleft.css" media="screen" />
	  <link rel="stylesheet" type="text/css" href="../css/menuup.css" media="screen" />
	  <link rel="stylesheet" type="text/css" href="../css/element.css" media="screen" />
	<title>Banco Ues -Agregar tarjeta de credito </title>
<script type="text/javascript">
<!--
function validar() // java script function is created
{
	if (document.AgregarTarjetaCredito.id.value=="" ) {
		alert("El ID es incorrecto"); //java script message will be display
		document.AgregarTarjetaCredito.id.focus();
		return false;
	}
	else if (document.AgregarTarjetaCredito.nombre.value.length < 2) {
		alert("El nombre de la tarjeta es incorrecto"); //java script message will be display
		document.AgregarTarjetaCredito.nombre.focus();
		return false;
	}
	else if (document.AgregarTarjetaCredito.limtMin.value ==""){
		alert("El limite minimo es incorrecto"); //java script message will be display
		document.AgregarTarjetaCredito.limtMin.focus();
		return false;
	}
	else if ((document.AgregarTarjetaCredito.limitMax.value =="") || (document.AgregarTarjetaCredito.limtMin.value > document.AgregarTarjetaCredito.limitMax.value)) {
		alert("El limite maximo es incorrecto"); //java script message will be display
		document.AgregarTarjetaCredito.limitMax.focus();
		return false;
	}
	else if (document.AgregarTarjetaCredito.fecha.value.length < 1) {
		alert("Seleccione una fecha"); //java script message will be display
		document.AgregarTarjetaCredito.fecha.focus();
		return false;
	}
	else if (document.AgregarTarjetaCredito.nEmisor.value.length < 2) {
		alert("El nombre de emisor es incorrecto"); //java script message will be display
		document.AgregarTarjetaCredito.nEmisor.focus();
		return false;
	}
	else if (document.AgregarTarjetaCredito.tasa.value=="") {
		alert("La tasa es incorrecta"); //java script message will be display
		document.AgregarTarjetaCredito.tasa.focus();
		return false;
	}
	else
	{
	document.AgregarTarjetaCredito.submit();
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
					 	Agregar tarjeta de credito
					 	</div>
						<form action="../Procesos/AgregarTarjetaCreditoP.jsp" method="post" name="AgregarTarjetaCredito">
						<table>
  							<tr>
								<td><label>Id de la Tarjeta de Credito:</label></td>
								<td><input type="text" name="id" onkeypress="Numeros()"></td>
							</tr>
							<tr>
							   <td><label>Nombre de la tarjeta de credito:</label></td>
								<td><input type="text" size=45 name="nombre" onkeypress="Nombres()"></td>
							</tr>
							<tr>
							   <td><label>Limite Minimo de Credito de la Tarjeta :</label></td>
								<td><input type="text" size=10 name="limMin"></td>
							</tr>
							<tr>
							   <td><label>Limite Maximo de Credito de la Tarjeta :</label></td>
								<td><input type="text" size=10 name="limMax"></td>
							</tr>
							<tr>
							   <td><label>Fecha de Ingreso:</label></td>
								<td> <input type="date" name="fecha" /></td>
							</tr>
							<tr>
							   <td><label>Nombre del emisor:</label></td>
								<td> <input type="text" name="nEmisor" size=45 onkeypress="Nombres()"/></td>
							</tr>
							<tr>
							   <td><label>Tasa de interes:</label></td>
								<td> <input type="text" name="tasa" size=10 onkeypress="Numeros()"/></br></td>
							</tr>
							<tr>
							   <td><input type="submit" value="Guardar" class="boton" onclick="validar()" /></td>
							   <td><input type="reset" value="Restablecer" class="boton" /></td>
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