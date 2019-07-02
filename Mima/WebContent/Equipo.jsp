<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Equipo</title>
<script src="js/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/estiloEquipo.css" rel="stylesheet" type="text/css">
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
	

<body>

  </div>

  <div class="card">
    <div class="poster"><img src = "./img/Equipo/carlos.jpg"></div>
    <div class="details">
      <h2>Carlos Álvarez<br><span>Diseño UX / Desarrollo Java</span></h2>

      <div class="tags">
        <span class="fantasy">Estrategia</span>
      
      </div>

      <div class="info">
        <p>Versátil, empático y creativo. Del mundo de los videojuegos, Carlos ha realizado cursos en diferentes áreas demostrando ser especialista en proyectos.</p>
      </div>

      <div class="star">
        <h4>Habilidades</h4>
        <ul>
          <li><img src = "./img/logos/java_logo.jpg"></li>
          <li><img src = "./img/logos/eclipse.jpg"></li>
          <li><img src = "./img/logos/html.jpg"></li>
          <li><img src = "./img/logos/jquery.jpg"></li>
          <li><img src="./img/logos/js.jpg"></li>
        
	 </ul>
	 </div>
	
	 </div>
 </div>

  <div class="card">
    <div class="poster"><img src = "./img/Equipo/zeta.jpg"></div>
    <div class="details">
      <h2>Zoraida Sáez<br><span>Diseño Web y Java</span></h2>

      <div class="tags">
        <span class="fantasy">Creatividad</span>
      
      </div>

      <div class="info">
        <p>Recién llegada al mundo de la programación y el desarrollo web. Profesional de la realización de audiovisuales y espéctaculos aporta su personalidad creativa con los aspectos más técnicos.</p>
      </div>

      <div class="star">
        <h4>Habilidades</h4>
        <ul>
          <li><img src = "./img/logos/java_logo.jpg"></li>
          <li><img src = "./img/logos/eclipse.jpg"></li>
          <li><img src = "./img/logos/html.jpg"></li>
          <li><img src = "./img/logos/css.jpg"></li>
          <li><img src="./img/logos/js.jpg"></li>
        
	 </ul>
	 </div>
	
	 </div>
 </div>

  </div>

  <div class="card">
    <div class="poster"><img src = "./img/Equipo/pablo.jpg"></div>
    <div class="details">
      <h2>Pablo Huete<br><span>Diseño Videojuegos / Java</span></h2>

      <div class="tags">
        <span class="fantasy">Artista 2D/3D</span>
      
      </div>

      <div class="info">
        <p>Recién llegada al mundo de la programación y el desarrollo web. Profesional de la realización de audiovisuales y espéctaculos aporta su personalidad creativa con los aspectos más técnicos.</p>
      </div>

      <div class="star">
        <h4>Habilidades</h4>
        <ul>
          <li><img src = "./img/logos/java_logo.jpg"></li>
          <li><img src = "./img/logos/eclipse.jpg"></li>
          <li><img src = "./img/logos/html.jpg"></li>
          <li><img src = "./img/logos/css.jpg"></li>
          <li><img src="./img/logos/mysql.jpg"></li>
        
	 </ul>
	 </div>
	
	 </div>
 </div>
 
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