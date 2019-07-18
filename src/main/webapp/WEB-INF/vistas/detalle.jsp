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
	<header style="position: fixed">
		<div id="logo">
			<h1>
				<a href="/proyecto-limpio-spring/inicio"><img
					src="images/icono.jpg" alt=""> Low Cost Travel </a>
			</h1>
		</div>
	</header>

	<section class="other_services py-1" id="why">
		<div class="container py-lg-1 py-1">
			<h2 class="heading mb-sm-3 mb-3">${habSeleccionada.descripcionHab}</h2>
			<div class="container">

				<!--Carousel Wrapper-->
				<div id="carousel-example-2${habSeleccionada.id}"
					class="carousel slide carousel-fade" data-ride="carousel">
					<!--Indicators-->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-2${habSeleccionada.id}"
							data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-2${habSeleccionada.id}"
							data-slide-to="1"></li>
						<li data-target="#carousel-example-2${habSeleccionada.id}"
							data-slide-to="2"></li>
					</ol>
					<!--/.Indicators-->
					<!--Slides-->
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<div class="view">
								<img class="d-block w-100" style="height: 500px;"
									src="images/habitaciones/${habSeleccionada.id}/1.PNG"
									alt="First slide">
								<div class="mask rgba-black-light"></div>
							</div>
						</div>
						<div class="carousel-item">
							<!--Mask color-->
							<div class="view">
								<img class="d-block w-100" style="height: 500px;"
									src="images/habitaciones/${habSeleccionada.id}/2.PNG"
									alt="Second slide">
								<div class="mask rgba-black-strong"></div>
							</div>
						</div>
						<div class="carousel-item">
							<!--Mask color-->
							<div class="view">
								<img class="d-block w-100" style="height: 500px;"
									src="images/habitaciones/${habSeleccionada.id}/3.PNG"
									alt="Third slide">
								<div class="mask rgba-black-slight"></div>
							</div>
						</div>
					</div>
					<!--/.Slides-->
					<!--Controls-->
					<a class="carousel-control-prev"
						href="#carousel-example-2${habSeleccionada.id}" role="button"
						data-slide="prev"> <span class="carousel-control-prev-icon"
						aria-hidden="true"></span> <span class="sr-only">Previous</span>
					</a> <a class="carousel-control-next"
						href="#carousel-example-2${habSeleccionada.id}" role="button"
						data-slide="next"> <span class="carousel-control-next-icon"
						aria-hidden="true"></span> <span class="sr-only">Next</span>
					</a>
					<!--/.Controls-->
				</div>
				<!--/.Carousel Wrapper-->

			</div>
		</div>
		<br> <br> <br>

		<div class="container py-lg-1 py-1">
			<div class="container">
				<div class="" id="home">
					<div class="">
						<div class="row">
							<div class="col">
								<h3 class="heading">Características</h3>
								<p class="mt-4">${habSeleccionada.departamento.masInfo}</p>
								<p class="mt-4">
									<span>Direccion: </span>${habSeleccionada.departamento.direccion.calle}
									${habSeleccionada.departamento.direccion.numero}
								</p>
								<p class="mt-4">
									<span>Precio por noche: $</span>${habSeleccionada.precio}</p>
							</div>

							<div class="col">
								<div class="">
									<div class="padding2">
										<!-- banner form -->

										<form action="datos-pago" method="GET">
											<h3 class="heading">Reserva este alojamiento</h3>
											<div class="form-style-w3ls">
												<span>Ciudad</span> <input
													value="${habSeleccionada.departamento.direccion.ciudad.nombre}"
													id="ciudad" name="ciudad" type="text" readonly="readonly" />
												<span>Cantidad de huespedes</span> <input
													value="${huespedes}" id="huespedes" name="huespedes"
													type="text" readonly="readonly" /> <span>Fecha de
													ingreso</span> <input value="${fechaIngreso}" type="text"
													id="fechaIngreso" name="fechaIngreso" readonly="readonly" />
												<span>Fecha de salida</span> <input value="${fechaSalida}"
													type="text" id="fechaSalida" name="fechaSalida"
													readonly="readonly" /> <input type="hidden" id="id"
													name="id" value="${habSeleccionada.id}" /> <input
													type="hidden" id="nombre" name="nombre"
													value="${habSeleccionada.descripcionHab}" />


												<button class="btn2 btn-lg btn-primary btn-block"
													Type="Submit">Reservar</button>
											</div>
										</form>


										<!-- //banner form -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<br> <br> <br>
		<div class="container py-lg-1 py-1">
			<div class="container">
				<h2 class="heading mb-sm-5 mb-4">Más hospedajes que pueden
					interesarte</h2>
				<div class="">
					<div class="row">
						<div class="" id="card12">

							<c:forEach items="${habSimilares}" var="habSimilares">
								<!--First slide-->
								<div class="card">

									<div class="card-body">

										<a
											href="/proyecto-limpio-spring/detalle?id=${habSimilares.id}&ciudad=${habSimilares.departamento.direccion.ciudad.nombre}&fechaIngreso=${fechaIngreso}&fechaSalida=${fechaSalida}&huespedes=${huespedes}"
											class="stretched-link" target="_blank"
											style="color: #000; text-decoration: none"><h4>${habSimilares.descripcionHab}</h4></a>
										<p class="card-text">${habSimilares.departamento.descripcion}</p>
										<p class="card-text">
											<span>Precio por noche: $</span>${habSimilares.precio}</p>

										<div id="carousel-example-2${habSimilares.id}"
											class="carousel slide carousel-fade" data-ride="carousel">
											<!--Indicators-->
											<ol class="carousel-indicators">
												<li data-target="#carousel-example-2${habSimilares.id}"
													data-slide-to="0" class="active"></li>
												<li data-target="#carousel-example-2${habSimilares.id}"
													data-slide-to="1"></li>
												<li data-target="#carousel-example-2${habSimilares.id}"
													data-slide-to="2"></li>
											</ol>
											<!--/.Indicators-->
											<!--Slides-->
											<div class="carousel-inner" role="listbox">
												<div class="carousel-item active">
													<div class="view">
														<img class="d-block w-100"
															src="images/habitaciones/${habSimilares.id}/1.PNG">
														<div class="mask rgba-black-light"></div>
													</div>
													<div class="carousel-caption"></div>
												</div>
												<div class="carousel-item">
													<!--Mask color-->
													<div class="view">
														<img class="d-block w-100"
															src="images/habitaciones/${habSimilares.id}/2.PNG">
														<div class="mask rgba-black-light"></div>
													</div>
													<div class="carousel-caption"></div>
												</div>
												<div class="carousel-item">
													<!--Mask color-->
													<div class="view">
														<img class="d-block w-100"
															src="images/habitaciones/${habSimilares.id}/3.PNG">
														<div class="mask rgba-black-light"></div>
													</div>
													<div class="carousel-caption"></div>
												</div>
											</div>
											<!--/.Slides-->
											<!--Controls-->
											<a class="carousel-control-prev"
												href="#carousel-example-2${habSimilares.id}" role="button"
												data-slide="prev"> <span
												class="carousel-control-prev-icon" aria-hidden="true"></span>
												<span class="sr-only">Previous</span>
											</a> <a class="carousel-control-next"
												href="#carousel-example-2${habSimilares.id}" role="button"
												data-slide="next"> <span
												class="carousel-control-next-icon" aria-hidden="true"></span>
												<span class="sr-only">Next</span>
											</a>
										
										</div>
									</div>
								</div>
								<!--/.First slide-->
								<br>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
</body>

</html>
