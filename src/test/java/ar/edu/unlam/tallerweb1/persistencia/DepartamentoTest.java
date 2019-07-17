package ar.edu.unlam.tallerweb1.persistencia;

import static org.assertj.core.api.Assertions.assertThat;

import org.hibernate.Session;
import org.junit.Test;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.SpringTest;
import ar.edu.unlam.tallerweb1.modelo.Ciudad;
import ar.edu.unlam.tallerweb1.modelo.Departamento;
import ar.edu.unlam.tallerweb1.modelo.Direccion;


public class DepartamentoTest extends SpringTest {

	@Test@Transactional@Rollback
	public void departamentoDaoTest() {
		
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
		londDepto.setDireccion(londresDir);
		session.save(londDepto);					
		
		Departamento deptoBuscado = session.get(Departamento.class,londDepto.getId());
		assertThat(deptoBuscado).isNotNull();
	}
	
}
