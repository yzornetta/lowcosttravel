<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Low Cost Travel</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
      <link href="css/css_my_slider.css" rel='stylesheet' type='text/css' />
	  <link href="css/bootstrap.css" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
      <link href="css/style.css" rel='stylesheet' type='text/css' /><!-- custom css -->
      <link href="css/css_slider2.css" type="text/css" rel="stylesheet" media="all">
      <script src="https://www.braemoor.co.uk/software/_private/creditcard.js"></script>
  
</head>

<body>
	<header>
			<div id="logo">
				<h1> <a href="/proyecto-limpio-spring/inicio"><img src="images/icono.jpg" alt=""> Low Cost Travel </a></h1>
			</div>
	</header>

<div class="containerDetalle">			
  <h2 class="heading mb-sm-5 mb-4"></h2>

<div class="" id="home">
	<div class="">
		<div class="row">

			<div class="col-lg-5">
					<div class="">
						<div class="padding2">
							
									<h5 class="mb-3">Gracias ${nombre} ${apellido} , tu reserva quedo completa!</h5>
									<img src="images/habitaciones/${id}/1.PNG" class="" alt="">
									<br><br><br>
									<span>${nombreHab} </span>
									<br>
									<span>Direccion: ${direccionCalle} ${direccionNum} </span>
									<br>
									<span>Ciudad: ${ciudad} </span>
									<br>
									<span>Cantidad de huespedes: ${huespedes} </span>
									<br>
									<span>Fecha de ingreso:${fechaIngreso}</span>
									<br>
									<span>Fecha de salida:${fechaSalida}</span>

								
							
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="">
						<div class="padding2">			
							<form action="inicio" method="">
								
								<div class="form-style-w3ls">
								<h5 class="mb-3">Datos de contacto del anfitrion</h5>
									<span>Nombre</span>
									<input value="${nomAnfitrion}"  id="nom" name="nom" type="text" readonly/>
									<span>Apellido</span>
									<input placeholder="" value="${apeAnfitrion}" id="ape" name="ape" type="text" readonly/>
									<span>Email</span>
									<input placeholder="" value="${emailAnfitrion}" id="email" name="email" type="text" readonly/>									
									<span>Telefono</span>
									<input placeholder="" value="${celAnfitrion}" id="cel" name="cel" type="text" readonly/>								
									<button class="btn2 btn-lg btn-primary btn-block" Type="Submit">Iniciar una nueva busqueda</button>
									
								</div>
							</form>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
		
</body>

</html>
