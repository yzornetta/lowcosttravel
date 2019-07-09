package ar.edu.unlam.tallerweb1.servicios;

import java.util.Date;
import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Habitacion;

public interface ServicioBuscarSimilares {

	List<Habitacion> consultarHabitacionSimilar(String ciudad, Date fechaIngresoD, Date fechaSalidaD, int huespedes);

}
