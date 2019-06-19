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

import ar.edu.unlam.tallerweb1.modelo.Cama;


@Repository("ciudadDao")
public class CiudadDaoImpl implements CiudadDao {

	
	
	@Inject
    private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Cama> consultarCiudad(String ciudad, Date fechaIngreso, Date fechaSalida) {

		
		 final Session session = sessionFactory.getCurrentSession();
		 
		 List<Cama> listaCamas = (List<Cama>) session.createCriteria(Cama.class)
				 				.createAlias("habitacion", "hab")
				 				.createAlias("hab.departamento", "dep")
				 				.createAlias("dep.direccion", "dir")
				 				.createAlias("dir.ciudad", "ciu")
				 				.add(Restrictions.eq("ciu.nombre", ciudad))
								.list();
		 
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 String fechaIngresoS = sdf.format(fechaIngreso);
		 String fechaSalidaS = sdf.format(fechaSalida);
		 
		 SQLQuery query = session.createSQLQuery("SELECT T0.id FROM cama as T0 JOIN reservacion as T1 ON T1.camaReservada_id = T0.id WHERE '"+ fechaIngresoS +"' BETWEEN fechaIngreso AND fechaSalida or '"+ fechaSalidaS +"' BETWEEN fechaIngreso AND fechaSalida");
		 query.addEntity(Cama.class);		 
		 List listaCamasReservadasQuery = query.list(); 
		 
		 
		 List<Cama> listaCamasReservadas = new ArrayList<>();
		 
		 for (Iterator iterator = listaCamasReservadasQuery.iterator(); iterator.hasNext();){
			 Cama camas = (Cama) iterator.next();
			 listaCamasReservadas.add(camas);
			 
		 }
		 
		 List<Cama> listaCamasDisponibles = new ArrayList<>();
		 
		 
		 for (Cama i : listaCamas) {
			 
			 
			for (Cama y : listaCamasReservadas) {
				 
				 if(i.getId()==y.getId()) {
						
					 i.setStatus("Ocupado");	
				 }
					 	 
			 }
			
			if(i.getStatus()!="Ocupado" || listaCamasReservadas.size()==0) {
				
				listaCamasDisponibles.add(i); 
			}		 
		 }
		 
		 return listaCamasDisponibles;		
		 
		
	}
	
}
