<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuleft.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuup.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/element.css" media="screen" />
  <script type="text/javascript">
<!--
function validar() // java script function is created
{
	if (document.p.id.value=="" ) {
		alert("El ID es incorrecto"); //java script message will be display
		document.p.id.focus();
		return false;
	}
	else if (document.p.nombre.value.length < 2) {
		alert("El nombre es incorrecto"); //java script message will be display
		document.p.nombre.focus();
		return false;
	}
	else if (document.p.fecha.value.length < 1) {
		alert("Selecione una fecha"); //java script message will be display
		document.p.fecha.focus();
		return false;
	}
	else
	{
	document.p.submit();
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

<form method="post" name ="p"action="../Procesos/PTipoCliente.jsp">

	<p>tipo Cliente</p>

	<label for="id">ID</label> <input type="text" name="id" onkeypress="Numeros()"/></br> 
	<label>Nombre del tipo</label> <input type="text" name="nombre" onkeypress="Nombres()"/></br> 
	<label>fecha</label>
	<input type="date" name="fecha" /></br> 
	<input type="button" value="Guardar" class="boton" onclick="validar()"/> 
	<input type="reset" value="Restablecer" class="boton" />

</form>
