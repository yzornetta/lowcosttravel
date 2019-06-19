package ar.edu.unlam.tallerweb1.persistencia;

import static org.assertj.core.api.Assertions.assertThat;

import org.hibernate.Session;
import org.junit.Test;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.SpringTest;
import ar.edu.unlam.tallerweb1.modelo.Ciudad;

public class CiudadTest extends SpringTest {

	@Test@Transactional
	public void ciudadDaoTest() {
		
Session session = getSession();
		
		Ciudad londres = new Ciudad();
		londres.setNombre("Londres");
		londres.setLatitud((float) 51.5072);
		londres.setLongitud((float) -0.1275);
		session.save(londres);

		Ciudad ciudadBuscada = session.get(Ciudad.class,londres.getId());
		assertThat(ciudadBuscada.getNombre()).isEqualTo("Londres");
		
	}
}
