<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<s:url id="jsonDataDetalleProducto" action="cargarGridDetalle" />

<sjg:grid id="jsonDataDetalleProducto" href="%{jsonDataDetalleProducto}"
	caption="Detalle del Producto" dataType="json" pager="true"
	gridModel="grdDetalle" multiselect="false" navigator="true"
	navigatorAdd="false" navigatorSearch="false" navigatorRefresh="false"
	navigatorDelete="false" cssClass="span3"
	navigatorEdit="false" rowNum="8" scroll="false" width="780">

	<sjg:gridColumn name="codigo" key="true" index="codigo" editable="true"
		title="Codigo" width="10" sortable="false"  />
	<sjg:gridColumn name="descripcion" index="descripcion" editable="true"
		title="Descripcion" width="30" sortable="false" />	
</sjg:grid>

