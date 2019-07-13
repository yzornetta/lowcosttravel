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
		
		servicioReserva.guardarReserva(fechaIngresoD,fechaSalidaD,id);
		
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
										    @RequestParam(value="cel") String cel,
										    HttpServletRequest request) {
		
		ModelMap model = new ModelMap();
		model.put("id", id);
		model.put("fechaIngreso", fechaIngreso);
		model.put("fechaSalida", fechaSalida);
		model.put("nombreHab", nombreHab);
		model.put("nombre", nombre);
		return new ModelAndView("reservado", model);
		
	}
	
}
