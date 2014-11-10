<%@page import="org.springframework.context.annotation.Bean"%>
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
    String idConcepto=request.getParameter("id");
    String descripcion=request.getParameter("descripcion");
    Integer idcon=Integer.parseInt(idConcepto);
    if(estado){
    	System.out.println(idcon);
    	System.out.println(descripcion);
    	Concepto con=new Concepto();
    	
    	con.setIdConcepto(idcon);
    	con.setDescripcion(descripcion);
    	mensaje=Beans.getControl().AgregarConcepto(con);

    	}
    
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Concepto</title>
</head>
<body>
 <%= mensaje %><br>
</body>
</html>