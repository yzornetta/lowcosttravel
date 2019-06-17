<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
<meta charset="utf-8" />

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
    <link href="css/font-awesome.min.css" rel="stylesheet"><!-- fontawesome css -->
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<!-- //css files -->
	
	<!-- google fonts -->
	<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //google fonts -->
	
</head>
<body>

<!-- header -->
<header>
	<div class="top-head container">
		
	</div>
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
</header>
<!-- //header -->

<!-- other services -->
<section class="other_services py-5" id="why">
	<div class="container py-lg-5 py-3">
		<h3 class="heading mb-sm-5 mb-4">Hospedajes en <span>${ciudad.nombre}</span></h3> 
		
		<div class="row"> 
			<div class="col-12 col-lg-6">
				<c:forEach items="${departamentos}" var="departamentos">
				<div class="card">
					<div class="card-body">
						<a href="/proyecto-limpio-spring/detalle?id=${departamentos.id}"  target="_blank" class="stretched-link" style="color:#000; text-decoration:none;"><h4>${departamentos.nombre}</h4></a>
						<p class="card-text">${departamentos.descripcion}</p>
						<p class="card-text"><span>Precio por noche: $</span>${departamentos.precio}</p>
					</div>
				</div>
					<br>
				</c:forEach>
			</div>
			<div class="col-12 col-lg-6">
				<div id="mapid" style="width: 100%; height: 400px;"></div>
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