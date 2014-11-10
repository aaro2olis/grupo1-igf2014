<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dao.*" %>
 <%@ page import="dominio.*" %>
 <%@ page import="negocio.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
<!--
function validar() // java script function is created
{
	 if (document.f.fecha.value.length =="") {
		alert("Ingrese una fecha"); //java script message will be display
		document.f.fecha.focus();
		return false;
	}
	else if (document.f.balance.value=="") {
		alert("Ingrese balance"); //java script message will be display
		document.f.balance.focus();
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
function Nombres() {
	 if ((event.keyCode != 32) && (event.keyCode < 65) || (event.keyCode > 90) && (event.keyCode < 97) || (event.keyCode > 122))
	  event.returnValue = false;
	}
//-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Cliente Tarjeta Estado</title>
 <link rel="stylesheet" type="text/css" href="../css/style.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="../css/menuleft.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="../css/menuup.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="../css/element.css" media="screen" />
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
					 	 Agregar Cliente Tarjeta Estado
					 	  </div>
						 <form action="" name="f">
						 
						<br>
						 
						 Fecha limite de pago <input type="text" name="fecha"><br>
						 Balance Actual <input type="text"  name="balance"><br>
						 
						 <input type="button" value="Guardar" class="boton" onclick="validar()">
						 <input type="reset" value="Restablecer" class="boton" >
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