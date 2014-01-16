<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-jquery-tags" prefix="sj"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<sj:head jqueryui="true" jquerytheme="le-frog" locale="es" />
<title>Mantenimiento Categoría de Insumos</title>
</head>
<body>
	<script type="text/javascript">
		$.subscribe(
						'rowselectVendedor',
						function(event, data) {
							document.getElementById("id").value = event.originalEvent.id;

							var grid = event.originalEvent.grid;
							var sel_id = grid.jqGrid('getGridParam', 'selrow');

							document.getElementById("codigo").value = grid
									.jqGrid('getCell', sel_id, 'codigo');
							document.getElementById("descripcion").value = grid
									.jqGrid('getCell', sel_id, 'descripcion');				

						});
		function actualizar() {
			document.getElementById("f1").action = 'actualizar';
			return true;
		}
		function eliminar() {
			document.getElementById("f1").action = 'eliminar';
			return true;
		}
		function registrar() {
			document.getElementById("f1").action = 'registrar';
			return true;
		}
		function listar() {
			document.getElementById("f1").action = 'listar';
			return true;
		}
	</script>

	<s:form id="f1">
		<s:hidden id="id" name="id" />

		<label>Código</label>
		<s:textfield id="codigo" name="codigo" />

		<label>Descripción</label>
		<s:textfield id="descripcion" name="descripcion" />
	</s:form>
	<sj:submit id="idFormAgregar" value="Registrar" button="true"
		targets="grid" formIds="f1" onclick="javascript:registrar();" />
	<sj:submit id="idFormActualizar" value="Actualizar" button="true"
		targets="grid" formIds="f1" onclick="javascript:actualizar();" />
	<sj:submit id="idFormEliminar" value="Eliminar" button="true"
		targets="grid" formIds="f1" onclick="javascript:eliminar();" />
	<sj:submit id="idFormListar" value="Listar" button="true"
		targets="grid" formIds="f1" onclick="javascript:listar();" />

	<div id="grid" align="left"></div>

</body>
</html>