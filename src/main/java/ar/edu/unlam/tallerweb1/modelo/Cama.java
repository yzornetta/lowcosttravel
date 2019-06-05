package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Cama {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private boolean reservado;
	private boolean plazaSimple;
	@ManyToOne
	private Habitacion habitacion;
	@OneToOne
	private Precio precio;
	
	public Long getId(){
		return id;
	}
	public void getId(Long id){
		this.id=id;
	}
	public boolean getReservado() {
		return reservado;
	}
	public void setReservado(boolean reservado) {
		this.reservado = reservado;
	}
	public boolean getPlazaSimple() {
		return plazaSimple;
	}
	public void setPlazaSimple(boolean plazaSimple) {
		this.plazaSimple = plazaSimple;
	}
	public Habitacion getHabitacion(){
		return habitacion;
	}
	public void setHabitacion(Habitacion habitacion){
		this.habitacion=habitacion;
	}
	public Precio getPrecio(){
		return precio;
			
	}
	public void setPrecio(Precio precio){
		this.precio=precio;
	}
	
}
