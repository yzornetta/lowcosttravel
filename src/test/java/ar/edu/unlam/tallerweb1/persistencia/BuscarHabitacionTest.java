package ar.edu.unlam.tallerweb1.persistencia;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.SpringTest;
import ar.edu.unlam.tallerweb1.modelo.Cama;
import ar.edu.unlam.tallerweb1.modelo.Ciudad;
import ar.edu.unlam.tallerweb1.modelo.Departamento;
import ar.edu.unlam.tallerweb1.modelo.Direccion;
import ar.edu.unlam.tallerweb1.modelo.Habitacion;
import ar.edu.unlam.tallerweb1.modelo.Reservacion;

import static org.assertj.core.api.Assertions.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

public class BuscarHabitacionTest extends SpringTest{
	
	@Test@Transactional@Rollback(true)
	public void habitacionDaoTest() throws ParseException {
		
		Session session = getSession();
		
		Ciudad londres = new Ciudad();
		londres.setNombre("Reino Unido");
		londres.setLatitud((float) 51.5072);
		londres.setLongitud((float) -0.1275);
		session.save(londres);
		
		Direccion londresDir = new Direccion();
		londresDir.setBarrio("Londres");
		londresDir.setCalle("Prescot");
		londresDir.setNumero(45);
		londresDir.setCiudad(londres);
		londresDir.setLatitud((float) 51.5213564);
		londresDir.setLongitud((float) -0.0750907);
		session.save(londresDir);
		
		Departamento londDepto = new Departamento();
		londDepto.setNombre("Artistic room - Amazing view");
		londDepto.setDescripcion("Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balc�n.");
		londDepto.setMasInfo("Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balc�n. El apartamento est� situado en el borde del centro de Londres (zona 2) Las paredes del apartamento est�n cubiertas de obras de arte y los hu�spedes est�n siempre sorprendidos por el estilo interesante del lugar. Venga a ver la pared de invitados llena de fotos polaroid de la gente incre�ble que se han quedado en nuestra casa. Lo m�s importante soy muy sociable, amable y siempre interesado en conocer gente nueva. Paso mucho tiempo mostrando invitados");
		londDepto.setDireccion(londresDir);
		session.save(londDepto);
		
		Habitacion londHabit = new Habitacion();
		londHabit.setDepartamento(londDepto);
		londHabit.setDescripcionHab("Encantadora habitaci�n doble en zona tranquila y agradable");
		londHabit.setPrecio(950);
		session.save(londHabit);
		
		Habitacion londHabit2 = new Habitacion();
		londHabit2.setDepartamento(londDepto);
		londHabit2.setDescripcionHab("Habitaci�n limpia fresca y comoda");
		londHabit2.setPrecio(1000);
		session.save(londHabit2);
		
		Cama londCama = new Cama();
		londCama.setHabitacion(londHabit);
		londCama.setPlazaSimple(true);
		session.save(londCama);
		
		Cama londCama2 = new Cama();
		londCama2.setHabitacion(londHabit2);
		londCama2.setPlazaSimple(false);
		session.save(londCama2);
		
		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
		
		Reservacion londReservado = new Reservacion();
		londReservado.setHabReservada(londHabit);
		londReservado.setFechaIngreso(formato.parse("01/11/2019"));
		londReservado.setFechaSalida(formato.parse("08/11/2019"));
		session.save(londReservado);
		
		Reservacion londReservado2 = new Reservacion();
		londReservado2.setHabReservada(londHabit2);
		londReservado2.setFechaIngreso(formato.parse("11/11/2019"));
		londReservado2.setFechaSalida(formato.parse("21/11/2019"));
		session.save(londReservado2);

		String ciudad="Reino Unido";
		String fechaIngresoS="2019/11/12";
		String fechaSalidaS="2019/11/22";
		
		@SuppressWarnings("unchecked")
		List<Habitacion> listaHabCiudad = (List<Habitacion>) session.createCriteria(Habitacion.class)
 				.createAlias("departamento", "dep")
 				.createAlias("dep.direccion", "dir")
 				.createAlias("dir.ciudad", "ciu")
 				.add(Restrictions.eq("ciu.nombre", ciudad))
				.list();
		
		assertThat(listaHabCiudad.size()).isEqualTo(2);
		
		 SQLQuery query = session.createSQLQuery("SELECT ha.id FROM habitacion as ha JOIN reservacion as re ON re.habitacionReservada_id = ha.id WHERE '"+ fechaIngresoS +"' BETWEEN fechaIngreso AND fechaSalida or '"+ fechaSalidaS +"' BETWEEN fechaIngreso AND fechaSalida or '"+ fechaIngresoS +"' < fechaIngreso AND '"+ fechaSalidaS +"' > fechaSalida");
		 query.addEntity(Habitacion.class);		 
		 List listaHabReservadasQuery = query.list(); 
		
		 assertThat(listaHabReservadasQuery.size()).isEqualTo(1); //Este test solo funciona si tenemos la bd limpia
		 								
	}

}