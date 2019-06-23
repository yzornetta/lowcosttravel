package ar.edu.unlam.tallerweb1.persistencia;

import org.hibernate.Session;
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

public class DepartamentoTest extends SpringTest {

	@Test@Transactional@Rollback(true)
	public void departamentoDaoTest() throws ParseException {
		
		Session session = getSession();
		
		Ciudad londres = new Ciudad();
		londres.setNombre("Londres");
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
		
		Direccion londresDir2 = new Direccion();
		londresDir2.setBarrio("Londres");
		londresDir2.setCalle("Piccadilly");
		londresDir2.setNumero(150);
		londresDir2.setCiudad(londres);
		londresDir2.setLatitud((float) 51.5084449);
		londresDir2.setLongitud((float) -0.1442763);
		session.save(londresDir2);
		
		Direccion londresDir3 = new Direccion();
		londresDir3.setBarrio("Londres");
		londresDir3.setCalle("James's Pl,");
		londresDir3.setNumero(35);
		londresDir3.setCiudad(londres);
		londresDir3.setLatitud((float) 51.5091798);
		londresDir3.setLongitud((float) -0.1471707);
		session.save(londresDir3);
		
		Departamento londDepto = new Departamento();
		londDepto.setDescripcion("Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón.");
		londDepto.setMasInfo("Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón. El apartamento está situado en el borde del centro de Londres (zona 2) Las paredes del apartamento están cubiertas de obras de arte y los huéspedes están siempre sorprendidos por el estilo interesante del lugar. Venga a ver la pared de invitados llena de fotos polaroid de la gente increíble que se han quedado en nuestra casa. Lo más importante soy muy sociable, amable y siempre interesado en conocer gente nueva. Paso mucho tiempo mostrando invitados");
		londDepto.setDireccion(londresDir);
		session.save(londDepto);
		
		Departamento londDepto2 = new Departamento();
		londDepto2.setDescripcion("Nuestro piso está compuesto por un amplio salón, cocina y baño. La oferta plana tiene una habitación doble muy cómoda, un gran armario y una mesa de noche. Es muy brillante y cálido.");
		londDepto2.setMasInfo("Nuestros huéspedes pueden usar todos los espacios comunes: sala de estar, cocina y baño. ¡Tenemos suficiente espacio para todos! Puede usar la cocina para su cena o desayuno");
		londDepto2.setDireccion(londresDir2);
		session.save(londDepto2);
		
		Departamento londDepto3 = new Departamento();
		londDepto3.setDescripcion("Con mucha luz y espacio, una cama doble en la elegante casa del sureste de Londres.");
		londDepto3.setMasInfo("Con acceso a nuestro encantador salón / comedor de planta abierta y cocina equipada con vista al jardín. También tendrás tu propio cuarto de baño privado con w / WC frente al dormitorio.");
		londDepto3.setDireccion(londresDir3);
		session.save(londDepto3);
		
		Habitacion londHabit = new Habitacion();
		londHabit.setDepartamento(londDepto);
		londHabit.setDescripcionHab("Encantadora habitación doble en zona tranquila y agradable");
		londHabit.setPrecio(950);
		session.save(londHabit);
		
		Habitacion londHabit2 = new Habitacion();
		londHabit2.setDepartamento(londDepto2);
		londHabit2.setDescripcionHab("Habitación limpia fresca y comoda");
		londHabit2.setPrecio(1000);
		session.save(londHabit2);
		
		Habitacion londHabit3 = new Habitacion();
		londHabit3.setDepartamento(londDepto3);
		londHabit3.setDescripcionHab("Acogedor dormitorio doble en Wembley");
		londHabit3.setPrecio(900);
		session.save(londHabit3);
		
		Cama londCama = new Cama();
		londCama.setHabitacion(londHabit);
		londCama.setPlazaSimple(true);
		session.save(londCama);

		Cama londCama2 = new Cama();
		londCama2.setHabitacion(londHabit2);
		londCama2.setPlazaSimple(false);
		session.save(londCama2);
		
		Cama londCama3 = new Cama();
		londCama3.setHabitacion(londHabit3);
		londCama3.setPlazaSimple(false);
		session.save(londCama3);
		
		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
		
		Reservacion londReservado = new Reservacion();
		londReservado.setHabReservada(londHabit);
		londReservado.setFechaIngreso(formato.parse("01/11/2019"));
		londReservado.setFechaSalida(formato.parse("08/11/2019"));
		session.save(londReservado);
		
		Reservacion londReservado2 = new Reservacion();
		londReservado2.setHabReservada(londHabit2);
		londReservado2.setFechaIngreso(formato.parse("01/11/2019"));
		londReservado2.setFechaSalida(formato.parse("21/11/2019"));
		session.save(londReservado2);
		
		Departamento deptoBuscado = session.get(Departamento.class,londDepto.getId());
		assertThat(deptoBuscado.getNombre()).isEqualTo("Artistic room - Amazing view");
				
									
	}
	
}
