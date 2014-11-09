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
String id=request.getParameter("id");
String nombre=request.getParameter("nombre");
String fecha=request.getParameter("fecha");
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
Beans.getControl().AgregarTipoCliente(new Tipocliente(id,nombre,data));
mensaje ="El cliente fue agregado con exito";
}

/*int agno = Integer.parseInt(request.getParameter("anyo")) ;
 CtrlPlanilla nomina = new CtrlPlanilla();
	 List empleados = nomina.daEmpleados(agno);
 int numeroEmpleados = empleados.size();
 
	 if (empleados.isEmpty())
		 mensaje = "No Hay Empleados";
	 else {
		 Empleado empActual;
		 for (int i=0; i < numeroEmpleados; i++) {
			 empActual = (Empleado) empleados.get(i);
			 mensaje += ("Nombre: "+ empActual.getNombre()+ ", " + 
			                         empActual.getApellido()+
					     " Salario: " + (empActual.getSalario()== null? 0.0: empActual.getSalario())+ 
					     "  Jefe:  " + empActual.getJefe() + 
					     " Comision: " + (empActual.getComision()== null? 0.0: empActual.getComision()) + 
					     "<br>");
		 }
	 }*/
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