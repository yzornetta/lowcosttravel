package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.FotosPorDepartamentoDao;
import ar.edu.unlam.tallerweb1.modelo.Foto;

@Service("servicioFotosPorDepartamento")
@Transactional
public class ServicioFotosPorDepartamentoImpl implements ServicioFotosPorDepartamento {
	@Inject
	private FotosPorDepartamentoDao servicioFotosPorDepartamentoDao;
	@Override
	public List<Foto> consultarFotosPorDepartamento(Long id) {
		return servicioFotosPorDepartamentoDao.consultarFotosPorDepartamento(id);
	}
}
