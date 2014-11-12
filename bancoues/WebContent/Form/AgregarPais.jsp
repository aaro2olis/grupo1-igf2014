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
		<title>Banco Ues -Agregar pais</title>
  <script type="text/javascript">
<!--
function validar() // java script function is created
{
	if (document.AgregaPais.id.value=="" ) {
		alert("El ID es incorrecto"); //java script message will be display
		document.AgregaPais.id.focus();
		return false;
	}
	else if (document.AgregaPais.nombre.value.length < 2) {
		alert("El nombre es incorrecto"); //java script message will be display
		document.AgregaPais.nombre.focus();
		return false;
	}
	
	else
	{
	document.AgregaPais.submit();
	}
}
function Numeros() {
	 if ((event.keyCode < 48) || (event.keyCode > 57)) 
	  event.returnValue = false;
	}
//-->
</script>
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
					 	Agregar pais
					 	</div>
						<form action="../Procesos/AgregarPaisP.jsp" method="post" name="AgregaPais">
						<table>
  							<tr>
								<td><label>ID del Pais:</label></td>
								<td><input type="text" name="id" onkeypress="Numeros()"></td>
							</tr>
							<tr>
							   <td><label>Nombre del Pais :</label></td>
								<td><input type="text" name="nombre"></td>
							</tr>
							<tr>
							   <td><input type="submit" value="Guardar" class="boton"  onclick="validar()"/></td> 
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