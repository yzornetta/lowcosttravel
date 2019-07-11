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


@Repository("ciudadDao")
public class CiudadDaoImpl implements CiudadDao {

	
	
	@Inject
    private SessionFactory sessionFactory;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<Habitacion> consultarCiudad(String ciudad, Date fechaIngreso, Date fechaSalida, int huespedes) {

		
		 final Session session = sessionFactory.getCurrentSession();
		 
		 List<Habitacion> listaHabCiudad = (List<Habitacion>) session.createCriteria(Habitacion.class)
				 				.add(Restrictions.ge("huespedes", huespedes))
				 				.createAlias("departamento", "dep")
				 				.createAlias("dep.direccion", "dir")
				 				.createAlias("dir.ciudad", "ciu")
				 				.add(Restrictions.eq("ciu.nombre", ciudad))
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
		 
		 List<Habitacion> listaHabDisponibles = new ArrayList<>();
		 
		 
		 for (Habitacion i : listaHabCiudad) {
			 
			 
			for (Habitacion y : listaHabReservadas) {
				 
				 if(i.getId()==y.getId()) {
						
					 i.setStatus("Ocupado");	
				 }
					 	 
			 }
			
			if(i.getStatus()!="Ocupado" || listaHabReservadas.size()==0) {
				
				listaHabDisponibles.add(i); 
			}		 
		 }
		 
		 return listaHabDisponibles;		
		 
	}

	@Override
	public List<Habitacion> consultarCiudadConPrecio(String ciudad, Date fechaIngreso, Date fechaSalida,
			String precioMin, String precioMax, int huespedes) {
		final Session session = sessionFactory.getCurrentSession();
		
		float min = Float.parseFloat(precioMin);
		float max = Float.parseFloat(precioMax);
		
		List<Habitacion> listaHabCiudad = (List<Habitacion>) session.createCriteria(Habitacion.class)
					.add(Restrictions.ge("huespedes", huespedes))
					.add(Restrictions.ge("precio", min))
					.add(Restrictions.le("precio", max))
					.createAlias("departamento", "dep")
	 				.createAlias("dep.direccion", "dir")
	 				.createAlias("dir.ciudad", "ciu")
	 				.add(Restrictions.eq("ciu.nombre", ciudad))
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
		 
		 List<Habitacion> listaHabDisponibles = new ArrayList<>();
		 
		 
		 for (Habitacion i : listaHabCiudad) {
			 
			 
			for (Habitacion y : listaHabReservadas) {
				 
				 if(i.getId()==y.getId()) {
						
					 i.setStatus("Ocupado");	
				 }
					 	 
			 }
			
			if(i.getStatus()!="Ocupado" || listaHabReservadas.size()==0) {
				
				listaHabDisponibles.add(i); 
			}		 
		 }
		 
		 return listaHabDisponibles;		
		 
	}
}
