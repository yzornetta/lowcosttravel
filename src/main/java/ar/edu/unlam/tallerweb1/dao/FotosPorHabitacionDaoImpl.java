package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Foto;

@Repository("fotosPorHabitacionDao")
public class FotosPorHabitacionDaoImpl implements FotosPorHabitacionDao{

	@Inject
	private SessionFactory sf;
	@Override
	public List<Foto> consultarFotosPorHabitacion(Long id) {
		final Session sesion = sf.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Foto> lista = sesion.createCriteria(Foto.class)
				.createAlias("habitacion", "hab")
				.add(Restrictions.eq("hab.id", id))
				.list();
		return lista;
	}
}
