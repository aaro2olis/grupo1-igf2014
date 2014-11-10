<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %> 
    <%@ page import="java.text.*" %> 
<%@ page import="dao.*" %> 
<%@ page import="dominio.*" %>
<%@ page import="negocio.*" %>
<%@ page import="java.math.BigDecimal" %>
<%! String mensaje = "" ; %>

<%
boolean estado=true;
String id=request.getParameter("id");
String nombre=request.getParameter("nombre");
short id1=Short.parseShort(id);
if(estado){
System.out.println(id1);
System.out.println(nombre);
Pais pa=new Pais(id1,nombre);
mensaje=Beans.getControl().AgregarPais(pa);

}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Pais</title>
</head>
<body>
 <%= mensaje %><br>
</body>
</html>