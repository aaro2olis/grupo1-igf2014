<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="../css/menuleft.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="../css/menuup.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="../css/element.css" media="screen" />
<title>Banco Ues - Agregar Concepto </title>
</head>
<!--[if IE]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]--><body>
  		<div id="wrapper">
      		<header>
    			<div id="logo"></div>
    			<h1>&nbsp;</h1>    		
            	<nav>
        			<div id="cssmenu">
        			</div>
        			</nav>
    		</header>
			<section>
			<article style="margin-left:15%;">
					 	<div id="divname"> 
					 	Agregar concepto
					 	</div>
  						
					<form action="../Procesos/AgregarConceptoP.jsp" method="post" name="AgregaConcepto">
					<table>
  							<tr>
								<td><label>ID del concepto Concepto:</label></td>
								<td><input type="text" name="id"></td>
							</tr>
							<tr>
							   <td><label>Descripcion del Concepto:</label></td>
							   <td><input type="text" size=45 name="descripcion"/></td>
							</tr>
							<tr>
								<td><input type="submit" value="Guardar" class="boton" /> </td>
							   <td><input type="reset" value="Restablecer" class="boton" /></td>
							</tr>
						</table>
					</form>
					</article>
		</section>
		<footer>
			<br />
		<ul>
					<li><a href='index.html'><img src="../img/help1.png" onmouseover="this.src='../img/help2.png';" onmouseout="this.src='../img/help1.png';" name="Ayuda" /></a></li>
					<li><a href='index.html'><img src="../img/email1.png" onmouseover="this.src='../img/email2.png';" onmouseout="this.src='../img/email1.png';" name="Ayuda"/></a></li>
				</ul>	
		</footer>
	</div>
</body>
</html>
