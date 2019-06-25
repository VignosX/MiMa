<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Proyecto Mima</title>
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
					<li><a href="IndexRegistrado.jsp"> CUENTA </a></li>
					<li><a href="Equipo.jsp"> EQUIPO </a></li>
					<li><a href="Ayuda.jsp"> AYUDA </a></li>
				</ul>
		</div>
			<div>
			<ul>
				<li class="left">
				<div id="mySidenav" class="sidenav">
					<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
					<p class="titulonav">PROPIETARIO DE MASCOTA</p>
					<div id="login">
						<h2 class="cuenta">ACCEDE A TU CUENTA</h2>
						<a href="#"> <input type="button" value="ACCEDE CON GOOGLE+"
							id="acsggl"></a> <a href="#"> <input type="button"
							value="ACCEDE CON FACEBOOK" id="acsfb"></a>
						<p class="cuenta">TU CUENTA EN MIMA</p>
						
						<form action="Iniciar" method="post">
							<label class="mail">Correo</label>
								<input type="text"  name="CORREO" /><br>
							<label class="pass">Password</label>
								<input type="password" name="PASSWORD" /> <br>
								<input type="submit" id="entrar" value="Iniciar Sesión" />
						</form>
						
						<button type="button" id="botonregis" onclick="registro()">Regístrate</button>
					</div>
					<div id="registro" style="display: none">
						<h2 class="cuenta">REGISTRA UNA NUEVA CUENTA</h2>
						<a href="#"> <input type="button" value="ACCEDE CON GOOGLE+"
							id="acsggl"></a> <a href="#"> <input type="button"
							value="ACCEDE CON FACEBOOK" id="acsfb"></a>
						<p class="cuenta">TU CUENTA EN MIMA</p>
						 <form action="Registrar" method="post">
							<label class="mail">Usuario</label>
								<input type="text" name="USUARIO" /> <br>
							<label class="mail">Correo</label>
								<input type="text" name="CORREO" /> <br>
							<label class="pass">Password</label>
								<input type="password" name="PASSWORD" /> <br>
								<input type="submit" id="botonregis" value="Registrarse" />
						</form>
						<button type="button" id="botonlogin" onclick="login()">Log-in</button>
						
					</div>
				</div>	
				</li>
				</ul>	
			</div>
	</header>
	
	<main>
	<h3>SELECCIONA UNA ESPECIE</h3>
	<section>
		<!-- comienzo de formulario y selección de especie-->
		<form action="" method="get" class="creadorMascotas">
			<div id="especies">
				
					<div id="Perro" class="especie">
						<img src="img/Esp_Perro.png" onclick="seleccionarEspecie(0)" class="imgEspecie"> 
					</div>
					<div id="Gato" class="especie">
						<img src="img/Esp_Gato.png" onclick="seleccionarEspecie(1)" class="imgEspecie">
					</div>
			
			<!-- primer paso del creador, título con la descripción del animal-->
			<div id="descripcionEspecie" style="display: none">
				<img id="Back" src="./img/baseline_arrow_back_black_18dp.png"
					onclick="Volver()" class="volver"> <img id="Next"
					src="./img/baseline_arrow_forward_black_18dp.png"
					onclick="Siguiente()" class="siguiente">
			</div>
			<!-- selección del menú del creador-->
			
			<div class="tab" id="menuCat" style="display: none">
				<button type="button" class="categoria"
					onclick="mostrarSubcategorias(0)"><span>Generales</span></button>
				<div id="generales" style="display: none">
					<button  type="button" class="subcategoria" onclick="seleccionarSubcategoria('RZ')">Razas</button>
					<button  type="button" class="subcategoria" onclick="seleccionarSubcategoria('G')">Género</button>
				</div>

				<button type="button" class="categoria"
					onclick="mostrarSubcategorias(1)"><span>Específicas</span></button>
				<div id="especificas" style="display: none">
					<button  type="button" class="subcategoria" onclick="seleccionarSubcategoria('CP')">Color de pelo</button>
					<button  type="button" class="subcategoria" onclick="seleccionarSubcategoria('C')">Carácter</button>
				</div>
					<button type="button" class="categoria" onclick="seleccionarSubcategoria('R')"><span>Resumen</span></button>
				</div>	
				
				<div id="contenedor" style="display: none">
				</div>		
			</div>
			<input id="fEspecie" name="ESPECIE" type="hidden">
			<input id="fRaza" type="hidden">
			<input id="fGenero" type="hidden">
			<input id="fCastrado" type="hidden">
			<input id="fColorPelo" type="hidden">
			<input id="fCaracter" type="hidden">
			<input id="fNombre" type="hidden">
		</form>
	</section>
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