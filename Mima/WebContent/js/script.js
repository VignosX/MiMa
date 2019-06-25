					/*SIDEBAR*/

/* Set the width of the side navigation to 250px and the left margin of the page content to 250px and add a black background color to body */
function openNav() {
  document.getElementById("mySidenav").style.width = "500px";
  document.getElementById("mySidenav").style.backgroundColor = "white";
  document.getElementById("main").style.marginLeft = "500px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
  document.body.style.backgroundColor = "white";
}

				/*CREADOR MASCOTAS*/

/*$(document).ready(function() {
	var i, tabcontent, descrip, menuCat;
  	tabcontent = $(".subcategoria");
  
 	for (i = 0; i < tabcontent.length; i++) {
    	tabcontent[i].style.display = "none";
  	}
});*/


var especies=
[{
		"nombre": "Perro",
		"descripcion": "Los perros son los animales más leales que puedas encontrar, además son muy afectivos, pero también tienen su carácter"
	},
	{
		"nombre": "Gato",
		"descripcion": "Los gatos pueden parecer animales solitarios pero de hecho son bastante afectivos, eso sí, cuando ellos quieren"
	}
];


function seleccionarEspecie(n){

	switch(n){
		case 0:
			$("#fEspecie").val("Perro");
			$("#Gato").animate({opacity:'0'},1000);
			$("#Gato").hide(mostrarDescripcion);
			break;
		case 1:
			$("#fEspecie").val("Gato");	
			$("#Perro").animate({opacity:'0'},1000);
			$("#Perro").hide(1000,mostrarDescripcion);
			break;
	}
}

function mostrarDescripcion(){
	var especie = $("#fEspecie").val();
	textHTML="";
	switch(especie){
		case "Perro":
		textHTML =textHTML+ "<h4>"+especies[0].nombre+"</h4>";
		textHTML =textHTML+ "<p>"+especies[0].descripcion+"</p>";
		break;
		case "Gato":
		textHTML =textHTML+ "<h4>"+especies[1].nombre+"</h4>";
		textHTML =textHTML+ "<p>"+especies[1].descripcion+"</p>";
		break;
	}
	textHTML= textHTML + '<img id="Back" src="./img/baseline_arrow_back_black_18dp.png" onclick="volver()" class="flechas"> '
	+'<img id="Next" src="./img/baseline_arrow_forward_black_18dp.png" style="float: right" onclick="siguiente()" class="flechas">';
	$("#descripcionEspecie").show();
	$("#descripcionEspecie").html(textHTML);
}
function mostrarCategorias(){
	$("#menuCat").show({opacity:'1'},1000);
}

function volver(){
	var especie = $("#fEspecie").val();
	textHTML="";
	$("#descripcionEspecie").hide({opacity:'0'},1000);
	switch(especie){
		case "Perro":
		$("#Gato").animate({width:'200px'},1000);
		$("#Gato").animate({opacity:'1'},1000);
		break;
		case "Gato":	
		$("#Perro").animate({width:'200px'},1000);
		$("#Perro").animate({opacity:'1'},1000);
		break;
	}
	$("#fEspecie").val("");
}

function siguiente(){
	$("#descripcionEspecie").hide({opacity:'0'},1000);
	mostrarCategorias();
}

function mostrarSubcategorias(n){
	switch(n){
		case 0:
			$("#generales").slideDown(500);
			$("#especificas").slideUp(500);
			break;
		case 1:
			$("#especificas").slideDown(500);
			$("#generales").slideUp(500);
			break;
	}
}

function seleccionarSubcategoria(sc){
	
	 var textHTML;
	 var especie = $("#fEspecie").val();

	 $("#contenedor").show();
	 textHTML="";

	 switch (sc){
	 	case "RZ":
	 		textHTML= textHTML + "<div id='razas'>";
	 		var numRazas=2;
	 		for (var i=1;i<=numRazas;i++){
	 			textHTML=textHTML+'<img class="imgSubCat" src="./img/'+sc+"/"+especie+"_"+sc+i+'.png" onclick="formularioRazas('+i+')" />';
	 		}
	 		
	 		textHTML= textHTML + "</div>";
			break;
	 	case "G":
	 		textHTML= textHTML + "<div id='genero'>";
	 		
	 		for (var i=1;i<=2;i++){
	 			textHTML=textHTML+'<img class="imgSubCat" src="./img/'+sc+"/"+sc+i+'.png" onclick="formularioGenero('+i+')" />';
	 		}
	 		
	 		textHTML= textHTML + "<br><p><input id='castrado' type='checkbox' onclick='formularioGenero(3)'> Castrado</input></p></div>";
	 		break;
	 		
	 	case "CP":
	 		
	 		textHTML= textHTML + "<div id='colorPelo'>";
	 		var numColPel=4;
	 		
	 		for (var i=1;i<=numColPel;i++){
	 			textHTML=textHTML+'<img class="imgSubCat" src="./img/'+sc+"/"+especie+"_"+sc+i+'.png" onclick="formularioColorPelo('+i+')" />';
	 		}
	 		
	 		textHTML= textHTML + "</div>";
	 		
	 		break;
	 	case "C":
	 		textHTML= textHTML + "<div id='caracter'><h4>Conducta</h4>";
	 		
	 		textHTML= textHTML + "<p><input type='radio' name='caracter' value='Timido' onchange='formularioCaracter()'> Tímido </input></p>" +
	 		"<p><input type='radio' name='caracter' value='Independiente' onchange='formularioCaracter()'> Independiente </input></p>" +
	 		"<p><input type='radio' name='caracter' value='Cariñoso' onchange='formularioCaracter()'> Cariñoso </input></p>";
	 		
	 		textHTML= textHTML + "</div>";
	 		
	 		break;
	 	
	 	case "R":
	 		$("#generales").slideUp(500);
	 		$("#especificas").slideUp(500);
	 		
	 		textHTML= textHTML + "<div id='Resumen'>";
	 		
	 		textHTML= textHTML +"<p>Tu animal es un "+$("#fEspecie").val()+ " de raza "+$("#fRaza").val()+" de genero "+$("#fGenero").val()+
	 		", "+resumenCas+", de pelo: "+$("#fColorPelo").val()+" con un caracter: "+$("#fCaracter").val()+"</p><br>";
	 		
	 		textHTML= textHTML + "<p>Nombre de tu mascota <input id='nombre' type='text'onchange='formularioNombre'/></p> <input type='submit' value='Crear mascota' class='botCrear'>";
	 		
	 		textHTML= textHTML + "</div>";
	 		
	 		break;
	 }
	 
	 $("#contenedor").html(textHTML);
	 
}

function formularioRazas(n){
	
	var especie = $("#fEspecie").val();
	switch(n){
		case 1:
			if(especie=="Perro")
				$("#fRaza").val("Caniche");
			if(especie=="Gato")
				$("#fRaza").val("Común");
			break;
		case 2:
			if(especie=="Perro")
				$("#fRaza").val("Beagle");
			if(especie=="Gato")
				$("#fRaza").val("Siamés");
			break;
	}
}

var resumenCas="";
var genero="";

function formularioGenero(n){	
	switch(n){ 
		case 1:
			genero="Hembra";
			break;
		case 2:
			genero="Macho";	
			break;
		case 3:
			if($("#castrado").prop('checked')){
				var castrado= true;
				resumenCas="castrado";
			}
			else{
				var castrado= false;
				resumenCas="sin castrar";
			}
			break;
	}
	
	$("#fGenero").val(genero);
	$("#fCastrado").val(castrado);
}

function formularioColorPelo(n){
	var especie = $("#fEspecie").val();
	switch(n){
		case 1:
			if(especie=="Perro")
				$("#fColorPelo").val("Blanco");
			if(especie=="Gato")
				$("#fColorPelo").val("Negro");
			break;
		case 2:
			if(especie=="Perro")
				$("#fColorPelo").val("Castaño");
			if(especie=="Gato")
				$("#fColorPelo").val("Rubio");
			break;
		case 3:
			if(especie=="Perro")
				$("#fColorPelo").val("Rubio");
			if(especie=="Gato")
				$("#fColorPelo").val("Blanco");
			break;
		case 4:
			if(especie=="Perro")
				$("#fColorPelo").val("Negro");
			if(especie=="Gato")
				$("#fColorPelo").val("Marrón");
			break;
	}
}

function formularioCaracter(){
	$("#fCaracter").val($("input[name='caracter']:checked").val());
}

function formularioNombre(){
	$("#fNombre").val($("#nombre").val());
}

function registro(){
	$("#registro").show();
	$("#login").hide();
}

function login(){
	$("#registro").hide();
	$("#login").show();
}