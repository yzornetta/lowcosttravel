package ar.edu.unlam.tallerweb1.dao;

import javax.inject.Inject;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Habitacion;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;


@Repository("departamentoDao")
public class DepartamentoDaoImpl implements DepartamentoDao {

	@Inject
    private SessionFactory sessionFactory;
	
	@Override
	public Habitacion consultarDepartamentoDetalle(Long id){
		
		final Session session = sessionFactory.getCurrentSession();
		return (Habitacion) session.createCriteria(Habitacion.class)
				.add(Restrictions.eq("id", id))
				.uniqueResult();
	}

	
}
