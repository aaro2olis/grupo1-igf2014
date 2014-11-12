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
<title>Vista de concepto</title>
</head>
<body>
<table border="1"> 
<tr> 
<td>idConcepto</td> 
<td>nombre</td> 


</tr> 
<% 
List<Concepto> lista = Beans.getConsultas().getListaConcepto(); 
//String url="PCliente.jsp?id=";
for (int i=0;i<lista.size();i++) 
{ %>
<tr> 
<td><%=lista.get(i).getIdConcepto() %></td> 
<td><%=lista.get(i).getDescripcion() %></td> 
</tr>
<%} 
%>
</body>
</html>