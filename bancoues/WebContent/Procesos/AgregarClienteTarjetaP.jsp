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
Cliente idcliente=request.getParameter("idCliente");
ClientetarjetaId idtarjetacredito=request.getParameter("idtarjetaCredito");
BigDecimal limit=new BigDecimal(request.getParameter("limite"));
String fecha=request.getParameter("fecha");
String puntos=request.getParameter("puntos");
Integer punt=Integer.parseInt(puntos);

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
System.out.println(idcliente);
System.out.println(idtarjetacredito);
System.out.println(data);
System.out.println(limit);
System.out.println(punt);
Clientetarjeta clientar=new Clientetarjeta();
clientar.setFechaEmision(data);
clientar.setLimiteCredito(limit);
clientar.setPuntosTarjeta(punt);
clientar.setCliente(idcliente);
clientar.setId(idtarjetacredito);
mensaje=Beans.getControl().agregarClienteTarjeta(clientar);

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