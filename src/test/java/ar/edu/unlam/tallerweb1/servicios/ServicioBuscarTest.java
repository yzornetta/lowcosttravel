package ar.edu.unlam.tallerweb1.servicios;

import org.junit.Test;

import static org.assertj.core.api.Assertions.*;
import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import ar.edu.unlam.tallerweb1.dao.CiudadDao;
import ar.edu.unlam.tallerweb1.modelo.Habitacion;

public class ServicioBuscarTest {
	
	@Test
	public void encuentraHabitacion(){
		
		ServicioBuscarImpl sut = new ServicioBuscarImpl();
		
		List<Habitacion> listaHabDisponibles = new ArrayList<>();
		String ciudad=null;
		Date fechaIngreso=null;
		Date fechaSalida=null;
		int huespedes=0;
		CiudadDao dao = mock(CiudadDao.class);
		sut.setCiudadDao(dao);
		when(dao.consultarCiudad(ciudad, fechaIngreso, fechaSalida, huespedes)).thenReturn(listaHabDisponibles);
		
		List<Habitacion> habBuscadas = sut.consultarCiudad(ciudad, fechaIngreso, fechaSalida, huespedes);
		assertThat(habBuscadas).isNotNull();
		
	}

}
