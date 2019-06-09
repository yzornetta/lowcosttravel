package ar.edu.unlam.tallerweb1.controladores;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Ciudad;
import ar.edu.unlam.tallerweb1.modelo.Departamento;
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
	public ModelAndView validarBusqueda(@ModelAttribute("ciudad") Ciudad ciudad, HttpServletRequest request) {
		ModelMap model = new ModelMap();
		List<Departamento> departamentos = servicioBuscar.consultarCiudad(ciudad);
		
		if (departamentos.size()!= 0) {
			
			model.put("ciudad", ciudad);
			model.put("departamentos", departamentos);
			return new ModelAndView("listado",model);
			
		} else {
			model.put("error", "ciudad no disponible");
		}
		return new ModelAndView("inicio", model);
	}

	@RequestMapping(path = "/listado", method = RequestMethod.GET)
	public ModelAndView irAResultado() {
		return new ModelAndView("listado");
	}


}
