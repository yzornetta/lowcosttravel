package ar.edu.unlam.tallerweb1.servicios;

import java.util.Date;

public interface ServicioReserva {

	void guardarReserva(Date fechaIngresoD, Date fechaSalidaD, Long id);

}
