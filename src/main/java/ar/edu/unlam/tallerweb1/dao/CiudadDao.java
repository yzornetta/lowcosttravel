package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Ciudad;
import ar.edu.unlam.tallerweb1.modelo.Departamento;

public interface CiudadDao {

	List<Departamento> consultarCiudad (Ciudad ciudad);
}
