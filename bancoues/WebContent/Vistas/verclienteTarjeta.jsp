<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ page import="java.util.*" %> 
      <%@ page import="java.text.*" %> 
<%@ page import="dao.*" %> 
<%@ page import="dominio.*" %>
<%@ page import="negocio.*" %>
<%@ page import="java.math.BigDecimal" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vista de ClienteTarjeta</title>
</head>
<body>
<table border="1"> 
<tr> 

<td>idClienteTarjeta</td> 
<td>Fecha Emision</td> 
<td>limite de credito</td> 
<td>Puntos Tarjeta</td> 

<% 
List<Clientetarjeta> lista = Beans.getConsultas().getListaClienteTarjeta(); 
String url="PCliente.jsp?id=";
for (int i=0;i<lista.size();i++) 
{ %>
<tr> 

<td><%=lista.get(i).getId() %></td> 
<td><%=lista.get(i).getFechaEmision() %></td> 
<td><%=lista.get(i).getLimiteCredito() %></td>
<td><%=lista.get(i).getPuntosTarjeta() %></td> 


<td><a href="<%=url+lista.get(i).getId() %>">portafolio</a> </td>
</tr>
<%} 
%>
</tr> 
</body>
</html>