<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>
<sj:head />
<s:url id="cargarGridInsumos" action="cargarGridInsumos" />
<sj:select id="cboInsumo" name="codigo" href="%{cargarGridInsumos}"
	list="grdInsumos" listKey="codigo" listValue="descripcion"
	headerKey="0" headerValue="[Elegir]" onchange="capturar();"/>

