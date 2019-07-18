<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Low Cost Travel</title>
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
	integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
	crossorigin="" />
<script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
	integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
	crossorigin=""></script>

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">

<!-- css files -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- bootstrap css -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- custom css -->
<link href="css/css_slider.css" type="text/css" rel="stylesheet"
	media="all">
<link href="css/css_slider2.css" type="text/css" rel="stylesheet"
	media="all">
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- fontawesome css -->
<!-- //css files -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link
	href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css"
	rel="stylesheet">
<script
	src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>


<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
	rel="stylesheet">
<!-- //google fonts -->

</head>

<body>
	<header>
		<div id="logo">
			<h1>
				<a href="/proyecto-limpio-spring/inicio"><img
					src="images/icono.jpg" alt=""> Low Cost Travel </a>
			</h1>
		</div>
	</header>
	<section class="other_services py-1" id="why">
		<div class="container py-lg-1 py-1">
			<div class="container">
				<div class="row">
					<div class="col">

							<h5 class="mb-3">Gracias ${nombre} ${apellido} , tu reserva
								quedo completa!</h5>
							<img src="images/habitaciones/${id}/1.PNG" class="" alt="">
							<br> <br> <br> <span>${nombreHab} </span> <br>
							<span>Direccion: ${direccionCalle} ${direccionNum} </span> <br>
							<span>Ciudad: ${ciudad} </span> <br> <span>Cantidad
								de huespedes: ${huespedes} </span> <br> <span>Fecha de
								ingreso:${fechaIngreso}</span> <br> <span>Fecha de
								salida:${fechaSalida}</span>
					</div>
				</div>
				<hr>
				<div class="col">
					<div class="padding2">
						<form action="inicio" method="">

							<div class="form-style-w3ls">
								<h5 class="mb-3">Datos de contacto del anfitrion</h5>
								<span>Nombre</span> <input value="${nomAnfitrion}" id="nom"
									name="nom" type="text" readonly /> <span>Apellido</span> <input
									placeholder="" value="${apeAnfitrion}" id="ape" name="ape"
									type="text" readonly /> <span>Email</span> <input
									placeholder="" value="${emailAnfitrion}" id="email"
									name="email" type="text" readonly /> <span>Telefono</span> <input
									placeholder="" value="${celAnfitrion}" id="cel" name="cel"
									type="text" readonly />
								<button class="btn2 btn-lg btn-primary btn-block" Type="Submit">Iniciar
									una nueva busqueda</button>

							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</section>

	<br>

</body>

</html>
