package ar.edu.unlam.tallerweb1.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.type.LongType;
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
		 
		 //SQLQuery query = session.createSQLQuery("SELECT * FROM reservacion");
		 //List<Object[]> beto = query.list(); 
		// List<Cama> listaCamasReservadas = (List<Cama>) session.createSQLQuery("SELECT * FROM db.cama INNER JOIN db.reservacion ON reservacion.camaReservada_id=cama.id WHERE '2019-11-21' BETWEEN  fechaIngreso AND fechaSalida or '2019-11-23' BETWEEN fechaIngreso AND fechaSalida")
		//		 							.list();
		 
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 String fechaIngresoS = sdf.format(fechaIngreso);
		 SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
		 String fechaSalidaS = sdf2.format(fechaSalida);
		 
		 SQLQuery query = session.createSQLQuery("SELECT T0.id FROM cama as T0 JOIN reservacion as T1 ON T1.camaReservada_id = T0.id WHERE '"+ fechaIngresoS +"' BETWEEN fechaIngreso AND fechaSalida or '"+ fechaSalidaS +"' BETWEEN fechaIngreso AND fechaSalida");
		 query.addEntity(Cama.class);		 
		 List listaCamasReservadasQuery = query.list(); 
		 
		 
		 List<Cama> listaCamasReservadas = new ArrayList<>();
		 
		 for (Iterator iterator = listaCamasReservadasQuery.iterator(); iterator.hasNext();){
			 Cama camas = (Cama) iterator.next();
			 listaCamasReservadas.add(camas);
			 
		 }
		 
		 //for(Object object : listaCamasReservadasQuery){
			 	//Map row = (Map)object;
				//Cama camas = new Cama();
				//camas.setId(Long.parseLong((String) row.get("id")));
				//listaCamasReservadas.add(camas);
				
			//}
		 
		 //List<Cama> listaCamasReservadas = (List<Cama>) session.createCriteria(Cama.class)
			//	 	.createAlias("reservacion", "res")
					//.add(Restrictions.eq("res.fechaIngreso",fechaIngreso))
					//.add(Restrictions.eq("res.fechaSalida",fechaSalida))
					//.list();
		
		 List<Cama> listaCamasDisponibles = new ArrayList<>();
		 
		 
		 for (Cama i : listaCamas) {
			 
			if(listaCamasReservadas.size()==0) {
				 Cama c = new Cama(); 
				 c.setId(i.getId());
				 listaCamasDisponibles.add(c); 
			}
			 
			for (Cama y : listaCamasReservadas) {
				 
				 if(i.getId()==y.getId()) {
										 
				 }else {
					 
					 Cama c = new Cama(); 
					 c.setId(i.getId());
					 listaCamasDisponibles.add(c); 
				 }
					 	 
			 }
		 }
		 
		 return listaCamasDisponibles;
		 
		
		 //return (List<Departamento>) session.createCriteria(Departamento.class)
		//		.createAlias("direccion","d")
			//	.createAlias("d.ciudad", "c")
		      //.add(Restrictions.eq("c.nombre", ciudad))
//				.createAlias("habitacion", "habi")
	//			.createAlias("habi.cama", "cama")
		//		.createAlias("cama.reservacion", "res")
	//			.add(Restrictions.ne("res.fechaIngreso",fechaIngreso))
		//		.add(Restrictions.ne("res.fechaSalida",fechaSalida))
			//	.list();
		
		
		
	}

	
}
