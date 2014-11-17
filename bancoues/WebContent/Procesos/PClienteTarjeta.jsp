<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %> 
      <%@ page import="java.text.*" %> 
<%@ page import="dao.*" %> 
<%@ page import="dominio.*" %>
<%@ page import="negocio.*" %>
<%@ page import="java.math.BigDecimal" %>

<%
String mensaje = ""; 
boolean estado=true;
int tarjeta=Integer.parseInt(request.getParameter("tarjeta"));
int cliente=Integer.parseInt(request.getParameter("cliente"));
BigDecimal limite=new BigDecimal(request.getParameter("limite"));

String fecha=request.getParameter("fecha");
int puntos=Integer.parseInt(request.getParameter("puntos"));



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

Clientetarjeta tar=new Clientetarjeta();

//mensaje=Beans.getControl().AgregarTarjeta(tar);

}


%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar Empleados</title>
</head>
<body>
       <%= mensaje %><br>
</body>
</html>