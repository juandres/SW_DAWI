SOY PATOOO
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<s:url id="jsonDataCategoriaInsumo" action="grid" />
<div align="left" style="font-size: 11px;">
	<font color="red"><s:property value="mensaje" /></font>
</div>

<sjg:grid id="idGridCategoriaInsumo" href="%{jsonDataCategoriaInsumo}"
	caption="Lista de Categorias de Insumo" dataType="json" pager="true"
	gridModel="grdCategoriaInsumo" multiselect="false" navigator="true"
	navigatorAdd="false" navigatorSearch="false" navigatorRefresh="false"
	onSelectRowTopics="rowselectVendedor" navigatorDelete="false"
	navigatorEdit="false" rowNum="8" scroll="false" width="780">
	<sjg:gridColumn name="codigo" key="true" index="codigo"
		editable="true" title="Codigo" width="50" sortable="false" />
	<sjg:gridColumn name="descripcion" index="descripcion" editable="true"
		title="Descripcion" width="70" sortable="false" />
</sjg:grid>

