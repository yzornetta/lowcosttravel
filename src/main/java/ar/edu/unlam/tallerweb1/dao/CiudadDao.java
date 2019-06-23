package ar.edu.unlam.tallerweb1.dao;

import java.util.Date;
import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Habitacion;


public interface CiudadDao {

	List<Habitacion> consultarCiudad (String ciudad, Date fechaIngreso, Date fechaSalida);
}
