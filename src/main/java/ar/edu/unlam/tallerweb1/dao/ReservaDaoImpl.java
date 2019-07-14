package ar.edu.unlam.tallerweb1.dao;

import java.util.Date;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Habitacion;
import ar.edu.unlam.tallerweb1.modelo.Reservacion;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

@Repository("reservaDao")
public class ReservaDaoImpl implements ReservaDao {
	
	@Inject
    private SessionFactory sessionFactory;
	
	@Override
	public void guardarReserva(Date fechaIngresoD, Date fechaSalidaD, Long id, String nombre, String apellido, String cardType, Long cardNum, String vencimiento, int clave, String pais, String email, Long cel) {
		
		final Session session = sessionFactory.getCurrentSession();
		
		Usuario usuario = new Usuario();
		usuario.setNombre(nombre);
		usuario.setApellido(apellido);
		usuario.setCardType(cardType);
		usuario.setCardNumber(cardNum);
		usuario.setVencimiento(vencimiento);
		usuario.setClave(clave);
		usuario.setPais(pais);
		usuario.setEmail(email);
		usuario.setCel(cel);
		session.save(usuario);
		
		Habitacion habitacionReservada = (Habitacion) session.createCriteria(Habitacion.class)
										.add(Restrictions.eq("id", id))
										.uniqueResult();
		
		Reservacion reservacion = new Reservacion();
		reservacion.setHabReservada(habitacionReservada);
		reservacion.setFechaIngreso(fechaIngresoD);
		reservacion.setFechaSalida(fechaSalidaD);
		reservacion.setUsuario(usuario);
		session.save(reservacion);
	}

}
