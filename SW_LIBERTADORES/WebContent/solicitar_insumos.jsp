<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="METRO\js\jquery-2.0.3.min.js"></script>
<script src="METRO\js\jquery-ui-1.9.2.custom.min.js"></script>
<script src="METRO\min\metro.min.js"></script>
<script src="METRO\js\metro-input-control.js"></script>
<link href="METRO\css\metro-bootstrap.css" rel="stylesheet">
<title>.:: SOLICITUD DE INSUMOS ::.</title>
</head>
<body class="metro">
	<div class="grid fluid">
		<h1 class="fg-darkTeal">SOLICITUD DE INSUMOS</h1>
		<div class="row" style="margin-left: 2%;">	<br>		
				<table align="center">
					<tr>
					 <td>
					 <button class="bg-teal">
					 <small>TUBERCULO</small>
					 </button>
					 </td>
					 <td>
					 <button class="bg-olive">
					 <small>FRUTA</small>
					 </button>
					 </td>
					 <td>
					 <button class="bg-darkOrange">
					 <small>LEGUMBRES</small>
					 </button>
					 </td>
					 <td>
					 <button class="bg-darkCyan">
					 <small>ABARROTES</small>
					 </button>
					 </td>
					 <td>
					 <button class="bg-cobalt">
					 <small>BEBIDAS</small>
					 </button>
					 </td>
					</tr>
				</table><br><br>
				<div class="span6" style="border-right-style: solid;" align="center">
				<h4 class="fg-darkTeal">Insumos :</h4>
				<div class="example" style="width: 300px;"><BR>
				
					<table class="table striped">
						<tbody>
							<tr>
							<td></td>
							</tr>
							<tr>
							<td></td>
							</tr>
							<tr>
							<td></td>
							</tr>
							<tr>
							<td></td>
							</tr>
							<tr>
							<td></td>
							</tr>
							<tr>
							<td></td>
							</tr>
							<tr>
							<td></td>
							</tr>
							<tr>
							<td></td>
							</tr>							
						</tbody>
					</table>	
				</div>
		</div>
		<div class="span5">
			<h4 class="fg-darkTeal">Insumo:</h4>
				<input type="text" name="txtinsumo">				
			<h4 class="fg-darkTeal">Cantidad en KG</h4>
				<input type="text" name="txtinsumo"><br><br>
			<button class="bg-teal">
					<i class="icon-plus-2"></i>  <small>Agregar</small>
			</button>
						
			</div>
	</div><br>
	<div class="span13" align="center">
	<div  style="width: 600px;">
	<table class="table striped" >
			<tbody>
			<tr>
				<td align="center">Insumo</td>
				<td align="center">Cantidad / Unidad de Medida</td>
			</tr>
			<tr>
				<td height="20"></td>
				<td height="20"></td>
				</tr>
			<tr>
				<td height="20"></td>
				<td height="20"></td>
			</tr>
			<tr>
				<td height="20"></td>
				<td height="20"></td>
			</tr>
			<tr>
				<td height="20"></td>
				<td height="20"></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			</tbody>
		</table>
		</div>
		</div>
	</div>

				
</body>
</html>