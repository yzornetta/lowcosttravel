package ar.edu.unlam.tallerweb1.controladorestest;

import static org.assertj.core.api.Assertions.*;
import static org.mockito.Mockito.*;

import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.controladores.ControladorLogin;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;

public class ControladorLoginTest {
	@Test
	public void validar() {
		ControladorLogin sut = new ControladorLogin();
		Usuario u = null;
		HttpServletRequest req = null;
		
		ServicioLogin serv = mock(ServicioLogin.class);
		sut.setServicioLogin(serv);
		when(serv.consultarUsuario(u)).thenReturn(null);
		
		ModelAndView mav = sut.validarLogin(u, req);
		
		assertThat(mav.getViewName()).isEqualTo("login");
		assertThat(mav.getModel()).containsKey("error");
		assertThat(mav.getModel().get("error")).isEqualTo("Usuario o clave incorrecta");
	}
}
