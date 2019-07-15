package ar.edu.unlam.tallerweb1.controlador;

import org.junit.Test;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.controladores.ControladorBusqueda;
import ar.edu.unlam.tallerweb1.servicios.ServicioBuscar;
import static org.mockito.Mockito.*;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import static org.assertj.core.api.Assertions.*;

public class ControladorTest {
	
	@Test
	public void validarBusquedaSinResultado() {
		
		ControladorBusqueda sut = new ControladorBusqueda();
		String ciudad=null;
		String fechaIngreso="01/01/2999";
		String fechaSalida="01/21/2999";
		Date fechaIngresoD=null;
		Date fechaSalidaD=null;
		int huespedes=0;
		HttpServletRequest request = null;
		
		ServicioBuscar servicioBuscar = mock(ServicioBuscar.class);
		sut.setServicioBuscar(servicioBuscar);
		when(servicioBuscar.consultarCiudad(ciudad, fechaIngresoD, fechaSalidaD, huespedes)).thenReturn(null);
		
		ModelAndView modelAndView = sut.validarBusqueda(ciudad, fechaIngreso, fechaSalida, huespedes, request);
		
		assertThat(modelAndView.getModel().get("error")).isEqualTo("Hospedaje no disponibles");
	}

}
