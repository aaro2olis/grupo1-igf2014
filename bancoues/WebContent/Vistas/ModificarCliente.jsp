<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*"%>
<%@ page import="dominio.*"%>
<%@ page import="negocio.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.math.BigDecimal"%>

	<% 
	int id=Integer.parseInt(request.getParameter("id"));
    Cliente cliente=Beans.getConsultas().getCliente(id);
    String nombre = cliente.getNombClient();
    String apellido = cliente.getApellidoClient();
    String direccion = cliente.getDireccion();
    String telefono = cliente.getTelefono();
    String email = cliente.getEmail();
    Date fecha = cliente.getFechaNacimiento();
	String ID= request.getParameter("id");
	%>
	
<form method="post" name="frmcliente" action="../Procesos/PCliente.jsp">

	<p>Cliente</p>

	<label for="id">IDCliente :</label> <input type="text" name="id" value="<%=ID %>" disabled="disabled"/></br> 
	<label>Nombres:</label><input type="text" name="nombre" value="<%=nombre %>"/></br> 
	<label>Apellidos:</label> <input type="text" name="apellido" value="<%=apellido %>"/></br> 
	<label>Direccion: </label> <input type="text" name="direccion" value="<%=direccion %>"/></br> 
	<label>telefono</label> <input type="text" name="telefono" value="<%=telefono %>"/></br> 
	<label>fecha nacimiento</label><input type="date" name="fecha" value="<%=fecha %>" disabled="disabled"/></br> 
	<label>Email</label> <input type="text" name="email" value="<%=email %>"/></br>


	<%
		List<Tipocliente> tipos = Beans.getConsultas()
				.getListaTipoCliente();
		System.out.println(tipos.size());
	%>

	<p>Tipo
	<p>
		<select name='tipo'>
			<%
				for (int i = 0; i < tipos.size(); i++) {
					System.out.println(i);
					out.println("<option value=" + tipos.get(i).getIdTipoCliente()
							+ "> " + tipos.get(i).getDTipoCliente() + " </option>");

				} // fin while 
				out.println("</SELECT>");
			%>
			<input type="button" value="Guardar" class="boton"/>
			<input type="reset" value="Restablecer" class="boton" />
</form>
