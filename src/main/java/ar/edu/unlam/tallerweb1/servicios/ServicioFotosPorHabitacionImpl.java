package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.FotosPorHabitacionDao;
import ar.edu.unlam.tallerweb1.modelo.Foto;

@Service("servicioFotosPorHabitacion")
@Transactional
public class ServicioFotosPorHabitacionImpl implements ServicioFotosPorHabitacion {
	
	@Inject
	private FotosPorHabitacionDao servicioFotosPorHabitacionDao;
	@Override
	public List<Foto> consultarFotosPorHabitacion(Long id) {
		return servicioFotosPorHabitacionDao.consultarFotosPorHabitacion(id);
	}

}
