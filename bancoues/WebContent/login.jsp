
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
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
   <title>Spring-Security Login</title>
  </head>
<body>
  <h3>Spring Security Login</h3>
  <form method="post" name="f" action="j_spring_security_check">
   <table>
    <tr><td>Username:</td><td><input type="text" name="j_username" value=""/></td></tr>
    <tr><td>Password:</td><td><input type="password" name="j_password" value=""/></td></tr>
    <tr><td><input type="button" value="Submit" onclick="validar()"/></td></tr>
   </table>
  </form>
</body>
</html>