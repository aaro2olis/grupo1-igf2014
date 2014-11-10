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
<title>Agregar Cliente Tarjeta</title>
</head>
<body>
 <form action="" name="f">
 Agregar cliente Tarjeta <br>
 IdClienteTarjeta <input type="text" name="id"> <br>
 Fecha de emision <input type="text" name="fecha"> <br>
 Limite de credito <input type="text" name="limite"> <br>
 Puntos tarjeta <input type="text" name="puntos"><br>
 <select name="selec">
<option value="1">idtipocliente1
<option value="2">idtipocliente2
 </select><br>
 <input type="button" class="boton"  value="Guardar" onclick="validar()">
 <input type="reset" class="boton" value="Restablecer">
 </form>
</body>
</html>