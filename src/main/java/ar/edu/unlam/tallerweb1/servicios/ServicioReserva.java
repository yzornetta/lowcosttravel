package ar.edu.unlam.tallerweb1.servicios;

import java.util.Date;

import ar.edu.unlam.tallerweb1.modelo.Reservacion;

public interface ServicioReserva {

	Reservacion guardarReserva(Date fechaIngresoD, Date fechaSalidaD, Long id, String nombre, String apellido, String cardType, Long cardNum, String vencimiento, int clave, String pais, String email, Long cel);

}
