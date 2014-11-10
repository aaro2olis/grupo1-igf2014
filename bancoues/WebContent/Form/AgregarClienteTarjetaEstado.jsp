<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dao.*" %>
 <%@ page import="dominio.*" %>
 <%@ page import="negocio.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Cliente Tarjeta Estado</title>
</head>
<body>
 <form action="">
 
 Agregar Cliente Tarjeta Estado<br>
 
 Fecha limite de pago <input type="text" name="fecha"><br>
 Balance Actual <input type="text"  name="balance"><br>
 
 <input type="submit" value="Guardar" class="boton">
 <input type="reset" value="Restablecer" class="boton" >
 </form>
</body>
</html>