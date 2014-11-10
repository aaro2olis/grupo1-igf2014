<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuleft.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuup.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/element.css" media="screen" />
  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dao.*" %>
 <%@ page import="dominio.*" %>
 <%@ page import="negocio.*" %>
 
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
<form action="../Procesos/AgregarTransaccionP.jsp" name="f" method="post">
Agregar Trasaccion <br><br>

<label>Id Transaccion:</label><input type="text" name="idtransaccion"><br>
<label>Fecha de transaccion</label> <input type="date" name="fechat"><br>
<label>Fecha Aplicada</label> <input type="date" name="fechap"><br>
<label>Monto de transaccion</label> <input type="text" name="monto"><br>
<label>idconcepto</label> <input type="text" name="concepto"><br>
<label>idcliente</label> <input type="text" name="cliente"><br>
<label>idpais</label> <input type="text" name="pais"><br>
<label>idtarjetacredito</label> <input type="text" name="tarjeta"><br>
<label>fecha limite de pago</label> <input type="date" name="fechal"><br>
<label>Tipo de transaccion: </label><br>
	<input type="radio" name="tipo" value="c">Cargo<br>
    <input type="radio" name="tipo" value="a">Abono<br>
<input type="button" value="Guardar"  class="boton" onclick="validar()"> 
<input type="reset" value="Restablecer" class="boton">
</form>
</body>
</html>