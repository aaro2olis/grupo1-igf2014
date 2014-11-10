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
String idest=request.getParameter("id");
String establecimiento=request.getParameter("Establecimiento");
String domicilio=request.getParameter("domicilio");
String fecha=request.getParameter("fecha");
String activo=request.getParameter("activo");
short idesta=Short.parseShort(idest);
SimpleDateFormat simple= new SimpleDateFormat("dd/MM/yyyy"); 
Date data = null;
try {
    data = simple.parse(fecha);
} catch (ParseException e) {
    // TODO Auto-generated catch block
mensaje="fecha no valida";
//break;
}  

if(estado){
System.out.println(idest);
System.out.println(establecimiento);
System.out.println(domicilio);
System.out.println(data);
System.out.println(activo);
Establecimiento est=new Establecimiento();
est.setNumReferencia(idesta);
est.setEstablecimiento(establecimiento);
est.setDomicilio(domicilio);
est.setFechIngreso(data);
est.setActivo(activo);
mensaje=Beans.getControl().AgregarEstablecimiento(est);

}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Establecimiento</title>
</head>
<body>
<%= mensaje %><br>
</body>
</html>