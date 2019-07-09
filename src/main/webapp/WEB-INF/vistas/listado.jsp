<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
<title>Low Cost Travel</title>

 <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
   			integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
   			crossorigin=""/>
   	  <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
  			integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
   			crossorigin=""></script>

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
    <script type="text/javascript">
    function showContent() {
        element = document.getElementById("mapid");
        card = document.getElementById("card12");
        check = document.getElementById("check");
        if (check.checked) {
            element.style.display='block';
            card.className="col-12 col-lg-6";            
        }
        else {
            element.style.display='none';
            card.className="col-12 col-lg-12"        
        }
    }
	</script>
	
	<!-- css files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css">
    <link href="css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
	<link href="css/css_slider.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/css_slider2.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->
	
		
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>	
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>	
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  	<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
	<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
  	
	
	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //google fonts -->
	
</head>
<body>

<!-- header -->
<header>
	<div class="container">

			<div id="logo">
				<h1><a href="/proyecto-limpio-spring/inicio"><img src="images/icono.jpg" alt="">Low Cost Travel</a></h1>
			</div>
			
			<input type="checkbox" id="drop" />

	</div>
</header>
<!-- //header -->

<!-- other services -->
<section class="" id="why">
	<div class="">
		<div class="container">
		  <div class="row">
		    <div class="col">
		      <h3 class="heading mb-sm-5 mb-4">Hospedajes en <span class="ciudad">${ciudad}</span></h3>
		    </div>
		    <div class="col-md-auto">
		    </div>
		    <div class="col col-lg-3">
		    <b>Mostrar Mapa</b>
			<input type="checkbox" name="check" id="check" value="1" data-toggle="toggle" data-size="small" data-offstyle="secondary" onchange="javascript:showContent()" checked />
		    </div>
		  </div>
		</div>
		
		<br>
	<div class="">		
		<div class="container">
		<div class="row"> 
			<div class="col-12 col-lg-6" id="card12">
				<c:forEach items="${habitacion}" var="habitacion">
				<div class="card">
					
					<div class="card-body">

						<a href="/proyecto-limpio-spring/detalle?id=${habitacion.id}&ciudad=${ciudad}&fechaIngreso=${fechaIngreso}&fechaSalida=${fechaSalida}&huespedes=${huespedes}"  class="stretched-link" target="_blank" style="color:#000; text-decoration:none"><h4>${habitacion.descripcionHab}</h4></a>	
						<p class="card-text">${habitacion.departamento.descripcion}</p>
						<p class="card-text"><span>Precio por noche: $</span>${habitacion.precio}</p>
						
						<div class="csslider2" id="slider1"> <!-- "csslider" -->
						<input type="radio" name="slides" checked="checked" id="slides_1${habitacion.id}" />
						<input type="radio" name="slides" id="slides_2${habitacion.id}" />
						<input type="radio" name="slides" id="slides_3${habitacion.id}" />
						<ul class="">
							<li>
										<div class="carrusel-img"><img src="images/habitaciones/${habitacion.id}/1.PNG" class="" alt="/proyecto-limpio-spring/detalle?id=${habitacion.id}"></div>
							</li>
							<li>
										<div class="carrusel-img"><img src="images/habitaciones/${habitacion.id}/2.PNG" class="" alt="/proyecto-limpio-spring/detalle?id=${habitacion.id}"></div>
							</li>
							<li>
										<div class="carrusel-img"><img src="images/habitaciones/${habitacion.id}/3.PNG" class="" alt="/proyecto-limpio-spring/detalle?id=${habitacion.id}"></div>
									
							</li>
						</ul>
						<div class="navigation">
							<div>
								<label for="slides_1${habitacion.id}"></label>
								<label for="slides_2${habitacion.id}"></label>
								<label for="slides_3${habitacion.id}"></label>
							</div>
						</div>
					</div>
						
						
					</div>
				</div><br>
				</c:forEach>
			</div>
			<div class="col-12 col-lg-6">
				<div id="mapid" style="width: 100%; height: 400px;" style="display:none;"></div>
			</div>
		</div>
	</div>
   </div>
</div>
</section>
<!-- //other services -->


		<script src="js/mapa.js"></script>
		<script src="js/jquery-1.11.3.min.js" ></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>
