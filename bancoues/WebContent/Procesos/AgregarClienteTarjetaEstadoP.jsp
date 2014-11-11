<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.util.*" %> 
    <%@ page import="java.text.*" %> 
    <%@ page import="java.lang.*" %>
<%@ page import="dao.*" %> 
<%@ page import="dominio.*" %>
<%@ page import="negocio.*" %>
<%@ page import="java.math.BigDecimal" %>
<%! String mensaje = "" ; %>
 <%
boolean estado=true;
String fecha=request.getParameter("fecha");
String balance=request.getParameter("balance");
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
System.out.println(data);
System.out.println(balance);
Clientetarjetaestado cte=new Clientetarjetaestado();

mensaje=Beans.getControl().Agregar;

}
%>   
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar cliente tarjeta estado</title>
</head>
<body>
 <%= mensaje %><br>
</body>
</html>