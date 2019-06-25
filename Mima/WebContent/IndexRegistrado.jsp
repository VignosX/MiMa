<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro</title>
<script src="js/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
		<div class="row">
				<!-- Use any element to open the sidenav --> 
				<div class="barras" onclick="openNav()">
						<img src="img/baseline_menu_white_18dp.png">
				</div>
				
				<a href="Index.jsp"><img class="logo" src="img/logo.png"></a>
			
				<ul class="main-nav">
					<li><a href=""> CUENTA </a></li>
					<li><a href="Equipo.jsp"> EQUIPO </a></li>
					<li><a href=""> AYUDA </a></li>
				</ul>
		</div>
</header>
<main>
	<h3>TUS MASCOTAS</h3>
	<div id="especies">
				
				<fieldset id="mascotas">
					<div id="Gato" class="especie">
						<img src="img/Esp_Gato.png" onclick="seleccionarEspecie(1)" class="imgEspecie">
					</div>
					
				<div id="miMascota">
					<p>Nombre: Kitty</p>
					<p>Especie: Gato Siamés</p>
					<p>Género: Hembra, castrada</p>
					<p>Color de pelo: Rubio</p>
					<p>Carácter: Tímido</p>
				</div>
				</fieldset>
			</div>
		</main>
	<footer class="footer">
 	
		<ul>
			<li><img src = "./img/logos/fb.jpg"></li> 
			<li><img src = "./img/logos/tw.jpg"></li> 			
			<li><img src = "./img/logos/google.jpg"></li> 
		</ul>
		
		<p class="copy">&copy; Proyecto Mima 2019 - All rights
			deserved</p>
	</footer>

</body>
</html>