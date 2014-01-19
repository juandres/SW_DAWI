<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="METRO\css\metro-bootstrap.css" rel="stylesheet">
<title>Insert title here</title>
<script src="js\jquery-2.0.3.min.js"></script>
<script src="js\moment-with-langs.min.js"></script>

<script type="text/javascript">
	$(function() {
		var months = $('#months');
		var days = $('#days');
		var esLangData = moment.langData('es');
		for ( var i = 0; i <= 11; i++) {
			$('<option></option>', {
				text : esLangData.months(moment().month(i)),
				value : moment().month(i).daysInMonth()
			}).appendTo(months);
		}
		months.on(
						'change',
						function() {
							days.empty();
							var boton;
							for ( var i = 1; i <= this.value; i++) {
								boton = '<input type="button" id="boton'
										+ i
										+ '" value='
										+ i
										+ ' style="margin:0px 10px 10px 0px;min-width:50px" onclick="verBoton(this.id);" align="CENTER">';
								$(days).append(boton);
							}
						});
	});

	function verBoton(val) {
		console.log('imprimiendo... ');
		console.log(val);
		$("#dia").val(val);
	}
</script>

</head>
<body class="metro">
	<div class=" grid">
		<h1 class="fg-darkTeal">CRONOGRAMA DE MENUS</h1>
		<div class="row" style="margin-left: 5%;">
			<div class="span6"  style="border-right-style: solid;">
				<div class="grid fluid">
					<input type="hidden" id="dia"> <select name="months"
						id="months">
						<option value="0">--Seleccione--</option>
					</select>
					<div id="days" class="grid fluid span6"></div>
				</div>
			</div>
			<br/>
			<div class="span4">
				<div class="grid fluid">
					<input value="Entrada" type="button" id="btnentrada" style="margin:0px 10px 10px 0px;min-width: 120px"/>
					<input value="Menu" type="button" id="btnmenu" style="margin:0px 10px 10px 0px;min-width: 120px" /> 
					<input value="Especiales" type="button" id="btnespeciales" style="margin:0px 10px 10px 0px;min-width: 120px" /> 
					<input value="Postre" type="button" id="btnpostre" style="margin:0px 10px 10px 0px;min-width: 120px"/> 
					<input value="Desayuno" type="button" id="btndesayuno" style="margin:0px 10px 10px 0px;min-width: 120px"/> 
					<input value="Hamburguesa" type="button" id="btnhamburguesa" style="margin:0px 10px 10px 0px;min-width: 120px"/>
					<input value="Ensalada" type="button" id="btnensalada" style="margin:0px 10px 10px 0px;min-width: 120px" />
					<input value="Sopas" type="button" id="btnsopas"style="margin:0px 10px 10px 0px;min-width: 120px"/>
				</div>
				<div>
				
				</div>
			</div>
		</div>
	</div>
</body>
</html>