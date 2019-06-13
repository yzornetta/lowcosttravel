package ar.edu.unlam.tallerweb1.controladores;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Departamento;
import ar.edu.unlam.tallerweb1.servicios.ServicioBuscarDetalle;

@Controller
public class ControladorDetalleDepto {
	
	@Inject
	private ServicioBuscarDetalle servicioBuscarDetalle;

	@RequestMapping("/detalle")
	public ModelAndView irADetalle(@RequestParam(value="id") Long id, HttpServletRequest request) {
		
		ModelMap modelo = new ModelMap();
		
		Departamento deptoSeleccionado = servicioBuscarDetalle.consultarDepartamentoDetalle(id);
		
		modelo.put("deptoSeleccionado", deptoSeleccionado);
		modelo.put("id", id);
		return new ModelAndView("detalle", modelo);
		
	}
}