<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="METRO\css\metro-bootstrap.css" rel="stylesheet">
<style type="text/css">
#parent {
	background: rgba(240, 163, 10, 0.5);
	padding: 30px 100px 100px 100px;
	height: 120% !important;
}

#child {
	background: #FFFF;
}
</style>
</head>
<body class="metro"
	style="background-image: url('IMG/BG_ENTRAR_SISTEMA.jpg'); background-size: 100%">
	<div class="container">
		<div id="parent" class="span6 offset3">
			<center>
				<img src="IMG/LOGO.png" width="100%" height="100%" />
			</center>
			<br />
			<form id="child">
				<fieldset>
					<legend>Entrar al Sistema</legend>
					<div class="input-control text">
						<input type="text" value="" placeholder="Ingrese su Codigo" />
						<button class="btn-clear"></button>
					</div>
					<div class="input-control password">
						<input type="password" value="" placeholder="Ingrese su Password" />
						<button class="btn-reveal"></button>
					</div>
					<button class="image-button bg-darkGreen fg-white image-left">
						Entrar <i class="icon-enter bg-green fg-white"></i>
					</button>
					<button class="image-button bg-darkRed fg-white image-left">
						Limpiar <i class=" icon-cycle bg-red fg-white"></i>
					</button>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>