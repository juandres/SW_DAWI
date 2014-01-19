<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-jquery-tags" prefix="sj"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<sj:head />
<link href="METRO\css\metro-bootstrap.css" rel="stylesheet">
<title>.:: REGISTRAR PRODUCTO ::.</title>
<script type="text/javascript">
	function obtenerInsumos(id) {
		document.getElementById("id").value = id;
		document.getElementById("f1").action = 'listarInsumosXCategoria';
		return true;
	}

	function agregarDetalle() {
		var combo = document.getElementById("cboInsumo");
		document.getElementById("codigo").value = combo.value;
		document.getElementById("descripcion").value = combo.options[combo.selectedIndex].text;
		document.getElementById("f2").action = 'anhadirDetalle';
	}

	function registrarProducto() {
		document.getElementById("f2").action = 'registrarProducto';
	}
</script>
</head>
<body class="metro">
	<div class="grid fluid">
		<h1 class="fg-darkTeal">REGISTRO DE PRODUCTO</h1>
		<div class="row" style="margin-left: 2%;">
			<div class="span4" style="border-right-style: solid;">
				<br />
				<s:form id="f1">
					<s:hidden id="id" name="id" />
					<table>
						<tr>
							<td>Insumos:&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><div id="resultado_busqueda_insumos"
									class="input-control select">
									<s:url id="cargarGridInsumos" action="cargarGridInsumos" />
									<sj:select id="cboInsumo" name="codigo_insumo"
										href="%{cargarGridInsumos}" list="grdInsumos" listKey="codigo"
										listValue="descripcion" headerKey=" " headerValue="[Elegir]" />
								</div></td>
						</tr>
					</table>
				</s:form>
				<table class="grid fluid">
					<tr style="padding-bottom: 15px;">
						<td><sj:submit id="btnMenestras" effect="slide"
								effectDuration="500" cssClass="bg-darkRed fg-white"
								value="Menestras" formIds="f1" onclick="obtenerInsumos(2);"
								targets="resultado_busqueda_insumos" /></td>
						<td><sj:submit id="btnVerduras" effect="slide"
								effectDuration="500" cssClass="bg-darkBlue fg-white"
								value="Verduras" formIds="f1" onclick="obtenerInsumos(3);"
								targets="resultado_busqueda_insumos" /></td>
						<td><sj:submit id="btnTuberculos" effect="slide"
								effectDuration="500" cssClass="bg-darkGreen fg-white"
								value="Tuberculos" formIds="f1" onclick="obtenerInsumos(5);"
								targets="resultado_busqueda_insumos" /></td>
						<td><sj:submit id="btnAbarrote" effect="slide"
								effectDuration="500" cssClass="bg-darkOrange fg-white"
								value="Abarrotes" formIds="f1" onclick="obtenerInsumos(4);"
								targets="resultado_busqueda_insumos" /></td>
					</tr>
					<tr>
						<td><sj:submit id="btnBebidas" effect="slide"
								effectDuration="500" cssClass="bg-darkCrimson fg-white"
								value="Bebidas" formIds="f1" onclick="obtenerInsumos(6);"
								targets="resultado_busqueda_insumos" /></td>
						<td><sj:submit id="btnEspecias" effect="slide"
								effectDuration="500" cssClass="bg-amber fg-white"
								value="Especias" formIds="f1" onclick="obtenerInsumos(7);"
								targets="resultado_busqueda_insumos" /></td>
						<td><sj:submit id="btnFrutas" effect="slide"
								effectDuration="500" cssClass="bg-darkTeal fg-white"
								value="Frutas" formIds="f1" onclick="obtenerInsumos(1);"
								targets="resultado_busqueda_insumos" /></td>
						<td><sj:submit id="btnCarnes" effect="slide"
								effectDuration="500" cssClass="bg-darkViolet fg-white"
								value="Carnes" formIds="f1" onclick="obtenerInsumos(8);"
								targets="resultado_busqueda_insumos" /></td>

					</tr>
				</table>
				<br />
				<s:form id="f2">
					<s:hidden id="codigo" name="codigo" />
					<s:hidden id="descripcion" name="descripcion" />
					<table>
						<tr>
							<td>Categoria:&nbsp;&nbsp;</td>
							<td><div class="input-control select">
									<s:url id="listarCategoriaProducto"
										action="listarCategoriaProducto" />
									<sj:select id="cboCategoriaProducto" name="categoria"
										href="%{listarCategoriaProducto}" list="grdCategoriaProducto"
										listKey="codigo" listValue="descripcion" emptyOption="false"
										multiple="true" />
								</div></td>
						</tr>
						<tr>
							<td>Nombre:&nbsp;</td>
							<td><div class="input-control text"
									data-role="input-control">
									<input name="nombre" type="text" value=""
										placeholder="Ejm.: Bisteck a lo Pobre" />
									<button class="btn-clear"></button>
								</div></td>
						</tr>
						<tr>
							<td>Precio:&nbsp;</td>
							<td><div class="input-control text">
									<input name="precio" type="text" value=""
										placeholder="Ejm.: 15.00" />
									<button class="btn-clear"></button>
								</div></td>
						</tr>
					</table>
					<table>
						<tr>
							<td>Cantidad:&nbsp;&nbsp;&nbsp;</td>
							<td><div class="input-control text">
									<input name="cantidad" type="text" placeholder="Ejm.: 5" />
									<button class="btn-clear"></button>
								</div></td>
							<td><sj:submit id="btnAgregar" value="Agregar" formIds="f2"
									cssClass="icon-plus-2 fg-black bg-lime"
									targets="resultado_detalle_producto"
									onclick="agregarDetalle();" /></td>
						</tr>
					</table>
					<div id="resultado_detalle_producto"></div>
					<sj:submit id="btnRegistrar" cssClass="command-button inverse" formIds="f2" value="Registrar" onclick="registrarProducto();"/>
				</s:form>
			</div>
			
			<div class="span4">
				<table>
					<tr>
						<td>Busqueda:&nbsp;</td>
						<td><div class="input-control text">
								<input type="text" />
								<button class="btn-search"></button>
							</div></td>
					</tr>
					<tr></tr>

				</table>
				<div class="example" style="width: 400px;">
					<table class="table striped">
						<tbody>
							<tr>
								<td>Macarrones</td>
							</tr>
							<tr>
								<td>Arroz con Pollo</td>
							</tr>
							<tr>
								<td>Ceviche</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>