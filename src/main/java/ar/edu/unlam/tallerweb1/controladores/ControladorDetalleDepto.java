package ar.edu.unlam.tallerweb1.controladores;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Habitacion;
import ar.edu.unlam.tallerweb1.servicios.ServicioBuscarDetalle;
import ar.edu.unlam.tallerweb1.servicios.ServicioBuscarSimilares;

@Controller
public class ControladorDetalleDepto {
	
	@Inject
	private ServicioBuscarDetalle servicioBuscarDetalle;
	
	@Inject
	private ServicioBuscarSimilares servicioBuscarSimilares;

	@RequestMapping("/detalle")
	public ModelAndView irADetalle(@RequestParam(value="id") Long id, 
								   @RequestParam(value="ciudad") String ciudad, 
								   @RequestParam(value="fechaIngreso") String fechaIngreso, 
								   @RequestParam(value="fechaSalida") String fechaSalida, 
								   @RequestParam(value="huespedes") int huespedes, 
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
			
		ModelMap modelo = new ModelMap();
		
		Habitacion habSeleccionada = servicioBuscarDetalle.consultarDepartamentoDetalle(id);
		List<Habitacion> habSimilares = servicioBuscarSimilares.consultarHabitacionSimilar(ciudad,fechaIngresoD,fechaSalidaD,huespedes);
		
		modelo.put("habSeleccionada", habSeleccionada);
		modelo.put("id", id);
		modelo.put("ciudad", ciudad);
		modelo.put("fechaIngreso", fechaIngreso);
		modelo.put("fechaSalida", fechaSalida);
		modelo.put("huespedes", huespedes);
		modelo.put("habSimilares", habSimilares);
		return new ModelAndView("detalle", modelo);
		
	}
}
