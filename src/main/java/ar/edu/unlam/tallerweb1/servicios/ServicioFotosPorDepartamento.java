package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Foto;

public interface ServicioFotosPorDepartamento {
	List<Foto> consultarFotosPorDepartamento(Long id);
}
