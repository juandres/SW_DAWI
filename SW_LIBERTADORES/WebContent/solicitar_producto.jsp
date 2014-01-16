<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="METRO\js\jquery-2.0.3.min.js"></script>
<script src="METRO\js\jquery-ui-1.9.2.custom.min.js"></script>
<script src="METRO\min\metro.min.js"></script>
<script src="METRO\js\metro-input-control.js"></script>
<script type="metro-countdown.js."></script>
<link href="METRO\css\metro-bootstrap.css" rel="stylesheet">
<title>.:: SOLICITUD DE PRODUCTO ::.</title>
</head>
<body class="metro">
	<div class="grid fluid">
		<h1 class="fg-darkTeal">SOLICITUD DE PRODUCTO</h1>
		<div class="row" style="margin-left: 2%;">
			<div class="span2" style="border-right-style: solid;">			
			<table>
				<tr>
					<td>
					<center><label >Categorias</Label><br><br></center>
					<input type="submit" value="BEBIDAS" name="btnbebidas" align="right" ><br><br>
					<input type="submit" value="ENTRADAS" name="btnentradas"><br><br>
					<input type="submit" value="ENSALADAS" name="btnensaladas"><br><br>
					<input type="submit" value="SOPAS" name="btnsopas"><br><br>
					<input type="submit" value="SEGUNDOS" name="btnsegundos"><br><br>
					<input type="submit" value="POSTRES" name="btnpostres"><br><br>
					<input type="submit" value="DESAYUNO" name="btndesa"><br><br>
					<input type="submit" value="HAMBURGUESAS" name="btnham"><br><br>
					<input type="submit" value="ESPECIALES" name="btnespe">
					</td>		
				</tr>	
			</table>			
			</div>
			<h4>Mesa Nª 17 Ambiente</h4>
				<h3>Producto :</h3><br>
			<div class="span5" style="border-right-style: solid;">
				<div class="example" style="width: 500px;">
					<table class="table striped">
						<tbody>
							<tr>
								<td align="center">Producto</td>
								<td align="center">Precio</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
					
					<label>Cantidad :</label>
					<input type="text" name="txtcant">
					<label>Total: S/</label>
				</div><br>
				<button class="command-button inverse" >
					<i class="icon-share-3 on-right"></i> ¡Listo!<small>Agregar</small>
				</button>
			</div>
			
			<div class="span4">	
				<div class="countdown" data-role="countdown" data-style-background="bg-lightBlue"></div>	
				<br><br>
					<div class="example" style="width: 400px;">
					<table class="table striped">
						<tbody>
							<tr>
								<td align="center">Producto</td>
								<td  align="center">Cantidad</td>
								<td  align="center">Hora</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
					<button class="command-button inverse" >
					<small>Anular</small>
					</button>
					
				</div>
			</div>
			
			</div>			
			</div>
			


</body>
</html>