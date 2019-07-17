package ar.edu.unlam.tallerweb1.persistencia;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.SpringTest;
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
	
	@Test@Transactional@Rollback
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
		londDepto.setDescripcion("Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón.");
		londDepto.setDireccion(londresDir);
		session.save(londDepto);
		
		Habitacion londHabit = new Habitacion();
		londHabit.setDepartamento(londDepto);
		londHabit.setDescripcionHab("Encantadora habitación doble en zona tranquila y agradable");
		londHabit.setPrecio(950);
		session.save(londHabit);
		
		Habitacion londHabit2 = new Habitacion();
		londHabit2.setDepartamento(londDepto);
		londHabit2.setDescripcionHab("Habitación limpia fresca y comoda");
		londHabit2.setPrecio(1000);
		session.save(londHabit2);
		
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
		
		@SuppressWarnings("unchecked")
		List<Habitacion> listaHabCiudad = (List<Habitacion>) session.createCriteria(Habitacion.class)
 				.createAlias("departamento", "dep")
 				.createAlias("dep.direccion", "dir")
 				.createAlias("dir.ciudad", "ciu")
 				.add(Restrictions.eq("ciu.nombre", ciudad))
				.list();
		
		assertThat(listaHabCiudad.size()).isEqualTo(2);
			
	}

}
