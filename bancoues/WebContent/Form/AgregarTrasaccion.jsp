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
<form action="" name="f">
Agregar Trasaccion <br>

Id Transaccion <input type="text" name="idtransaccion"><br>
Fecha de transaccion <input type="text" name="fechatrans"><br>
Fecha Aplicada <input type="text" name="fechaplic"><br>
Monto de transaccion <input type="text" name="monto"><br>
Cargo <input type="text" name="cargo"><br>
Abono <input type="text" name="abono"> <br>
<input type="button" value="Guardar"  class="boton" onclick="validar()"> 
<input type="reset" value="Restablecer" class="boton">
</form>
</body>
</html>