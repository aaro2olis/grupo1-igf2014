<script type="text/javascript">
<!--
function validar() // java script function is created
{
	if (document.AgregaEstablecimiento.id.value=="" ) {
		alert("El ID es incorrecto"); //java script message will be display
		document.AgregaEstablecimiento.id.focus();
		return false;
	}
	else if (document.AgregaEstablecimiento.Establecimiento.value.length < 5) {
		alert("El establecimiento es incorrecto"); //java script message will be display
		document.AgregaEstablecimiento.Establecimiento.focus();
		return false;
	}
	else if (document.AgregaEstablecimiento.domicilio.value.length < 5) {
		alert("El domicilio es incorrecto"); //java script message will be display
		document.AgregaEstablecimiento.domicilio.focus();
		return false;
	}
	else if (document.AgregaEstablecimiento.fecha.value.length < 1) {
		alert("Selecione una fecha"); //java script message will be display
		document.AgregaEstablecimiento.fecha.focus();
		return false;
	}
	else if (document.AgregaEstablecimiento.activo.value=="") {
		alert("Selecione estado Act/Inac"); //java script message will be display
		document.AgregaEstablecimiento.activo.focus();
		return false;
	}
	else
	{
	document.AgregaEstablecimiento.submit();
	}
}
function Numeros() {
	 if ((event.keyCode < 48) || (event.keyCode > 57)) 
	  event.returnValue = false;
	}
//-->
</script>
<form action="" method="post" name="AgregaEstablecimiento">
<label>Numero de referencia:</label><input type="text" name="id" onkeypress="Numeros()"><br>
<label>Establecimiento:</label><br><input type="text" name="Establecimiento" size=35><br>
<label>Domicilio:</label><br><input type="text" size=45 name="domicilio"><br>
<label>Fecha de Ingreso:</label> <input type="date" name="fecha" /></br> 
	<label>Activo : </label><br>
	<input type="radio" name="activo" value="s">Activo<br>
    <input type="radio" name="activo" value="n">No Activo<br>
<input type="button" value="Guardar" class="boton" onclick="validar()" /> 
<input type="reset" value="Restablecer" class="boton" />
</form>