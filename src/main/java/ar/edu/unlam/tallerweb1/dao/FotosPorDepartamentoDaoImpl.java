package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Foto;

@Repository("fotosPorDepartamentoDao")
public class FotosPorDepartamentoDaoImpl implements FotosPorDepartamentoDao {
	@Inject
	private SessionFactory sf;
	@Override
	public List<Foto> consultarFotosPorDepartamento(Long id) {
		final Session sesion = sf.getCurrentSession();
		List<Foto> lista = sesion.createCriteria(Foto.class)
				.add(Restrictions.eq("departamento", id))
				.list();
		return lista;
	}
}
