<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
<!--
function validar() // java script function is created
{
	if (document.f.id.value=="" ) {
		alert("El ID es incorrecto"); //java script message will be display
		document.f.id.focus();
		return false;
	}
	else if (document.f.nombre.value.length < 2) {
		alert("El nombre es incorrecto"); //java script message will be display
		document.f.nombre.focus();
		return false;
	}
	else if (document.f.fecha.value.length < 1) {
		alert("Selecione una fecha"); //java script message will be display
		document.f.fecha.focus();
		return false;
	}
	else
	{
	document.f.submit();
	}
}
function Numeros() {
	 if ((event.keyCode < 48) || (event.keyCode > 57)) 
	  event.returnValue = false;
	}
//-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuleft.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuup.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/element.css" media="screen" />
 <title>Banco Ues - Pais</title>
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
    				 		 Pais
					    </div>
						 <form method="post" name="f" action="PAMtipou.jsp">
						   <table>
						    <tr><td>identificador numerico:</td><td><input type="text" name="id" value=""/></td></tr>
						    <tr><td>Nombre:</td><td><input type="text" name="nombre" value=""/></td></tr>
						     <tr><td>fecha ingreso:</td><td><input type="date" name="fecha" value=""/></td></tr>
						    <tr><td><input type="button" value="Agregar" onclick="validar()" /></td></tr>
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