<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="dao.*" %>
 <%@ page import="dominio.*" %>
 <%@ page import="negocio.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Cliente Tarjeta</title>
</head>
<body>
 <form action="">
 Agregar cliente Tarjeta <br>
 IdClienteTarjeta <input type="text" name="id"> <br>
 Fecha de emision <input type="text" name="fecha"> <br>
 Limite de credito <input type="text" name="limite"> <br>
 Puntos tarjeta <input type="text" name="puntos"><br>
 
 <input type="submit" name="Guardar"  value="Guardar">
 </form>
</body>
</html>