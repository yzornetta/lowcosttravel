<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es" class="pagInicio">
<head>
<title>Low Cost Travel</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">

    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);
        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
	
	<!-- css files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css">
    <link href="css/style.css" rel='stylesheet'><!-- custom css -->
	<link href="css/css_slider.css" rel="stylesheet" media="all">
    <link href="css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
    <!-- <link href="css/custom-calendario.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/flick/jquery-ui.min.css">
    <link rel="stylesheet" href="css/jquery-ui.theme.min.css">
	

 
	<!-- //css files -->
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script src="js/jquery.ui.datepicker-es.js"></script>
	
</head>
<body>

<!-- header -->
<header>
	<div class="container">
		<!-- nav -->
		<nav class="py-3 d-lg-flex">
			<div id="logo">
				<h1> <a href="/proyecto-limpio-spring/inicio"><img src="images/icono.jpg" alt=""> Low Cost Travel </a></h1>
			</div>
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			
		</nav>
		<!-- //nav -->
	</div>
  	
	<script>
  	$(function () {
  		
  			var $fechaSalida = $("#fechaSalida");
  			$.datepicker.setDefaults($.datepicker.regional["es"]);
  			
  				$("#fechaIngreso").datepicker({
  					minDate: 0,
  	  	      		onSelect: function(Date) {
  	  	      			$fechaSalida.datepicker({          
  	  	                
  	  	      		});
  	  	      			
  	  	      	  $fechaSalida.datepicker("option", "disabled", false);
  	  	          $fechaSalida.datepicker('setDate', null);
  	  	          $fechaSalida.datepicker("option", "minDate", Date);
  	  	      	}  	  	      	
  					
  	  	     });  		
  	
  	});	
  	</script>
  	
  	
</header>
<!-- //header -->


<!-- banner -->
<div class="banner" id="home">
	<div class="layer">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 banner-text-w3pvt">
					<!-- banner slider-->
					<div class="csslider infinity" id="slider1">
						<input type="radio" name="slides" checked="checked" id="slides_1" />
						<input type="radio" name="slides" id="slides_2" />
						<input type="radio" name="slides" id="slides_3" />
						<ul class="banner_slide_bg">
							<li>
								<div class="container-fluid">
									<div class="w3ls_banner_txt">
										<h3 class="b-w3ltxt text-capitalize mt-md-4"></h3>
										<h4 class="b-w3ltxt text-capitalize mt-md-2">Encuentra alojamientos en todas partes</h4>
										<p class="w3ls_pvt-title my-3">Descubre casas enteras y habitaciones privadas, perfectas para cualquier viaje</p>
										<!-- <a href="#about" class="btn btn-banner my-3">Read More</a> -->
									</div>
								</div>
							</li>
							<li>
								<div class="container-fluid">
									<div class="w3ls_banner_txt">
										<h3 class="b-w3ltxt text-capitalize mt-md-4"></h3>
										<h4 class="b-w3ltxt text-capitalize mt-md-2">Tomate un descanso en una ciudad de Europa</h4>
										<p class="w3ls_pvt-title my-3">Encuentra un lugar para hospedarte evaluado con 5 estrellas de familias que ofrecen caracteristicas basicas como cocina y television.</p>
										<!-- <a href="#about" class="btn btn-banner my-3">Read More</a> -->
									</div>
								</div>
							</li>
							<li>
								<div class="container-fluid">
									<div class="w3ls_banner_txt">
										<h3 class="b-w3ltxt text-capitalize mt-md-4"></h3>
										<h4 class="b-w3ltxt text-capitalize mt-md-2">Alojamientos para tu tipo de viaje</h4>
										<p class="w3ls_pvt-title my-3">Encuentra alojamientos con las mejores calificaciones y los servicios que tu necesitas</p>
										<!-- <a href="#about" class="btn btn-banner my-3">Read More</a> -->
									</div>
								</div>
							</li>
						</ul>
						<div class="navigation">
							<div>
								<label for="slides_1"></label>
								<label for="slides_2"></label>
								<label for="slides_3"></label>
							</div>
						</div>
					</div>
					<!-- //banner slider-->
				</div>
				<div class="col-lg-5 col-md-8 px-lg-3 px-0">
					<div class="banner-form-w3 ml-lg-5">
						<div class="padding">
							<!-- banner form -->
												
							<form action="validar-busqueda" method="POST" autocomplete="off" onsubmit="return validarFormulario()">
								<h5 class="mb-3">Reserva alojamientos</h5>
								<div class="form-style-w3ls">
									<input placeholder="Ingresar ciudad"   id="nombre" name="nombre" type="text" required />
									<select name="huespedes">
									  <option id="huespedes" value="1">1 huesped</option>
									  <option id="huespedes" value="2">2 huespedes</option>
									  <option id="huespedes" value="3">3 huespedes</option>
									  <option id="huespedes" value="4">4 huespedes</option>
									  <option id="huespedes" value="5">5 huespedes</option>
									  <option id="huespedes" value="6">6 huespedes</option>
									</select>
									<input placeholder="Fecha de ingreso"  type="text" id="fechaIngreso" name="fechaIngreso" readonly="readonly"/>								
									<input placeholder="Fecha de salida"   type="text" id="fechaSalida" name="fechaSalida" readonly="readonly" disabled	/>
									
									<button class="btn btn-lg btn-primary btn-block" Type="Submit">Buscar</button>
								</div>
							</form>
							
							<%--Bloque que es visible si el elemento error no estÃ¡ vacÃ­o disabled disabled	--%>
							<c:if test="${not empty error}">
			        			<h4>${error}</h4>
		        			</c:if>	
							
							<!-- //banner form -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- // banner -->

</body>
</html>



<script>
    
  function validarFormulario(){
 
    var txtFechaIngreso = document.getElementById('fechaIngreso').value;
    var txtFechaSalida = document.getElementById('fechaSalida').value;

 
    //Test campo obligatorio
    if(txtFechaIngreso == ""){
      alert('Ingresar fecha de ingreso');
      return false;
    }
 
    //Test edad
    if(txtFechaSalida == ""){
      alert('Ingresar fecha de salida');
      return false;
    }
 
 
    return true;
  }
 
  </script>
