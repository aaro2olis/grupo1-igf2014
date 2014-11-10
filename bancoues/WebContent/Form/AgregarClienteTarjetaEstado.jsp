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
	 if (document.f.fecha.value.length =="") {
		alert("Ingrese una fecha"); //java script message will be display
		document.f.fecha.focus();
		return false;
	}
	else if (document.f.balance.value=="") {
		alert("Ingrese balance"); //java script message will be display
		document.f.balance.focus();
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
<title>Agregar Cliente Tarjeta Estado</title>
</head>
<body>
 <form action="" name="f">
 
 Agregar Cliente Tarjeta Estado<br>
 
 Fecha limite de pago <input type="text" name="fecha"><br>
 Balance Actual <input type="text"  name="balance"><br>
 
 <input type="button" value="Guardar" class="boton" onclick="validar()">
 <input type="reset" value="Restablecer" class="boton" >
 </form>
</body>
</html>