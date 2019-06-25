<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ayuda</title>
<script src="js/jquery-3.4.0.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/estiloAyuda.css" rel="stylesheet" type="text/css">
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

<div class="background">
  <div class="container">
    <div class="screen">
      <div class="screen-header">
        <div class="screen-header-left">
          <div class="screen-header-button close"></div>
          <div class="screen-header-button maximize"></div>
          <div class="screen-header-button minimize"></div>
        </div>
        <div class="screen-header-right">
          <div class="screen-header-ellipsis"></div>
          <div class="screen-header-ellipsis"></div>
          <div class="screen-header-ellipsis"></div>
        </div>
      </div>
      <div class="screen-body">
        <div class="screen-body-item left">
          <div class="app-title">
            <span>CONTACTA</span>
            <span>con nosotros</span>
          </div>
          
           <img class="imglogo" src="img/logo_negro.png">
           
          <div class="app-contact">EMAIL DE CONTACTO : mimawebapp@gmail.com</div>
        </div>
        <div class="screen-body-item">
          <div class="app-form">
            <div class="app-form-group">
              <input class="app-form-control" placeholder="NOMBRE">
            </div>
            <div class="app-form-group">
              <input class="app-form-control" placeholder="APELLIDOS">
            </div>
            <div class="app-form-group">
              <input class="app-form-control" placeholder="EMAIL">
            </div>
            <div class="app-form-group message">
              <input class="app-form-control" placeholder="MENSAJE">
            </div>
            <div class="app-form-group buttons">
              <button class="app-form-button" style="float: left">CANCELAR</button>
              <button class="app-form-button">ENVIAR</button>
            </div>
          </div>
        </div>
      </div>
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