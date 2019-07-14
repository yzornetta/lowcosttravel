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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import ar.edu.unlam.tallerweb1.modelo.Ciudad;
import ar.edu.unlam.tallerweb1.modelo.Habitacion;
import ar.edu.unlam.tallerweb1.servicios.ServicioBuscar;

@Controller
public class ControladorBusqueda {
	
	@Inject
	private ServicioBuscar servicioBuscar;
	
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public ModelAndView irAPagPrincipal() {
		return new ModelAndView("redirect:inicio");
	}
		
	@RequestMapping("/inicio")
	public ModelAndView irAInicio() {

		ModelMap modelo = new ModelMap();
		Ciudad ciudad = new Ciudad();
		modelo.put("ciudad", ciudad);
		return new ModelAndView("inicio", modelo);
	}
	
	@RequestMapping(path = "/validar-busqueda", method = RequestMethod.POST)
	public ModelAndView validarBusqueda(@RequestParam(value="nombre")  String ciudad, 
										@RequestParam(value="fechaIngreso") String fechaIngreso,
										@RequestParam(value="fechaSalida")  String fechaSalida,
										@RequestParam(value="huespedes")  int huespedes,
										HttpServletRequest request) {
		
		ModelMap model = new ModelMap();
		
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

		List<Habitacion> habitacion = servicioBuscar.consultarCiudad(ciudad,fechaIngresoD,fechaSalidaD,huespedes);
		
		if (habitacion.size()!= 0) {
			Gson parser = new Gson();
			model.put("json", parser.toJson(habitacion));
			model.put("ciudad", ciudad);
			model.put("fechaIngreso", fechaIngreso);
			model.put("fechaSalida", fechaSalida);
			model.put("huespedes", huespedes);
			model.put("habitacion", habitacion);
			return new ModelAndView("listado",model);
				
			} else {
				model.put("error", "Hospedaje no disponible");
			}
			return new ModelAndView("inicio", model);
	
		}
	
	@RequestMapping(path = "/validar-busqueda-precio", method = RequestMethod.POST)
	public ModelAndView validarBusquedaPrecio(@RequestParam(value="ciudad")  String ciudad, 
										@RequestParam(value="fechaIngreso") String fechaIngreso,
										@RequestParam(value="fechaSalida")  String fechaSalida,
										@RequestParam(value="precioMin")  String precioMin, 
										@RequestParam(value="precioMax") String precioMax,
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
		
		
		ModelMap model = new ModelMap();
		
		
		List<Habitacion> habitacion = servicioBuscar.consultarCiudadConPrecio(ciudad,fechaIngresoD,fechaSalidaD, precioMin, precioMax, huespedes);
		
		
		if (habitacion.size()!= 0) {
			Gson parser = new Gson();
			model.put("json", parser.toJson(habitacion));			
			model.put("ciudad", ciudad);
			model.put("habitacion", habitacion);
			model.put("fechaIngreso", fechaIngreso);
			model.put("fechaSalida", fechaSalida);
			model.put("precioMin", precioMin);
			model.put("precioMax", precioMax);
			model.put("huespedes", huespedes);
			return new ModelAndView("listado",model);
				
			} else {
				model.put("error", "Hospedaje no disponible");
			}
			Gson parser = new Gson();
			model.put("json", parser.toJson(habitacion));
			model.put("ciudad", ciudad);
			model.put("habitacion", habitacion);
			model.put("fechaIngreso", fechaIngreso);
			model.put("fechaSalida", fechaSalida);
			model.put("precioMin", precioMin);
			model.put("precioMax", precioMax);
			model.put("huespedes", huespedes);
			return new ModelAndView("listado", model);
	
		}

	@RequestMapping(path = "/listado", method = RequestMethod.GET)
	public ModelAndView irAResultado() {
		return new ModelAndView("listado");
	}

	
	
}
