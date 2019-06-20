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

	@Test@Transactional@Rollback
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
		
		Departamento londDepto = new Departamento();
		londDepto.setNombre("Artistic room - Amazing view");
		londDepto.setDescripcion("Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón.");
		londDepto.setMasInfo("Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón. El apartamento está situado en el borde del centro de Londres (zona 2) Las paredes del apartamento están cubiertas de obras de arte y los huéspedes están siempre sorprendidos por el estilo interesante del lugar. Venga a ver la pared de invitados llena de fotos polaroid de la gente increíble que se han quedado en nuestra casa. Lo más importante soy muy sociable, amable y siempre interesado en conocer gente nueva. Paso mucho tiempo mostrando invitados");
		londDepto.setDireccion(londresDir);
		session.save(londDepto);
		
		Habitacion londHabit = new Habitacion();
		londHabit.setDepartamento(londDepto);
		londHabit.setTipo("Compartido");
		session.save(londHabit);
		
		Cama londCama = new Cama();
		londCama.setHabitacion(londHabit);
		londCama.setPlazaSimple(true);
		londCama.setPrecio(900);
		session.save(londCama);

		Cama londCama2 = new Cama();
		londCama2.setHabitacion(londHabit);
		londCama2.setPlazaSimple(true);
		londCama2.setPrecio(900);
		session.save(londCama2);
		
		Cama londCama3 = new Cama();
		londCama3.setHabitacion(londHabit);
		londCama3.setPlazaSimple(true);
		londCama3.setPrecio(900);
		session.save(londCama3);
		
		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
		
		Reservacion londReservado = new Reservacion();
		londReservado.setCamaReservada(londCama);
		londReservado.setFechaIngreso(formato.parse("01/11/2019"));
		londReservado.setFechaSalida(formato.parse("08/11/2019"));
		session.save(londReservado);
		
		Reservacion londReservado2 = new Reservacion();
		londReservado2.setCamaReservada(londCama2);
		londReservado2.setFechaIngreso(formato.parse("01/11/2019"));
		londReservado2.setFechaSalida(formato.parse("21/11/2019"));
		session.save(londReservado2);
		
		Departamento deptoBuscado = session.get(Departamento.class,londDepto.getId());
		assertThat(deptoBuscado.getNombre()).isEqualTo("Artistic room - Amazing view");
				
									
	}
	
}
