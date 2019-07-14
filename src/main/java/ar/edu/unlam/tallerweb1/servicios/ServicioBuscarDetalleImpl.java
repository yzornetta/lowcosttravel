package ar.edu.unlam.tallerweb1.servicios;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.dao.DepartamentoDao;
import ar.edu.unlam.tallerweb1.modelo.Habitacion;

@Service("servicioBuscarDetalle")
public class ServicioBuscarDetalleImpl implements ServicioBuscarDetalle{
	
	@Inject
	private DepartamentoDao servicioDepartamentoDao;
	
	@Override
	public Habitacion consultarDepartamentoDetalle (Long id) {
		return servicioDepartamentoDao.consultarDepartamentoDetalle(id);
	}
}
