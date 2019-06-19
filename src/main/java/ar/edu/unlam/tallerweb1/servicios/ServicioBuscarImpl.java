package ar.edu.unlam.tallerweb1.servicios;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ar.edu.unlam.tallerweb1.dao.CiudadDao;
import ar.edu.unlam.tallerweb1.modelo.Cama;
import ar.edu.unlam.tallerweb1.modelo.Departamento;


@Service("servicioBuscar")
@Transactional
public class ServicioBuscarImpl implements ServicioBuscar {
	
	@Inject
	private CiudadDao servicioCiudadDao;

	@Override
	public List<Cama> consultarCiudad (String ciudad, Date fechaIngreso, Date fechaSalida) {
		return servicioCiudadDao.consultarCiudad(ciudad,fechaIngreso,fechaSalida);
	}

}
