package ar.edu.unlam.tallerweb1.dao;

import java.util.Date;
import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Habitacion;

public interface SimilarHabDao {

	List<Habitacion> consultarHabitacionSimilar(String ciudad, Date fechaIngreso, Date fechaSalida, int huespedes);

}
