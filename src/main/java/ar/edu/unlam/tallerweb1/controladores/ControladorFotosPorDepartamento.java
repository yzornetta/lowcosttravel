package ar.edu.unlam.tallerweb1.controladores;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Foto;
import ar.edu.unlam.tallerweb1.servicios.ServicioFotosPorDepartamento;

@Controller
public class ControladorFotosPorDepartamento {
	@Inject
	private ServicioFotosPorDepartamento servicioFotosPorDepartamento;
	@RequestMapping("/fotos")
	public ModelAndView verFotos(@RequestParam(value="id") Long id, HttpServletRequest request) {
		ModelMap modelo = new ModelMap();
		List<Foto> fotos = servicioFotosPorDepartamento.consultarFotosPorDepartamento(id);
		if (fotos.size() != 0) {
			modelo.put("fotos", fotos);
		}
		return new ModelAndView("fotos", modelo);
	}
}
