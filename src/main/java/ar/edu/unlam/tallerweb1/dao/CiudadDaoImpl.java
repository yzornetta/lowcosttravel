package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Ciudad;
import ar.edu.unlam.tallerweb1.modelo.Departamento;

@Repository("ciudadDao")
public class CiudadDaoImpl implements CiudadDao {

	@Inject
    private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Departamento> consultarCiudad(Ciudad ciudad) {

		
		final Session session = sessionFactory.getCurrentSession();
		return (List<Departamento>) session.createCriteria(Departamento.class)
				.createAlias("direccion","d")
				.createAlias("d.ciudad", "c")
				.add(Restrictions.eq("c.nombre", ciudad.getNombre()))
				.list();
		
	
		
		/*return (Ciudad) session.createCriteria(Ciudad.class)
				.add(Restrictions.eq("nombre", ciudad.getNombre()))
				.uniqueResult();*/
	}

	
}
