package ar.edu.unlam.tallerweb1.servicios;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.DepartamentoDao;
import ar.edu.unlam.tallerweb1.modelo.Habitacion;

@Service("servicioBuscarDetalle")
@Transactional
public class ServicioBuscarDetalleImpl implements ServicioBuscarDetalle{
	
	@Inject
	private DepartamentoDao servicioDepartamentoDao;
	
	@Override
	public Habitacion consultarDepartamentoDetalle (Long id) {
		return servicioDepartamentoDao.consultarDepartamentoDetalle(id);
	}
}
