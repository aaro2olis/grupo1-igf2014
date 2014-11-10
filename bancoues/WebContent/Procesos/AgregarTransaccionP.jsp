<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %> 
    <%@ page import="java.text.*" %> 
    <%@ page import="java.lang.*" %>
<%@ page import="dao.*" %> 
<%@ page import="dominio.*" %>
<%@ page import="negocio.*" %>
<%@ page import="java.math.BigDecimal" %>
<%! String mensaje =""; %>

<%
boolean estado=true;
String idtran=request.getParameter("idtransaccion");
String fechatran=request.getParameter("fechat");
String fechapli=request.getParameter("fechap");
String monto=request.getParameter("monto");
String  concepto=request.getParameter("concepto");
String  cliente=request.getParameter("cliente");
String  pais=request.getParameter("pais");
String  tarjeta=request.getParameter("tarjeta");
String  fechal=request.getParameter("fechal");
String tipo=request.getParameter("tipo");
Integer id=Integer.parseInt(idtran);
BigDecimal mon=new BigDecimal(monto);


SimpleDateFormat simple= new SimpleDateFormat("dd/MM/yyyy"); 
Date data1 = null;
Date data2 = null;
Date data3= null;
try {
    data1 = simple.parse(fechatran);
    data2 =simple.parse(fechapli);
    data3=simple.parse(fechal);
} catch (ParseException e) {
    // TODO Auto-generated catch block
mensaje="fecha no valida";
//break;
}  
if(estado){
System.out.println(id);
System.out.println(data1);
System.out.println(data2);
System.out.println(mon);
System.out.println(tipo);

Transaccion tran=new Transaccion();
tran.setIdTransaccion(id);
tran.setFechaTransaccion(data1);
tran.setFechaAplicada(data2);
tran.setMonoTransaccion(mon);
String lol="c";

if(  tipo == lol)
{
	tran.setBCargo(tipo);
	tran.setBAbono(null);
}
else
{
	tran.setBAbono(tipo);
	tran.setBCargo(null);
}
mensaje=Beans.getControl().AgregarTransaccion(tran);

}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar transaccion</title>
</head>
<body>
 <%= mensaje %><br>
</body>
</html>