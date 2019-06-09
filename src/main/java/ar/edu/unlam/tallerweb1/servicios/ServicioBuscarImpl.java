package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ar.edu.unlam.tallerweb1.dao.CiudadDao;
import ar.edu.unlam.tallerweb1.modelo.Ciudad;
import ar.edu.unlam.tallerweb1.modelo.Departamento;


@Service("servicioBuscar")
@Transactional
public class ServicioBuscarImpl implements ServicioBuscar {
	
	@Inject
	private CiudadDao servicioCiudadDao;

	@Override
	public List<Departamento> consultarCiudad (Ciudad ciudad) {
		return servicioCiudadDao.consultarCiudad(ciudad);
	}

}
