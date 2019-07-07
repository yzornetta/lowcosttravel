package ar.edu.unlam.tallerweb1.servicios;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.SimilarHabDao;
import ar.edu.unlam.tallerweb1.modelo.Habitacion;

@Service("servicioBuscarSimilares")
@Transactional
public class ServicioBuscarSimilaresImpl implements ServicioBuscarSimilares{
	
	@Inject
	private SimilarHabDao similarDao;
	
	@Override
	public List<Habitacion> consultarHabitacionSimilar(String ciudad, Date fechaIngreso, Date fechaSalida, int huespedes){
		return similarDao.consultarHabitacionSimilar(ciudad,fechaIngreso,fechaSalida,huespedes);
	}
}
