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
    Integer idn=Integer.parseInt(id);
    BigDecimal limax=new BigDecimal(limtMaximo);
    BigDecimal limin=new BigDecimal(limtMinimo);
    BigDecimal tas=new BigDecimal(tasa);
	SimpleDateFormat simple = new SimpleDateFormat("dd/MM/yyyy");
	Date data = null;
	try {
		data = simple.parse(fecha);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		mensaje = "fecha no valida";
		//break;
	}
	System.out.println(idn);
	System.out.println(nombre);
	System.out.println(limax);
	System.out.println(limin);
	System.out.println(data);
	System.out.println(nombreEmisor);
	System.out.println(tas);
	Tarjetacredito tacre=new Tarjetacredito();
	tacre.setIdTarjetaCredito(idn);
	tacre.setNombreTarjeta(nombre);
	tacre.setLimiteCreditoMax(limax);
	tacre.setLimiteCreditoMin(limin);
	tacre.setFechaIngreso(data);
	tacre.setTasaInteres(tas);
	tacre.setNombreEmisor(nombreEmisor);
	mensaje=Beans.getControl().AgregarTarjetaCredito(tacre);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar tarjeta Credito</title>
</head>
<body>
<%= mensaje %><br>
</body>
</html>