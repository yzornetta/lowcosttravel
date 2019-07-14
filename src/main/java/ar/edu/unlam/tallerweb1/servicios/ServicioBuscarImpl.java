package ar.edu.unlam.tallerweb1.servicios;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import ar.edu.unlam.tallerweb1.dao.CiudadDao;
import ar.edu.unlam.tallerweb1.modelo.Habitacion;


@Service("servicioBuscar")
public class ServicioBuscarImpl implements ServicioBuscar {
	
	@Inject
	private CiudadDao servicioCiudadDao;

	@Override
	public List<Habitacion> consultarCiudad (String ciudad, Date fechaIngreso, Date fechaSalida, int huespedes) {
		return servicioCiudadDao.consultarCiudad(ciudad,fechaIngreso,fechaSalida,huespedes);
	}
	
	@Override
	public List<Habitacion> consultarCiudadConPrecio(String ciudad, Date fechaIngreso, Date fechaSalida,
			String precioMin, String precioMax, int huespedes) {
		return servicioCiudadDao.consultarCiudadConPrecio(ciudad,fechaIngreso,fechaSalida, precioMin, precioMax, huespedes);
	}
	
////////////////////////////////////////////////////////Mockito///////////////////////////////////////////////////////////////////

	public void setCiudadDao(CiudadDao dao) {
		// TODO Auto-generated method stub
		this.servicioCiudadDao=dao;
		
	}

}
