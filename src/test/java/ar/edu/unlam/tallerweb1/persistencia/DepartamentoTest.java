package ar.edu.unlam.tallerweb1.persistencia;

import org.hibernate.Session;
import org.junit.Test;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.SpringTest;

import ar.edu.unlam.tallerweb1.modelo.Ciudad;
import ar.edu.unlam.tallerweb1.modelo.Departamento;
import ar.edu.unlam.tallerweb1.modelo.Direccion;
import ar.edu.unlam.tallerweb1.modelo.Habitacion;

import static org.assertj.core.api.Assertions.*;

import java.text.ParseException;

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
		
		Departamento londDepto = new Departamento();
		londDepto.setDescripcion("Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón.");
		londDepto.setMasInfo("Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón. El apartamento está situado en el borde del centro de Londres (zona 2) Las paredes del apartamento están cubiertas de obras de arte y los huéspedes están siempre sorprendidos por el estilo interesante del lugar. Venga a ver la pared de invitados llena de fotos polaroid de la gente increíble que se han quedado en nuestra casa. Lo más importante soy muy sociable, amable y siempre interesado en conocer gente nueva. Paso mucho tiempo mostrando invitados");
		londDepto.setDireccion(londresDir);
		session.save(londDepto);
		
		Habitacion londHabit = new Habitacion();
		londHabit.setDepartamento(londDepto);
		londHabit.setDescripcionHab("Encantadora habitación doble en zona tranquila y agradable");
		londHabit.setPrecio(950);
		session.save(londHabit);
					
		
		Departamento deptoBuscado = session.get(Departamento.class,londDepto.getId());
		assertThat(deptoBuscado).isNotNull();
	}
	
}
