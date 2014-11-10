
<script type="text/javascript">
<!--
function validar() // java script function is created
{
	if (document.AgregarTarjetaCredito.id.value=="" ) {
		alert("El ID es incorrecto"); //java script message will be display
		document.AgregarTarjetaCredito.id.focus();
		return false;
	}
	else if (document.AgregarTarjetaCredito.nombre.value.length < 2) {
		alert("El nombre de la tarjeta es incorrecto"); //java script message will be display
		document.AgregarTarjetaCredito.nombre.focus();
		return false;
	}
	else if (document.AgregarTarjetaCredito.limtMin.value ==""){
		alert("El limite minimo es incorrecto"); //java script message will be display
		document.AgregarTarjetaCredito.limtMin.focus();
		return false;
	}
	else if ((document.AgregarTarjetaCredito.limitMax.value =="") || (document.AgregarTarjetaCredito.limtMin.value > document.AgregarTarjetaCredito.limitMax.value)) {
		alert("El limite maximo es incorrecto"); //java script message will be display
		document.AgregarTarjetaCredito.limitMax.focus();
		return false;
	}
	else if (document.AgregarTarjetaCredito.fecha.value.length < 1) {
		alert("Seleccione una fecha"); //java script message will be display
		document.AgregarTarjetaCredito.fecha.focus();
		return false;
	}
	else if (document.AgregarTarjetaCredito.nEmisor.value.length < 2) {
		alert("El nombre de emisor es incorrecto"); //java script message will be display
		document.AgregarTarjetaCredito.nEmisor.focus();
		return false;
	}
	else if (document.AgregarTarjetaCredito.tasa.value=="") {
		alert("La tasa es incorrecta"); //java script message will be display
		document.AgregarTarjetaCredito.tasa.focus();
		return false;
	}
	else
	{
	document.AgregarTarjetaCredito.submit();
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
<form action="../Procesos/PTarjeta.jsp" method="post" name="AgregarTarjetaCredito">
<label>Id de la Tarjeta de Credito:</label><input type="text" name="id" onkeypress="Numeros()"><br>
<label>Nombre de la tarjeta de credito:<input type="text" size=45 name="nombre" onkeypress="Nombres()"><br>
<label>Limite Minimo de Credito de la Tarjeta :</label><input type="text" size=10 name="limMin"> <br>
<label>Limite Maximo de Credito de la Tarjeta :</label><input type="text" size=10 name="limMax"> <br>
<label>Fecha de Ingreso:</label> <input type="date" name="fecha" /></br>
<label>Nombre del emisor:</label> <input type="text" name="nEmisor" size=45 onkeypress="Nombres()"/></br>
<label>Tasa de interes:</label> <input type="text" name="tasa" size=10 onkeypress="Numeros()"/></br> 
<input type="button" value="Guardar" class="boton" onclick="validar()" /> 
<input type="reset" value="Restablecer" class="boton" />
</form>