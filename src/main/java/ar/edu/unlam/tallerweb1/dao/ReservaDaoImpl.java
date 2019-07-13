package ar.edu.unlam.tallerweb1.dao;

import java.util.Date;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import ar.edu.unlam.tallerweb1.modelo.Habitacion;
import ar.edu.unlam.tallerweb1.modelo.Reservacion;

@Repository("reservaDao")
public class ReservaDaoImpl implements ReservaDao {
	
	@Inject
    private SessionFactory sessionFactory;
	
	@Override
	public void guardarReserva(Date fechaIngresoD, Date fechaSalidaD, Long id) {
		
		final Session session = sessionFactory.getCurrentSession();
		
		Habitacion habitacionReservada = new Habitacion();
		habitacionReservada.setId(id);
		
		Reservacion reservacion = new Reservacion();
		reservacion.setHabReservada(habitacionReservada);
		reservacion.setFechaIngreso(fechaIngresoD);
		reservacion.setFechaSalida(fechaSalidaD);
		session.save(reservacion);
	}

}
