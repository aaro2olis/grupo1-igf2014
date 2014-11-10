<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="dao.*"%>
<%@ page import="dominio.*"%>
<%@ page import="negocio.*"%>
<%@ page import="java.math.BigDecimal"%>

<%! String mensaje = "";%>

<%
	String id = request.getParameter("id");
	String nombre = request.getParameter("nombre");
	String limtMinimo = request.getParameter("limtMin");
	String limtMaximo = request.getParameter("limtMax");
	String fecha = request.getParameter("fecha");
	String nombreEmisor = request.getParameter("nEmisor");
	String tasa = request.getParameter("tasa");

	SimpleDateFormat simple = new SimpleDateFormat("dd/MM/yyyy");
	Date data = null;
	try {
		data = simple.parse(fecha);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		mensaje = "fecha no valida";
		//break;
	}
	
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>