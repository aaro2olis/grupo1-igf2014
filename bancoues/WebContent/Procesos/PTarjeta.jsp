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
int id=Integer.parseInt(request.getParameter("id"));
String nombre=request.getParameter("nombre");
BigDecimal min=new BigDecimal(request.getParameter("limMin"));
BigDecimal max=new BigDecimal(request.getParameter("limMax"));
String fecha=request.getParameter("fecha");
String nombree=request.getParameter("nEmisor");
BigDecimal tasa=new BigDecimal(request.getParameter("tasa"));
String telefono=request.getParameter("telefono");


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
System.out.println(min);
System.out.println(max);
System.out.println(data);
Tarjetacredito tar=new Tarjetacredito();
tar.setIdTarjetaCredito(id);
tar.setFechaIngreso(data);
tar.setLimiteCreditoMax(max);
tar.setNombreTarjeta(nombre);
tar.setLimiteCreditoMin(min);
tar.setTasaInteres(tasa);
tar.setNombreEmisor(nombree);
mensaje=Beans.getControl().AgregarTarjeta(tar);

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