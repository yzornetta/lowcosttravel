package ar.edu.unlam.tallerweb1.dao;

import java.util.Date;

public interface ReservaDao {

	void guardarReserva(Date fechaIngresoD, Date fechaSalidaD, Long id);

}
