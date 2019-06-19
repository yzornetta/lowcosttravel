package ar.edu.unlam.tallerweb1.dao;

import java.util.Date;
import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Cama;
import ar.edu.unlam.tallerweb1.modelo.Departamento;


public interface CiudadDao {

	List<Cama> consultarCiudad (String ciudad, Date fechaIngreso, Date fechaSalida);
}
