package ar.edu.unlam.tallerweb1.servicios;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.ReservaDao;

@Service("servicioReserva")
@Transactional
public class ServicioReservaImpl implements ServicioReserva {
	
	@Inject ReservaDao servicioReservaDao;
	
	@Override
	public void guardarReserva(Date fechaIngresoD, Date fechaSalidaD, Long id, String nombre, String apellido, String cardType, Long cardNum, String vencimiento, int clave, String pais, String email, Long cel) {
		servicioReservaDao.guardarReserva(fechaIngresoD, fechaSalidaD, id, nombre, apellido, cardType, cardNum, vencimiento, clave, pais, email, cel);
	}

}
