package ar.edu.unlam.tallerweb1.servicios;

import java.util.Date;
import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Cama;

public interface ServicioBuscar {
	
	List<Cama> consultarCiudad(String ciudad, Date fechaIngreso, Date fechaSalida);
}
