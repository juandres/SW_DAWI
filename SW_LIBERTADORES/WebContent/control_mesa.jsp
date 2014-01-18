<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-jquery-tags" prefix="sj"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<sj:head/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style type="text/css">
#Contenedor1 {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 40px;
	top: 95px;
}
</style>

<script type="text/javascript">
function oculta(id) {
	var elDiv = document.getElementById(id); //se define la variable "elDiv" igual a nuestro div
	elDiv.style.display = 'none'; //damos un atributo display:none que oculta el div     
}

function muestra(id) {
	var elDiv = document.getElementById(id); //se define la variable "elDiv" igual a nuestro div
	elDiv.style.display = 'block';//damos un atributo display:block que  el div     
}

$(function() {
	//variables de configuración
	var opacidad_inicial = 0.6;
	var opacidad_final = 15;
	var clase_activo = 'boton-activo';
	var clase_boton = 'boton';

	//obtenemos los botones
	var botones = $('.' + clase_boton);
	//apliamos estilos iniciales
	botones.css({
		opacity : opacidad_inicial
	});
	//animación al pasar el mouse
	botones.mouseenter(function() {
		$(this).not('.' + clase_activo).stop().animate({
			//incluir estilos
			opacity : opacidad_final
		});
	}).mouseleave(function() {
		$(this).not('.' + clase_activo).stop().animate({
			//incluir estilos
			opacity : opacidad_inicial
		});
	});
	//agregar clase activa si se hace click
	botones.click(function() {
		botones.not(this).removeClass(clase_activo).trigger('mouseleave');
		$(this).addClass(clase_activo)
	});
});
</script>
	

<link href="METRO\css\metro-bootstrap.css" rel="stylesheet">
<title>.:: CONTROL DE MESAS::.</title>


</head>
<body class="metro">
	<div class="grid fluid"></div>
	<h1 class="fg-darkTeal">CONTROL DE MESAS</h1>
	<div class="row" style="margin-left: 15%;"></div>
	<div class="span7" style="border-right-style: solid; z-index: 100;">
		<br />
		<s:form id="f1">
			<s:hidden id="id" name="id" />


		</s:form>

		<table id="Contenedor1" class="grid fluid">

			<tr>
				<td width="150px" height="70px">Seleccione Ambiente :</td>
			</tr>
			<tr>
				<td><sj:submit id="Restaurant" effect="slide"
						effectDuration="500" cssClass="lightOlive fg-white"
						style='width:170px; height:40px;' value="Restaurant" formIds="f7"
						onClick="muestra('PRestaurant'); oculta('PCanchaFutbol'),oculta('PPiscinaAdulto1'), oculta('PPiscinaAdulto2'),oculta('PPiscinaNiño'),oculta('PCasetaComida'),oculta('PBaloncesto'),oculta('PParque'),oculta('PRecreacion'),oculta('PMicro'),oculta('PTenis'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>

				<td><sj:submit name="pers_cte" id="Futbol" effect="slide"
						style='width:170px; height:40px;' effectDuration="500"
						cssClass="bg-darkBlue fg-white" value="Cancha de Futbol"
						formIds="f1"
						onClick="muestra('PCanchaFutbol'); oculta('PRestaurant'),oculta('PPiscinaAdulto1'), oculta('PPiscinaAdulto2'),oculta('PPiscinaNiño'),oculta('PCasetaComida'),oculta('PBaloncesto'),oculta('PParque'),oculta('PRecreacion'),oculta('PMicro'),oculta('PTenis'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>
			</tr>




			<tr>
				<td width="150px" height="50px"><sj:submit
						id="btnPiscinaAdulto1" effect="slide"
						style='width:170px; height:40px;' effectDuration="500"
						cssClass="bg-grayDarker fg-white" value="Piscina Adulto 1"
						formIds="f1"
						onclick="muestra('PPiscinaAdulto1'); oculta('PRestaurant'),oculta('PCanchaFutbol'), oculta('PPiscinaAdulto2'),oculta('PPiscinaNiño'),oculta('PCasetaComida'),oculta('PBaloncesto'),oculta('PParque'),oculta('PRecreacion'),oculta('PMicro'),oculta('PTenis'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>

				<td><sj:submit id="btnPiscinaAdulto2" effect="slide"
						style='width:170px; height:40px;' effectDuration="500"
						cssClass="bg-darkOrange fg-white" value="Piscina Adulto 2"
						formIds="f1"
						onclick="muestra('PPiscinaAdulto2'); oculta('PRestaurant'),oculta('PCanchaFutbol'), oculta('PPiscinaAdulto1'),oculta('PPiscinaNiño'),oculta('PCasetaComida'),oculta('PBaloncesto'),oculta('PParque'),oculta('PRecreacion'),oculta('PMicro'),oculta('PTenis'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>
			</tr>



			<tr>
				<td><sj:submit id="btnPiscinaInfantil" effect="slide"
						effectDuration="500" cssClass="bg-lightRed  fg-white"
						value="Piscina Infantil" style='width:170px; height:40px;'
						onclick="muestra('PPiscinaNiño'); oculta('PRestaurant'),oculta('PCanchaFutbol'), oculta('PPiscinaAdulto2'),oculta('PPiscinaAdulto1'),oculta('PCasetaComida'),oculta('PBaloncesto'),oculta('PParque'),oculta('PRecreacion'),oculta('PMicro'),oculta('PTenis'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>

				<td><sj:submit id="btnCaseta" effect="slide"
						effectDuration="500" cssClass="bg-amber fg-white"
						style='width:170px; height:40px;' value="Caseta de Comidas"
						formIds="f1"
						onclick="muestra('PCasetaComida'); oculta('PRestaurant'),oculta('PCanchaFutbol'), oculta('PPiscinaAdulto2'),oculta('PPiscinaNiño'),oculta('PPiscinaAdulto1'),oculta('PBaloncesto'),oculta('PParque'),oculta('PRecreacion'),oculta('PMicro'),oculta('PTenis'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>
			</tr>


			<tr>
				<td width="150px" height="50px"><sj:submit id="btnBaloncesto"
						effect="slide" effectDuration="500"
						cssClass="bg-darkTeal fg-white" style='width:170px; height:40px;'
						value="Cancha de Baloncesto" formIds="f1"
						onclick="muestra('PBaloncesto'); oculta('PRestaurant'),oculta('PCanchaFutbol'), oculta('PPiscinaAdulto2'),oculta('PPiscinaNiño'),oculta('PCasetaComida'),oculta('PPiscinaAdulto1'),oculta('PParque'),oculta('PRecreacion'),oculta('PMicro'),oculta('PTenis'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>

				<td><sj:submit id="btnParque" effect="slide"
						effectDuration="500" cssClass="bg-lightTeal fg-white"
						style='width:170px; height:40px;' value="Parque" formIds="f1"
						onclick="muestra('PParque'); oculta('PRestaurant'),oculta('PCanchaFutbol'), oculta('PPiscinaAdulto2'),oculta('PPiscinaNiño'),oculta('PCasetaComida'),oculta('PBaloncesto'),oculta('PPiscinaAdulto1'),oculta('PRecreacion'),oculta('PMicro'),oculta('PTenis'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>
			</tr>


			<tr>
				<td width="150px" height="50px"><sj:submit id="btnRecreacion"
						effect="slide" style='width:170px; height:40px;'
						effectDuration="500" cssClass="bg-lighterBlue fg-white"
						value="Centro de Recreacion" formIds="f1"
						onclick="muestra('PRecreacion'); oculta('PRestaurant'),oculta('PCanchaFutbol'), oculta('PPiscinaAdulto2'),oculta('PPiscinaNiño'),oculta('PCasetaComida'),oculta('PBaloncesto'),oculta('PParque'),oculta('PPiscinaAdulto1'),oculta('PMicro'),oculta('PTenis'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>

				<td><sj:submit id="btnMicro" effect="slide"
						style='width:170px; height:40px;' effectDuration="500"
						cssClass="bg-lightGreen fg-white" value="Cancha de Micro"
						formIds="f1"
						onclick="muestra('PMicro'); oculta('PRestaurant'),oculta('PCanchaFutbol'), oculta('PPiscinaAdulto2'),oculta('PPiscinaNiño'),oculta('PCasetaComida'),oculta('PBaloncesto'),oculta('PParque'),oculta('PRecreacion'),oculta('PPiscinaAdulto1'),oculta('PTenis'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>
			</tr>


			<tr>
				<td width="150px" height="50px"><sj:submit id="btnTenis"
						effect="slide" style='width:170px; height:40px;'
						effectDuration="500" cssClass="bg-lightRed fg-white"
						value="Cancha de Tenis" formIds="f1"
						onclick="muestra('PTenis'); oculta('PRestaurant'),oculta('PCanchaFutbol'), oculta('PPiscinaAdulto2'),oculta('PPiscinaNiño'),oculta('PCasetaComida'),oculta('PBaloncesto'),oculta('PParque'),oculta('PRecreacion'),oculta('PMicro'),oculta('PPiscinaAdulto1'),oculta('PConvenciones')"
						targets="resultado_busqueda_mesas" /></td>

				<td><sj:submit id="btnConvencion"
						style='width:170px; height:40px;' effect="slide"
						effectDuration="500" cssClass="bg-lightPink fg-white"
						value="Centro de Convenciones" formIds="f1"
						onclick="muestra('PConvenciones'); oculta('PRestaurant'),oculta('PCanchaFutbol'), oculta('PPiscinaAdulto2'),oculta('PPiscinaNiño'),oculta('PCasetaComida'),oculta('PBaloncesto'),oculta('PParque'),oculta('PRecreacion'),oculta('PMicro'),oculta('PTenis'),oculta('PPiscinaAdulto1')"
						targets="resultado_busqueda_mesas" /></td>

			</tr>








			<tr>
				<td>Libres:&nbsp;</td>
				<td><div class="input-control text" data-role="input-control">


					</div></td>
			</tr>


			<tr>
				<td>Ocupados:&nbsp;</td>
				<td><div class="input-control text"></div></td>
			</tr>


			<tr>
				<td>.</td>
			<tr>
			<tr>
				<td>.</td>
			<tr>
			<tr>
				<td align="center"><sj:submit value="Modificar Orden"
						formIds="f2" cssClass="icon-plus-2 fg-black bg-lime"
						style='width:210px; height:60px;'
						targets="resultado_modificar_orden" /></td>
			</tr>



			<tr>
				<td colspan="5">
					<table align=center>
						<tr>
							<td>.</td>
						<tr>
						<tr>
							<td>.</td>
						<tr>
						<tr>
							<td>.</td>
						<tr>
						<tr>
							<td><input type=submit id="2" value="OCUPADO"
								style="background: red; height: 50px; width: 200px;" /></td>

							<td><input type=submit id="2" value="DESOCUPADO"
								style="background: #00FF5A; height: 50px; width: 200px;" /></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div id="resultado_modificar_orden"></div>


	</div>


</body>




<style type="text/css">
#PRestaurant {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 150px;
}

#PCanchaFutbol {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

#PPiscinaAdulto1 {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

#PPiscinaAdulto2 {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

#PPiscinaNiño {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

#PCasetaComida {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

#PBaloncesto {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

#PParque {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

#PRecreacion {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

#PMicro {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

#PTenis {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

#PConvenciones {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 595px;
	top: 210px;
}

.boton {
	width: 100px;
	height: 100px;
	effectDuration: 500px;
}
</style>

	


<body>





	<div id="PRestaurant">

		<table>

			<tr>




				<td><input type=submit id="1" class=boton value="1"
					style="background: #00FF5A;" /></td>

				<td><input type=submit id="1" class=boton value="2"
					style="background: #00FF5A;" /></td>

				<td><input type=submit id="1" class=boton value="3"
					style="background: #00FF5A;" /></td>

				<td><input type=submit id="1" class=boton value="4"
					style="background: #00FF5A;" /></td>

				<td><input type=submit id="1" class=boton value="5"
					style="background: #00FF5A;" /></td>

				<td><input type=submit id="1" class=boton value="6"
					style="background: #00FF5A;" /></td>

			</tr>




			<tr>



				<td><input type=submit id="1" class=boton value="7"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="8"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="9"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="10"
					style="background: #00FF5A;" /></td>

				<td><input type=submit id="1" class=boton value="11"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="12"
					style="background: #00FF5A;" /></td>
			</tr>



			<tr>

				<td><input type=submit id="1" class=boton value="13"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="14"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="15"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="16"
					style="background: #00FF5A;" /></td>

				<td><input type=submit id="1" class=boton value="17"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="18"
					style="background: #00FF5A;" /></td>

			</tr>
			<tr>

				<td><input type=submit id="1" class=boton value="19"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="20"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="21"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="22"
					style="background: #00FF5A;" /></td>

				<td><input type=submit id="1" class=boton value="23"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="24"
					style="background: #00FF5A;" /></td>

			</tr>

			<tr>

				<td><input type=submit id="1" class=boton value="25"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="26"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="27"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="28"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="29"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="30"
					style="background: #00FF5A;" /></td>
		</table>
	</div>

	<div id="PCanchaFutbol">
		<table>
			<tr>
				<td><input type=submit id="1" class=boton value="31"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="32"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="33"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="34"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="35"
					style="background: #00FF5A;" /></td>
			</tr>



		</table>

	</div>


	<div id="PPiscinaAdulto1">
		<table>
			<tr>
				<td><input type=submit id="1" class=boton value="36"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="37"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="38"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="39"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="40"
					style="background: #00FF5A;" /></td>
			</tr>

			<tr>
				<td><input type=submit id="1" class=boton value="41"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="42"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="43"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="44"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="45"
					style="background: #00FF5A;" /></td>
			</tr>




		</table>
	</div>

	<div id="PPiscinaAdulto2">
		<table>
			<tr>
				<td><input type=submit id="1" class=boton value="46"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="47"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="48"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="49"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="50"
					style="background: #00FF5A;" /></td>
			</tr>

			<tr>
				<td><input type=submit id="1" class=boton value="51"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="52"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="53"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="54"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="55"
					style="background: #00FF5A;" /></td>
			</tr>




		</table>
	</div>

	<div id="PPiscinaNiño">
		<table>

			<tr>
				<td><input type=submit id="1" class=boton value="56"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="57"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="58"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="59"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="60"
					style="background: #00FF5A;" /></td>
			</tr>




		</table>
	</div>


	<div id="PCasetaComida">
		<table>
			<tr>
				<td><input type=submit id="1" class=boton value="61"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="62"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="63"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="64"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="65"
					style="background: #00FF5A;" /></td>
			</tr>


			<tr>
				<td><input type=submit id="1" class=boton value="66"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="67"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="68"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="69"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="70"
					style="background: #00FF5A;" /></td>
			</tr>

			<tr>
				<td><input type=submit id="1" class=boton value="71"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="72"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="73"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="74"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="75"
					style="background: #00FF5A;" /></td>
			</tr>

			<tr>
				<td><input type=submit id="1" class=boton value="76"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="77"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="78"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="79"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="80"
					style="background: #00FF5A;" /></td>
			</tr>



		</table>
	</div>

	<div id="PBaloncesto">
		<table>
			<tr>
				<td><input type=submit id="1" class=boton value="81"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="82"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="83"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="84"
					style="background: #00FF5A;" /></td>

			</tr>





		</table>
	</div>

	<div id="PParque">
		<table>
			<tr>
				<td><input type=submit id="1" class=boton value="85"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="86"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="87"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="88"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="89"
					style="background: #00FF5A;" /></td>
			</tr>

			<tr>
				<td><input type=submit id="1" class=boton value="90"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="91"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="92"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="93"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="94"
					style="background: #00FF5A;" /></td>
			</tr>

			<tr>
				<td><input type=submit id="1" class=boton value="95"
					style="background: #00FF5A;" /></td>

			</tr>



		</table>
	</div>

	<div id="PRecreacion">
		<table>

			<tr>
				<td><input type=submit id="1" class=boton value="96"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="97"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="98"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="99"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="100"
					style="background: #00FF5A;" /></td>
			</tr>

			<tr>
				<td><input type=submit id="1" class=boton value="101"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="102"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="103"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="104"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="105"
					style="background: #00FF5A;" /></td>
			</tr>




		</table>
	</div>


	<div id="PMicro">
		<table>

			<tr>
				<td><input type=submit id="1" class=boton value="106"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="107"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="108"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="109"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="110"
					style="background: #00FF5A;" /></td>
			</tr>



		</table>
	</div>


	<div id="PTenis">
		<table>
			<tr>
				<td><input type=submit id="1" class=boton value="111"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="112"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="113"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="114"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="115"
					style="background: #00FF5A;" /></td>
			</tr>




		</table>
	</div>

	<div id="PConvenciones">
		<table>
			<tr>
				<td><input type=submit id="1" class=boton value="116"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="117"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="118"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="119"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="120"
					style="background: #00FF5A;" /></td>
			</tr>
			<tr>
				<td><input type=submit id="1" class=boton value="121"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="122"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="123"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="124"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="125"
					style="background: #00FF5A;" /></td>
			</tr>
			<tr>
				<td><input type=submit id="1" class=boton value="126"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="127"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="128"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="129"
					style="background: #00FF5A;" /></td>
				<td><input type=submit id="1" class=boton value="130"
					style="background: #00FF5A;" /></td>
			</tr>



		</table>
	</div>








</body>