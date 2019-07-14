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
							<!-- banner form -->
								<h5 class="mb-3">Gracias ${nombre}</h5>
								<div class="form-style-w3ls">
									<span>Tu reserva quedo completa para las siguientes fechas: </span>
									<br>
									<span>Llegada: ${fechaIngreso}</span>
									<br>
									<span>Salida: ${fechaSalida}</span>

								</div>
							
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
