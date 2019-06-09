package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Ciudad;
import ar.edu.unlam.tallerweb1.modelo.Departamento;

public interface ServicioBuscar {
	
	List<Departamento> consultarCiudad(Ciudad ciudad);
}
