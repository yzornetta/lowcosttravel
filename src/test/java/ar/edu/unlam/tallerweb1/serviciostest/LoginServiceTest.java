package ar.edu.unlam.tallerweb1.serviciostest;

import org.junit.Test;
import static org.mockito.Mockito.*;

import ar.edu.unlam.tallerweb1.dao.UsuarioDao;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioLoginImpl;

public class LoginServiceTest {
	@Test
	public void encontrarUsuario() {
		Usuario u = new Usuario();
		u.setEmail("aquilesbrinco@canal.test");
		u.setPassword("aquiles vaesa");
		//P
		ServicioLoginImpl sut = new ServicioLoginImpl();
		UsuarioDao dao = mock(UsuarioDao.class);
		when(dao.consultarUsuario(u)).thenReturn(new Usuario());
		sut.setUsuarioDao(dao);
		//Usuario b = sut.consultarUsuario(u);
	}
}
