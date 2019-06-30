package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Foto;

public interface FotosPorDepartamentoDao {
	List<Foto> consultarFotosPorDepartamento(Long id);
}
