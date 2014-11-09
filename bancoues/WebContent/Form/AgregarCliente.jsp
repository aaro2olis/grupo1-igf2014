

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %> 
      <%@ page import="java.text.*" %> 
<%@ page import="dao.*" %> 
<%@ page import="dominio.*" %>
<%@ page import="negocio.*" %>
<%@ page import="java.math.BigDecimal" %>

							 		 <form method="post" action="../Procesos/PCliente.jsp">
				
				<p>	Cliente</p>
					
						<label for="id" >IDCliente</label>
						<input type="text" name="id"/></br>
					
					<label >Nombres:</label>
						  <input type="text"  name="nombre" /></br>
						<label >Apellidos:</label>
						  <input type="text"  name="apellido" /></br>
						  	<label >Direccion: </label>
						  <input type="text"  name="direccion" /></br>
						  	<label >telefono</label>
						  <input type="text"  name="telefono" /></br>
							  <label>fecha nacimiento</label><input type="date"  name="fecha" /></br>
							  	<label >Email</label>
							  	
							  	
						  <input type="text"  name="email" /></br>
						  
						  
						<%
						List<Tipocliente> tipos=Beans.getConsultas().getListaTipoCliente();
						System.out.println(tipos.size());
						%>

<p> Tipo <p> <select name='tipo'><%

for(int i=0;i<tipos.size();i++) { 
System.out.println(i);
out.println("<option value="+tipos.get(i).getIdTipoCliente()+"> "+tipos.get(i).getDTipoCliente()+" </option>"); 

} // fin while 
out.println("</SELECT>");%>
						<input type="submit" value="Guardar" class="boton"/>
								<input type="reset" value="Restablecer" class="boton"/>
				
				</form>
	