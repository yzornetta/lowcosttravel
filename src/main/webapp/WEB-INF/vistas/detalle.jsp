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
	
	<!-- css files -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
	<link href="css/css_slider.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/css_slider2.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
	<!-- //css files -->
	
	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //google fonts -->
	
</head>
<body>

<!-- header -->
<header>
	
	<div class="container">

			<div id="logo">
				<h1> <a href="/proyecto-limpio-spring/inicio"><img src="images/icono.jpg" alt=""> Low Cost Travel </a></h1>
			</div>
			<input type="checkbox" id="drop" />

	</div>
</header>
<!-- //header -->


<!-- what we Serve -->
<section class="banner-bottom py-5" id="about">
	<div class="container py-lg-5">
		<h2 class="heading mb-sm-5 mb-4"> ${habSeleccionada.descripcionHab}</h2>
		<div class="row bottom-grids">
			<div class="">
				<img src="images/habitaciones/${habSeleccionada.id}/1.PNG" class="mt-4" alt="">
				<img src="images/habitaciones/${habSeleccionada.id}/2.PNG" class="mt-4" alt="">
				<img src="images/habitaciones/${habSeleccionada.id}/3.PNG" class="mt-4" alt="">
			</div>
			<div class="col-lg-5">
				<p class="mt-4">${habSeleccionada.departamento.masInfo}</p>
				<p class="mt-4"><span>Direccion: </span>${habSeleccionada.departamento.direccion.calle} ${habSeleccionada.departamento.direccion.numero}</p>
				<p class="mt-4"><span>Precio por noche: $</span>${habSeleccionada.precio}</p>
			</div>

			</div>
		</div>
</section>
<!--  //what we Serve -->
<div class="container">
	<h2 class="heading mb-sm-5 mb-4"> Más Hospedajes Que Pueden Interesarte</h2>
		<div class="row"> 
			<div class="" id="card12">
			<c:forEach items="${habSimilares}" var="habSimilares">
				<div class="card">
					
					<div class="card-body">

						<a href="/proyecto-limpio-spring/detalle?id=${habSimilares.id}&ciudad=${ciudad}&fechaIngreso=${fechaIngreso}&fechaSalida=${fechaSalida}&huespedes=${huespedes}"  class="stretched-link" target="_blank" style="color:#000; text-decoration:none"><h4>${habSimilares.descripcionHab}</h4></a>	
						<p class="card-text">${habSimilares.departamento.descripcion}</p>
						<p class="card-text"><span>Precio por noche: $</span>${habSimilares.precio}</p>
						
						<div class="csslider2" id="slider1"> <!-- "csslider" -->
						<input type="radio" name="slides" checked="checked" id="slides_1${habSimilares.id}" />
						<input type="radio" name="slides" id="slides_2${habSimilares.id}" />
						<input type="radio" name="slides" id="slides_3${habSimilares.id}" />
						<ul class="">
							<li>
										<div class="carrusel-img"><img src="images/habitaciones/${habSimilares.id}/1.PNG" class="" alt="/proyecto-limpio-spring/detalle?id=${habSimilares.id}"></div>
							</li>
							<li>
										<div class="carrusel-img"><img src="images/habitaciones/${habSimilares.id}/2.PNG" class="" alt="/proyecto-limpio-spring/detalle?id=${habSimilares.id}"></div>
							</li>
							<li>
										<div class="carrusel-img"><img src="images/habitaciones/${habSimilares.id}/3.PNG" class="" alt="/proyecto-limpio-spring/detalle?id=${habSimilares.id}"></div>
									
							</li>
						</ul>
						<div class="navigation">
							<div>
								<label for="slides_1${habSimilares.id}"></label>
								<label for="slides_2${habSimilares.id}"></label>
								<label for="slides_3${habSimilares.id}"></label>
							</div>
						</div>
					</div>
						
						
					</div>
				</div><br>
				</c:forEach>
			</div>
		</div>
	</div>
						


		<script src="js/mapa.js"></script>
		<script src="js/jquery-1.11.3.min.js" ></script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>