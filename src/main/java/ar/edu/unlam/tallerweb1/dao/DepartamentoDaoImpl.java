package ar.edu.unlam.tallerweb1.dao;

import javax.inject.Inject;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Departamento;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;


@Repository("departamentoDao")
public class DepartamentoDaoImpl implements DepartamentoDao {

	@Inject
    private SessionFactory sessionFactory;
	
	@Override
	public Departamento consultarDepartamentoDetalle(Long id){
		
		final Session session = sessionFactory.getCurrentSession();
		return (Departamento) session.createCriteria(Departamento.class)
				.add(Restrictions.eq("id", id))
				.uniqueResult();
	}

	
}
