package ar.edu.unlam.tallerweb1.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Habitacion;

@Repository("similarHabDao")
public class SimilarHabDaoImpl implements SimilarHabDao{

	@Inject
    private SessionFactory sessionFactory;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<Habitacion> consultarHabitacionSimilar(String ciudad, Date fechaIngreso, Date fechaSalida, int huespedes) {

		
		 final Session session = sessionFactory.getCurrentSession();
		 
		 SQLQuery provinciaQuery = session.createSQLQuery("SELECT po.nombre FROM ciudad as ciu JOIN provincia as po ON ciu.provincia_id = po.id WHERE ciu.nombre='"+ciudad+"'");
		 String provincia = (String)provinciaQuery.uniqueResult();
		 
		 List<Habitacion> listaHabPronvincia = (List<Habitacion>) session.createCriteria(Habitacion.class)
				 				.add(Restrictions.ge("huespedes", huespedes))
				 				.createAlias("departamento", "dep")
				 				.createAlias("dep.direccion", "dir")
				 				.createAlias("dir.ciudad", "ciu")
				 				.createAlias("ciu.provincia", "prov")
				 				.add(Restrictions.eq("prov.nombre", provincia))
				 				.add(Restrictions.ne("ciu.nombre",ciudad))
								.list();
		 
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 String fechaIngresoS = sdf.format(fechaIngreso);
		 String fechaSalidaS = sdf.format(fechaSalida);
		 
		 
		 SQLQuery query = session.createSQLQuery("SELECT ha.id FROM habitacion as ha JOIN reservacion as re ON re.habitacionReservada_id = ha.id WHERE '"+ fechaIngresoS +"' BETWEEN fechaIngreso AND fechaSalida or '"+ fechaSalidaS +"' BETWEEN fechaIngreso AND fechaSalida or '"+ fechaIngresoS +"' < fechaIngreso AND '"+ fechaSalidaS +"' > fechaSalida");
		 query.addEntity(Habitacion.class);		 
		 List listaHabReservadasQuery = query.list(); 
		 
		 
		 List<Habitacion> listaHabReservadas = new ArrayList<>();
		 
		 for (Iterator iterator = listaHabReservadasQuery.iterator(); iterator.hasNext();){
			 Habitacion habitaciones = (Habitacion) iterator.next();
			 listaHabReservadas.add(habitaciones);
			 
		 }
		 
		 List<Habitacion> listaHabSimilares = new ArrayList<>();
		 
		 
		 for (Habitacion i : listaHabPronvincia) {
			 
			 
			for (Habitacion y : listaHabReservadas) {
				 
				 if(i.getId()==y.getId()) {
						
					 i.setStatus("Ocupado");	
				 }
					 	 
			 }
			
			if(i.getStatus()!="Ocupado" || listaHabReservadas.size()==0) {
				
				listaHabSimilares.add(i); 
			}		 
		 }
		 
		 return listaHabSimilares;		
		 
	}

}