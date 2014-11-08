<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuleft.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuup.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/element.css" media="screen" />
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--[if lt IE 9]> modificaicon
			<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script> 
		< ![endif]-->
	
    <title>Banco UES</title>
    
    <!--[if IE]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]--><body>
  		<div id="wrapper">
      		<header>
    			<div id="logo"></div>
    			<h1>&nbsp;</h1>    		
            	<nav>
        			<div id="cssmenu">
                		 <ul>
            	 			 <li><a href='index.html' class='icon-home' title ='inicio'><span>Inicio</span></a></li>
                             <li class="has-sub"><a href="paginas/producto_leche.html" class='icon-productos'><span>Opcion1</span></a>
                              	 <ul>
                                    <li class='last'><a href='logindialog.html'><span>Hola. Inicia Sesion</span></a></li>
                                    <li class='last'><a href="paginas/nuevousuario.html"><span>Registrarme</span></a></li>
                                 </ul>
							 </li>
       						 <li class='has-sub'><a href='DEFAULT.ASP' class="icon-usuario"><span>Usuario </span></a>
                                <ul>
                                   <li class='last'><a href='logindialog.html'><span>Hola. Inicia Sesion</span></a></li>
                                       <li class='last'><a href="paginas/nuevousuario.html"><span>Registrarme</span></a></li>
						               <li class='last'><a href='logindialog.html'><span>opcion3</span></a></li>
									   <li class='last'><a href='logindialog.html'><span>opcion4</span></a></li>
																													                                           <li class='last'><a href='logindialog.html'><span>Hola. Inicia Sesion</span></a></li>
                                    </ul>
                                 </li>
                          		
                   			 </ul>
        				 </div>
            		</nav>
    		</header>
			<section>
    				 <aside>
					 		<div id="divname">
								 Menú
								
							</div>
    				 		<ul>
                               <li><a href="#">Opcion1</a></li>
                               <li><a href="#">Opcion2</a></li>
                               <li><a href="#">Opcion3</a></li>
                               <li><a href="#">Opcion4</a></li>
                			</ul>
    				 </aside>
    				 <article>
					 	<div id="divname"> 
    				 		  Contenido
					    </div>
							 
					 <form method="post" action="recoger_datos.php">
					<table>
						<th>Cliente</th>
						<tr>
							<td><label for="idcliente" >ID</label></td>
						   <td><input type="text" size="30" name="idcliente" class="rounded"/></td>
						</tr>
						<tr>
							<td><label for="nombres" >Nombres</label></td>
						   <td><input type="text" size="80" name="nombres" class="rounded"/></td>
						</tr>
						<tr>
							   <td><label for="apellidos">Apellidos</label></td>
							   <td><input type="text" size="80" name="apellidos" /></td>
						</tr>
						<tr>
							<td><label for="direccion">Direcci&oacute;n</label></td>
							<td><input type="text"size="100" name="direccion" /></td>
						</tr>
						<tr>
							<td><label for="telefono">Tel&eacute;fono</label></td>
							<td><input type="text" name="telefono" /></td>
						</tr>
						<tr>
							<td><label for="fechana">Fecha nacimiento</label></td>
							<td><input type="text" size="20" name="fechana" /></td>
						</tr>
						<tr>
							<td><label for="email">E-mail </label></td>	
							<td><input type="text" size="20" name="email"/></td>
						</tr>
						<tr>
							<td><label for="tipocliente" >Tipo Cliente</label></td>
							<td><select  name="tipocliente" >
        							<option>Ahuachapan</option>
        							<option>Santa Ana</option>
        							<option>Sonsonate</option>
        							<option>La Libertad </option>
        							<option>San Salvador</option>
        						</select></td>
        				</tr>
        				<tr>
        					<td>&nbsp;</td>	
							<td><input type="submit" value="Guardar" class="boton"/>
								<input type="reset" value="Restablecer" class="boton"/></td>
						</tr>				
					</table>
				</form>
			</article>
		</section>
	<footer>
		<br />
		<ul>
			<li><a href='index.html'><img src="img/help1.png" onmouseover="this.src='img/help2.png';" onmouseout="this.src='img/help1.png';" name="Ayuda" /></a></li>
			<li><a href='index.html'><img src="img/email1.png" onmouseover="this.src='img/email2.png';" onmouseout="this.src='img/email1.png';" name="Ayuda"/></a></li>
		</ul>		
	</footer>
</div>
 </body>
</html>