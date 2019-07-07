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

			
  <h2 class="heading mb-sm-5 mb-4"> ${habSeleccionada.descripcionHab}</h2>
  <div class="container">

	<input type="radio" id="slides_1" name="images" checked/>
	<input type="radio" id="slides_2" name="images" />
	<input type="radio" id="slides_3" name="images" />

	
	<div class="slide_img" id="one">			
			
			<img src="images/habitaciones/${habSeleccionada.id}/1.PNG">
			
				<label class="prev" for="slides_3"><span></span></label>
				<label class="next" for="slides_2"><span></span></label>	
		
	</div>
	
	<div class="slide_img" id="two">
		
			<img src="images/habitaciones/${habSeleccionada.id}/2.PNG" >
			
				<label class="prev" for="slides_1"><span></span></label>
				<label class="next" for="slides_3"><span></span></label>
		
	</div>
			
	<div class="slide_img" id="three">
			<img src="images/habitaciones/${habSeleccionada.id}/3.PNG">	
			
				<label class="prev" for="slides_2"><span></span></label>
				<label class="next" for="slides_1"><span></span></label>
	</div>


	<div id="nav_slide">
		<label for="slides_1" class="dots" id="dot1"></label>
		<label for="slides_2" class="dots" id="dot2"></label>
		<label for="slides_3" class="dots" id="dot3"></label>

	</div>
		
  </div>

<div class="col-lg-5">
				<p class="mt-4">${habSeleccionada.departamento.masInfo}</p>
				<p class="mt-4"><span>Direccion: </span>${habSeleccionada.departamento.direccion.calle} ${habSeleccionada.departamento.direccion.numero}</p>
				<p class="mt-4"><span>Precio por noche: $</span>${habSeleccionada.precio}</p>
</div>

<br>
<br>
<br>
<h2 class="heading mb-sm-5 mb-4"> M�s hospedajes que pueden interesarte</h2>
<div class="container">
	
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
			

</body>

</html>
