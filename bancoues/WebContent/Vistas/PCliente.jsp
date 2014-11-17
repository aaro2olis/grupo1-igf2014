<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<title>Insert title here</title>
</head>
<body>
<%int id=Integer.parseInt(request.getParameter("id"));
Cliente cliente=Beans.getConsultas().getCliente(id);

%>
<p>Cliente:<%=cliente.getNombClient()+ " " + cliente.getApellidoClient() %></p>

<p><a href="#">editar datos</a> </p>
<p><a href="#">ver tarjetas </a> </p>
<p><a href="#">ver trasacciones</a> </p>
</body>
</html>