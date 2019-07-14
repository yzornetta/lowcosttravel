package ar.edu.unlam.tallerweb1.controladores;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Reservacion;
import ar.edu.unlam.tallerweb1.servicios.ServicioReserva;

@Controller
public class ControladorReserva {

	@Inject ServicioReserva servicioReserva;
	
	@RequestMapping(path = "/datos-pago", method = RequestMethod.POST)
	public ModelAndView irAPago(@RequestParam(value="id") Long id, 
								   @RequestParam(value="fechaIngreso") String fechaIngreso, 
								   @RequestParam(value="fechaSalida") String fechaSalida,
								   @RequestParam(value="ciudad") String ciudad,
								   @RequestParam(value="nombre") String nombre,
								   @RequestParam(value="huespedes")  int huespedes,
								   HttpServletRequest request) {
	

		ModelMap model = new ModelMap();
		model.put("id", id);
		model.put("fechaIngreso", fechaIngreso);
		model.put("fechaSalida", fechaSalida);
		model.put("ciudad", ciudad);
		model.put("nombre", nombre);
		model.put("huespedes", huespedes);
		return new ModelAndView("pago", model);
		
	}
	
	@RequestMapping(path = "/valida-reserva", method = RequestMethod.POST)
	public ModelAndView irAConfirmarReserva(@RequestParam(value="id") Long id, 
								   			@RequestParam(value="fechaIngreso") String fechaIngreso, 
										    @RequestParam(value="fechaSalida") String fechaSalida,
										    @RequestParam(value="nombre") String nombreHab,
										    @RequestParam(value="nom") String nombre,
										    @RequestParam(value="ape") String apellido,
										    @RequestParam(value="CardType") String cardType,
										    @RequestParam(value="CardNumber") Long cardNum,
										    @RequestParam(value="vencimiento") String vencimiento,
										    @RequestParam(value="clave") int clave,
										    @RequestParam(value="pais") String pais,
										    @RequestParam(value="email") String email,
										    @RequestParam(value="cel") Long cel,
										    HttpServletRequest request) {
		
		DateFormat fechaFormato = new SimpleDateFormat("dd/MM/yyyy");
		Date fechaIngresoD = null;
		try {
			fechaIngresoD = fechaFormato.parse(fechaIngreso);
		} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
			
		DateFormat fechaFormato2 = new SimpleDateFormat("dd/MM/yyyy");
		Date fechaSalidaD = null;
		try {
				fechaSalidaD = fechaFormato2.parse(fechaSalida);
		} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		
		Reservacion reserva = servicioReserva.guardarReserva(fechaIngresoD,fechaSalidaD,id,nombre,apellido,cardType,cardNum,vencimiento,clave,pais,email,cel);
		
		String direccionCalle = reserva.getHabReservada().getDepartamento().getDireccion().getCalle();
		int direccionNum = reserva.getHabReservada().getDepartamento().getDireccion().getNumero();
		String ciudad = reserva.getHabReservada().getDepartamento().getDireccion().getCiudad().getNombre();
		int huespedes = reserva.getHabReservada().getHuespedes();
		String nomAnfitrion = reserva.getHabReservada().getAnfitrion().getNombre();
		String apeAnfitrion = reserva.getHabReservada().getAnfitrion().getApellido();
		String emailAnfitrion = reserva.getHabReservada().getAnfitrion().getEmail();
		Long celAnfitrion = reserva.getHabReservada().getAnfitrion().getCel();
		
		ModelMap model = new ModelMap();
		model.put("id", id);
		model.put("fechaIngreso", fechaIngreso);
		model.put("fechaSalida", fechaSalida);
		model.put("nombreHab", nombreHab);
		model.put("nombre", nombre);
		model.put("apellido", apellido);
		model.put("nomAnfitrion", nomAnfitrion);
		model.put("apeAnfitrion", apeAnfitrion);
		model.put("emailAnfitrion", emailAnfitrion);
		model.put("celAnfitrion", celAnfitrion);
		model.put("direccionCalle", direccionCalle);
		model.put("direccionNum", direccionNum);
		model.put("ciudad", ciudad);
		model.put("huespedes", huespedes);
		return new ModelAndView("reservado", model);
		
	}
	
}
