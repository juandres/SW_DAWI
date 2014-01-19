<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="METRO\js\jquery-2.0.3.min.js"></script>
<script src="METRO\js\jquery-ui-1.9.2.custom.min.js"></script>
<script src="METRO\min\metro.min.js"></script>
<script src="METRO\js\metro-calendar.js"></script>
<script src="METRO\js\metro-datepicker.js"></script>
<script src="METRO\js\metro-input-control.js"></script>
<link href="METRO\css\metro-bootstrap.css" rel="stylesheet">
<title>.:: CRONOGRAMA DEL MENU JOH ::.</title>
</head>
<body class="metro">
	<div class="grid fluid">
		<h1 class="fg-darkTeal">CREAR CRONOGRAMA DEL MENU</h1>
		<div class="row" style="margin-left: 2%;">
			<div class="span3" style="border-right-style: solid;">
				<table>
					<tr>
						<td><div class="calendar" data-role="calendar"></div></td>
					</tr>
				</table>
			</div>
			<div class="span5" style="border-right-style: solid;">
				<table class="grid fluid">
					<tr style="padding-bottom: 15px;">
						<td><button class="bg-darkRed fg-white">&nbsp;&nbsp;&nbsp;Entradas&nbsp;&nbsp;&nbsp;</button></td>
						<td><button class="bg-darkBlue fg-white">&nbsp;&nbsp;&nbsp;Ensaladas&nbsp;&nbsp;</button></td>
						<td><button class="bg-darkGreen fg-white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sopas&nbsp;&nbsp;&nbsp;&nbsp;</button></td>
						<td><button class="bg-darkOrange fg-white">&nbsp;&nbsp;&nbsp;De Fondo&nbsp;&nbsp;&nbsp;</button></td>
					</tr>
					<tr>
						<td><button class="bg-darkCrimson fg-white">&nbsp;&nbsp;&nbsp;&nbsp;Postres&nbsp;&nbsp;&nbsp;</button></td>
						<td><button class="bg-amber fg-white">&nbsp;&nbsp;&nbsp;&nbsp;Bebidas&nbsp;&nbsp;&nbsp;</button></td>
						<td><button class="bg-darkTeal fg-white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jugos&nbsp;&nbsp;&nbsp;&nbsp;</button></td>
						<td><button class="bg-darkViolet fg-white">&nbsp;&nbsp;&nbsp;De Carta&nbsp;&nbsp;&nbsp;</button></td>

					</tr>
				</table>
				<div class="example" style="width: 400px;">
					<table class="table striped">
						<tbody>
							<tr>
								<td>Ocopa</td>
								<td><i class="icon-remove"></i></td>
							</tr>
							<tr>
								<td>Causa Rellena</td>
								<td><i class="icon-remove"></i></td>
							</tr>
							<tr>
								<td>Papa a la Huancaina</td>
								<td><i class="icon-remove"></i></td>
							</tr>
						</tbody>
					</table>
				</div>
				<button class="fg-black bg-lime">
					<i class="icon-plus-2"></i> Agregar
				</button>
			</div>
			<div class="span4">
				<div class="example" style="width: 400px;">
					<table class="table striped">
						<tbody>
							<tr>
								<td>1/2 Kg. Arroz Blanco</td>
								<td><i class="icon-remove"></i></td>
							</tr>
							<tr>
								<td>1/2 Kg. Pollo</td>
								<td><i class="icon-remove"></i></td>
							</tr>
							<tr>
								<td>Culantro</td>
								<td><i class="icon-remove"></i></td>
							</tr>
						</tbody>
					</table>
				</div>
				<button class="command-button inverse">
					<i class="icon-share-3 on-right"></i> ¡Listo!<small>Registrar
						la Operacion</small>
				</button>
			</div>
		</div>
	</div>
</body>
</html>