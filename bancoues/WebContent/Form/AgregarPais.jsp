<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuleft.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/menuup.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/element.css" media="screen" />
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
<form action="../Procesos/AgregarPaisP.jsp" method="post" name="AgregaPais">
<label>ID del Pais     :</label><input type="text" name="id" onkeypress="Numeros()"><br>
<label>Nombre del Pais :</label><input type="text" name="nombre"><br>
<input type="submit" value="Guardar" class="boton"  onclick="validar()"/> 
<input type="reset" value="Restablecer" class="boton" />
</form>