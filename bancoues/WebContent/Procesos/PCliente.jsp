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
String fecha=request.getParameter("fecha");
String apellido=request.getParameter("apellido");
String email=request.getParameter("email");
String direccion=request.getParameter("direccion");
String tipo=request.getParameter("tipo");
String telefono=request.getParameter("telefono");
System.out.println(id);
System.out.println(nombre);
System.out.println(tipo);

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
System.out.println(id);
System.out.println(nombre);
System.out.println(data);
Cliente cliente=new Cliente();
cliente.setNombClient(nombre);
cliente.setApellidoClient(apellido);
cliente.setFechaNacimiento(data);
cliente.setEmail(email);
cliente.setDireccion(direccion);
cliente.setIdCliente(id);
cliente.setTelefono(telefono);
cliente.setTipocliente(Beans.getConsultas().getTipoCliente(tipo));

mensaje=Beans.getControl().AgregarCliente(cliente);

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