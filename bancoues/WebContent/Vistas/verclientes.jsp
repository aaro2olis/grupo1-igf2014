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
<title>Vista de clientes</title>
</head>
<body>
<table border="1"> 
<tr> 
<td>idCliente</td> 
<td>nombre</td> 
<td>apellido</td> 
<td>direccion</td> 
<td>telefono</td> 
<td>email</td> 
<td>fecha de nacimiento</td>

</tr> 
<% 
List<Cliente> lista = Beans.getConsultas().getListaCliente(); 
String url="PCliente.jsp?id=";
for (int i=0;i<lista.size();i++) 
{ %>
<tr> 
<td><%=lista.get(i).getIdCliente() %></td> 
<td><%=lista.get(i).getNombClient() %></td> 
<td><%=lista.get(i).getApellidoClient() %></td> 
<td><%=lista.get(i).getDireccion() %></td>
<td><%=lista.get(i).getTelefono() %></td> 
<td><%=lista.get(i).getEmail() %></td> 
<td><%=lista.get(i).getFechaNacimiento() %></td> 

<td><a href="<%=url+lista.get(i).getIdCliente() %>">portafolio</a> </td>
</tr>
<%} 
%>
</body>
</html>