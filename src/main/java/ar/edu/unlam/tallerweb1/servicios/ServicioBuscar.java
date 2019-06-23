package ar.edu.unlam.tallerweb1.servicios;

import java.util.Date;
import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Habitacion;

public interface ServicioBuscar {
	
	List<Habitacion> consultarCiudad(String ciudad, Date fechaIngreso, Date fechaSalida);
}
