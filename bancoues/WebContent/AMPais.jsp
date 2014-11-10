<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	else if (document.f.nombre.value.length < 2) {
		alert("El nombre es incorrecto"); //java script message will be display
		document.f.nombre.focus();
		return false;
	}
	else if (document.f.fecha.value.length < 1) {
		alert("Selecione una fecha"); //java script message will be display
		document.f.fecha.focus();
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
//-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form method="post" name="f" action="PAMtipou.jsp">
   <table>
    <tr><td>identificador numerico:</td><td><input type="text" name="id" value=""/></td></tr>
    <tr><td>Nombre:</td><td><input type="text" name="nombre" value=""/></td></tr>
     <tr><td>fecha ingreso:</td><td><input type="date" name="fecha" value=""/></td></tr>
    <tr><td><input type="button" value="Agregar" onclick="validar()"/></td></tr>
   </table>
  </form>
</body>
</html>