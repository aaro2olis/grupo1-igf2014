
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuleft.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuup.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/element.css" media="screen" />
  <script type="text/javascript">
<!--
function validar() // java script function is created
{
	if (document.f.j_username.value=="") {
		alert("Ingrese el username "); //java script message will be display
		document.f.j_username.focus();
		return false;
	}
	else if (document.f.j_password.value=="") {
		alert("Ingrese la contraseña"); //java script message will be display
		document.f.j_password.focus();
		return false;
	}
	else
	{
	document.f.submit();
	}
	
}
//-->
</script>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Banco Ues - Login</title>
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
    				 		 Spring Security Login
					    </div>
						 <form method="post" name="f" action="j_spring_security_check">
						   <table>
						    <tr><td>Username:</td><td><input type="text" name="j_username" value=""/></td></tr>
						    <tr><td>Password:</td><td><input type="password" name="j_password" value=""/></td></tr>
						    <tr><td><input type="button" value="Submit" onclick="validar()"/></td></tr>
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