<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="dao.*" %>
 <%@ page import="dominio.*" %>
 <%@ page import="negocio.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Transaccion</title>
</head>
<body>
Agregar Trasaccion <br>

Id Transaccion <input type="text" name="idtransaccion"><br>
Fecha de transaccion <input type="text" name="fechatrans"><br>
Fecha Aplicada <input type="text" name="fechaplic"><br>
Monto de transaccion <input type="text" name="monto"><br>
Cargo <input type="text" name="cargo"><br>
Abono <input type="text" name="abono"> <br>
<input type="submit" value="Guardar"  class="boton"> 
<input type="reset" value="Restablecer" class="boton">
</body>
</html>