<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<s:url id="jsonDataDetalleProducto" action="cargarGridDetalle" />

<sjg:grid id="jsonDataDetalleProducto" href="%{jsonDataDetalleProducto}"
	caption="Detalle del Producto" dataType="json" pager="true"
	gridModel="grdDetalle" multiselect="false" navigator="true"
	navigatorAdd="false" navigatorSearch="false" navigatorRefresh="false"
	navigatorDelete="false"
	navigatorEdit="false" rowNum="8" scroll="false" width="780">

	<sjg:gridColumn name="codigo" key="true" index="codigo" editable="true"
		title="Codigo" width="50" sortable="false" />
	<sjg:gridColumn name="codigo_producto" index="codigo_producto" editable="true"
		title="Codigo Producto" width="70" sortable="false" />
	<sjg:gridColumn name="codigo_insumo" index="codigo_insumo" editable="true"
		title="Codigo Insumo" width="70" sortable="false" />
	<sjg:gridColumn name="cantidad" index="cantidad" editable="true"
		title="Cantidad" width="70" sortable="false" />
</sjg:grid>

