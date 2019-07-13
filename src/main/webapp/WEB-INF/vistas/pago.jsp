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
      
       <script>
       function test() {
    	   
    	   var letters = /^[A-Za-z]+$/;
    	   var numbers = /^[0-9]+$/;
    	   var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    	   var reg = new RegExp("(((0[123456789]|10|11|12)/(([1][9][0-9][0-9])|([0-9][0-9]))))");
    	   myCardNo = document.getElementById('CardNumber').value;
    	   myCardType = document.getElementById('CardType').value;
    	   nombre = document.getElementById('nom').value;
    	   apellido = document.getElementById('ape').value;
    	   clave = document.getElementById('clave').value;
    	   clave_len = clave.length;
    	   vencimiento = document.getElementById('vencimiento').value;
    	   email = document.getElementById('email').value;
    	   cel = document.getElementById('cel').value;
    	   cel_len = cel.length;
    	   
    	   if(nombre.match(letters)) {
    	   
    	   		  if(apellido.match(letters)) {
    	   			
    	   			  	if(checkCreditCard(myCardNo, myCardType)) {
    	   				    
    	   			  		if(reg.test(vencimiento)){
    	   			 		
    	   			  			if (clave.match(numbers) && clave_len == 3){
    	   			  				
    	   			  				if(email.match(mailformat)){
    	   			  				
    	   			  					if(cel.match(numbers) && cel_len == 10){
    	   			  					
    	   			  				
    	   			  					}else{
    	   			  						alert("Ingresar un celular valido");
    	   			  						return false;
    	   			  					}
    	   			  				}else{
    	   			  					alert("Ingresar un email valido");
    	   			  					return false;
    	   			  				}
    	   			  			}else{
    	   			  				alert("Ingresar una clave valida");
    	   			  				return false;		
    	   			  			}
    	   			        }else{
    	   			 			alert("Ingresar una fecha de vencimiento valida");
    	   			 			return false;
    	   			 		}
    	   				  	
    	   			  	}else{
      		      			alert('Ingresar numero y tipo de tarjeta valido');
      		      			return false;
      		      	  	}  
      		      }else{
      		      		alert('Ingresar un apellido correcto');
      		      		return false;
      		      }	   	
    	   }else{
      	     alert('Ingresar un nombre correcto')
      	     return false;
      	   }

    	 }
       </script>
  
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
												
							<form action="" method="">
								<h5 class="mb-3">${nombre}</h5>
								<div class="form-style-w3ls">
									<span>Ciudad: ${ciudad} <span>
									<br>
									<span>Cantidad de huespedes: ${huespedes}</span>
									<br>
									<span>Fecha de ingreso: ${fechaIngreso}</span>
									<br>
									<span>Fecha de salida: ${fechaSalida}</span>

								</div>
							</form>
							
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="">
						<div class="padding2">			
							<form action="valida-reserva" method="POST" autocomplete="on" onsubmit="return test();">
								
								<div class="form-style-w3ls">
								<h5 class="mb-3">Ingresar datos de pago y contacto</h5>
									<span>Nombre<span>
									<input placeholder="Ingresar nombre titular"  id="nom" name="nom" type="text" required/>
									<span>Apellido<span>
									<input placeholder="Ingresar apellido titular"  id="ape" name="ape" type="text" required/>
									<span>Tipo de tarjeta<span>
									<select tabindex="11" id="CardType" name="CardType">
									  <option value="AmEx">American Express</option>
									  <option value="MasterCard">MasterCard</option>
									  <option value="Visa" selected>Visa</option>
									</select>
									<span>Numero de tarjeta</span>
									<input placeholder="Ingresar numero de tarjeta sin guiones ni espacios"  id="CardNumber" name="CardNumber" type="text" required/>									
									<span>Fecha de vencimiento</span>
									<input placeholder="MM/AA"  id="vencimiento" name="vencimiento" type="text" required/>								
									<span>Clave 3 digitos</span>
									<input placeholder="000"  id="clave" name="clave" type="text" required/>
									<span>Pais</span>
									<select name="pais">
										<option value="AF">Afganist�n</option>
										<option value="AL">Albania</option>
										<option value="DE">Alemania</option>
										<option value="AD">Andorra</option>
										<option value="AO">Angola</option>
										<option value="AI">Anguilla</option>
										<option value="AQ">Ant�rtida</option>
										<option value="AG">Antigua y Barbuda</option>
										<option value="AN">Antillas Holandesas</option>
										<option value="SA">Arabia Saud�</option>
										<option value="DZ">Argelia</option>
										<option value="AR" selected>Argentina</option>
										<option value="AM">Armenia</option>
										<option value="AW">Aruba</option>
										<option value="AU">Australia</option>
										<option value="AT">Austria</option>
										<option value="AZ">Azerbaiy�n</option>
										<option value="BS">Bahamas</option>
										<option value="BH">Bahrein</option>
										<option value="BD">Bangladesh</option>
										<option value="BB">Barbados</option>
										<option value="BE">B�lgica</option>
										<option value="BZ">Belice</option>
										<option value="BJ">Benin</option>
										<option value="BM">Bermudas</option>
										<option value="BY">Bielorrusia</option>
										<option value="MM">Birmania</option>
										<option value="BO">Bolivia</option>
										<option value="BA">Bosnia y Herzegovina</option>
										<option value="BW">Botswana</option>
										<option value="BR">Brasil</option>
										<option value="BN">Brunei</option>
										<option value="BG">Bulgaria</option>
										<option value="BF">Burkina Faso</option>
										<option value="BI">Burundi</option>
										<option value="BT">But�n</option>
										<option value="CV">Cabo Verde</option>
										<option value="KH">Camboya</option>
										<option value="CM">Camer�n</option>
										<option value="CA">Canad�</option>
										<option value="TD">Chad</option>
										<option value="CL">Chile</option>
										<option value="CN">China</option>
										<option value="CY">Chipre</option>
										<option value="VA">Ciudad del Vaticano (Santa Sede)</option>
										<option value="CO">Colombia</option>
										<option value="KM">Comores</option>
										<option value="CG">Congo</option>
										<option value="CD">Congo, Rep�blica Democr�tica del</option>
										<option value="KR">Corea</option>
										<option value="KP">Corea del Norte</option>
										<option value="CI">Costa de Marf�l</option>
										<option value="CR">Costa Rica</option>
										<option value="HR">Croacia (Hrvatska)</option>
										<option value="CU">Cuba</option>
										<option value="DK">Dinamarca</option>
										<option value="DJ">Djibouti</option>
										<option value="DM">Dominica</option>
										<option value="EC">Ecuador</option>
										<option value="EG">Egipto</option>
										<option value="SV">El Salvador</option>
										<option value="AE">Emiratos �rabes Unidos</option>
										<option value="ER">Eritrea</option>
										<option value="SI">Eslovenia</option>
										<option value="ES">Espa�a</option>
										<option value="US">Estados Unidos</option>
										<option value="EE">Estonia</option>
										<option value="ET">Etiop�a</option>
										<option value="FJ">Fiji</option>
										<option value="PH">Filipinas</option>
										<option value="FI">Finlandia</option>
										<option value="FR">Francia</option>
										<option value="GA">Gab�n</option>
										<option value="GM">Gambia</option>
										<option value="GE">Georgia</option>
										<option value="GH">Ghana</option>
										<option value="GI">Gibraltar</option>
										<option value="GD">Granada</option>
										<option value="GR">Grecia</option>
										<option value="GL">Groenlandia</option>
										<option value="GP">Guadalupe</option>
										<option value="GU">Guam</option>
										<option value="GT">Guatemala</option>
										<option value="GY">Guayana</option>
										<option value="GF">Guayana Francesa</option>
										<option value="GN">Guinea</option>
										<option value="GQ">Guinea Ecuatorial</option>
										<option value="GW">Guinea-Bissau</option>
										<option value="HT">Hait�</option>
										<option value="HN">Honduras</option>
										<option value="HU">Hungr�a</option>
										<option value="IN">India</option>
										<option value="ID">Indonesia</option>
										<option value="IQ">Irak</option>
										<option value="IR">Ir�n</option>
										<option value="IE">Irlanda</option>
										<option value="BV">Isla Bouvet</option>
										<option value="CX">Isla de Christmas</option>
										<option value="IS">Islandia</option>
										<option value="KY">Islas Caim�n</option>
										<option value="CK">Islas Cook</option>
										<option value="CC">Islas de Cocos o Keeling</option>
										<option value="FO">Islas Faroe</option>
										<option value="HM">Islas Heard y McDonald</option>
										<option value="FK">Islas Malvinas</option>
										<option value="MP">Islas Marianas del Norte</option>
										<option value="MH">Islas Marshall</option>
										<option value="UM">Islas menores de Estados Unidos</option>
										<option value="PW">Islas Palau</option>
										<option value="SB">Islas Salom�n</option>
										<option value="SJ">Islas Svalbard y Jan Mayen</option>
										<option value="TK">Islas Tokelau</option>
										<option value="TC">Islas Turks y Caicos</option>
										<option value="VI">Islas V�rgenes (EEUU)</option>
										<option value="VG">Islas V�rgenes (Reino Unido)</option>
										<option value="WF">Islas Wallis y Futuna</option>
										<option value="IL">Israel</option>
										<option value="IT">Italia</option>
										<option value="JM">Jamaica</option>
										<option value="JP">Jap�n</option>
										<option value="JO">Jordania</option>
										<option value="KZ">Kazajist�n</option>
										<option value="KE">Kenia</option>
										<option value="KG">Kirguizist�n</option>
										<option value="KI">Kiribati</option>
										<option value="KW">Kuwait</option>
										<option value="LA">Laos</option>
										<option value="LS">Lesotho</option>
										<option value="LV">Letonia</option>
										<option value="LB">L�bano</option>
										<option value="LR">Liberia</option>
										<option value="LY">Libia</option>
										<option value="LI">Liechtenstein</option>
										<option value="LT">Lituania</option>
										<option value="LU">Luxemburgo</option>
										<option value="MK">Macedonia, Ex-Rep�blica Yugoslava de</option>
										<option value="MG">Madagascar</option>
										<option value="MY">Malasia</option>
										<option value="MW">Malawi</option>
										<option value="MV">Maldivas</option>
										<option value="ML">Mal�</option>
										<option value="MT">Malta</option>
										<option value="MA">Marruecos</option>
										<option value="MQ">Martinica</option>
										<option value="MU">Mauricio</option>
										<option value="MR">Mauritania</option>
										<option value="YT">Mayotte</option>
										<option value="MX">M�xico</option>
										<option value="FM">Micronesia</option>
										<option value="MD">Moldavia</option>
										<option value="MC">M�naco</option>
										<option value="MN">Mongolia</option>
										<option value="MS">Montserrat</option>
										<option value="MZ">Mozambique</option>
										<option value="NA">Namibia</option>
										<option value="NR">Nauru</option>
										<option value="NP">Nepal</option>
										<option value="NI">Nicaragua</option>
										<option value="NE">N�ger</option>
										<option value="NG">Nigeria</option>
										<option value="NU">Niue</option>
										<option value="NF">Norfolk</option>
										<option value="NO">Noruega</option>
										<option value="NC">Nueva Caledonia</option>
										<option value="NZ">Nueva Zelanda</option>
										<option value="OM">Om�n</option>
										<option value="NL">Pa�ses Bajos</option>
										<option value="PA">Panam�</option>
										<option value="PG">Pap�a Nueva Guinea</option>
										<option value="PK">Paquist�n</option>
										<option value="PY">Paraguay</option>
										<option value="PE">Per�</option>
										<option value="PN">Pitcairn</option>
										<option value="PF">Polinesia Francesa</option>
										<option value="PL">Polonia</option>
										<option value="PT">Portugal</option>
										<option value="PR">Puerto Rico</option>
										<option value="QA">Qatar</option>
										<option value="UK">Reino Unido</option>
										<option value="CF">Rep�blica Centroafricana</option>
										<option value="CZ">Rep�blica Checa</option>
										<option value="ZA">Rep�blica de Sud�frica</option>
										<option value="DO">Rep�blica Dominicana</option>
										<option value="SK">Rep�blica Eslovaca</option>
										<option value="RE">Reuni�n</option>
										<option value="RW">Ruanda</option>
										<option value="RO">Rumania</option>
										<option value="RU">Rusia</option>
										<option value="EH">Sahara Occidental</option>
										<option value="KN">Saint Kitts y Nevis</option>
										<option value="WS">Samoa</option>
										<option value="AS">Samoa Americana</option>
										<option value="SM">San Marino</option>
										<option value="VC">San Vicente y Granadinas</option>
										<option value="SH">Santa Helena</option>
										<option value="LC">Santa Luc�a</option>
										<option value="ST">Santo Tom� y Pr�ncipe</option>
										<option value="SN">Senegal</option>
										<option value="SC">Seychelles</option>
										<option value="SL">Sierra Leona</option>
										<option value="SG">Singapur</option>
										<option value="SY">Siria</option>
										<option value="SO">Somalia</option>
										<option value="LK">Sri Lanka</option>
										<option value="PM">St Pierre y Miquelon</option>
										<option value="SZ">Suazilandia</option>
										<option value="SD">Sud�n</option>
										<option value="SE">Suecia</option>
										<option value="CH">Suiza</option>
										<option value="SR">Surinam</option>
										<option value="TH">Tailandia</option>
										<option value="TW">Taiw�n</option>
										<option value="TZ">Tanzania</option>
										<option value="TJ">Tayikist�n</option>
										<option value="TF">Territorios franceses del Sur</option>
										<option value="TP">Timor Oriental</option>
										<option value="TG">Togo</option>
										<option value="TO">Tonga</option>
										<option value="TT">Trinidad y Tobago</option>
										<option value="TN">T�nez</option>
										<option value="TM">Turkmenist�n</option>
										<option value="TR">Turqu�a</option>
										<option value="TV">Tuvalu</option>
										<option value="UA">Ucrania</option>
										<option value="UG">Uganda</option>
										<option value="UY">Uruguay</option>
										<option value="UZ">Uzbekist�n</option>
										<option value="VU">Vanuatu</option>
										<option value="VE">Venezuela</option>
										<option value="VN">Vietnam</option>
										<option value="YE">Yemen</option>
										<option value="YU">Yugoslavia</option>
										<option value="ZM">Zambia</option>
										<option value="ZW">Zimbabue</option>
									</select>
									<input type="hidden" id="id" name="id" value="${id}"/>
									<input type="hidden" id="nombre" name="nombre" value="${nombre}"/>
									<input type="hidden" id="fechaIngreso" name="fechaIngreso" value="${fechaIngreso}"/>
									<input type="hidden" id="fechaSalida" name="fechaSalida" value="${fechaSalida}"/>
									<span>Email</span>
									<input placeholder="Ingresar Email"  id="email" name="email" type="text" required/>
									<span>Celular</span>
									<input placeholder="Ingresar numero de celular"  id="cel" name="cel" type="text" required/>
									<button class="btn2 btn-lg btn-primary btn-block" Type="Submit">Confirmar</button>
									
									<span>Atenci�n: El anfitrion puede realizar el cobro en cualquier momento una vez confirmada la reserva.</span>
									
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
<br>
		
</body>

</html>
