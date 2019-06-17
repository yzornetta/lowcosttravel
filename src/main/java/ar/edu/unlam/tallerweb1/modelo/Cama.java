package ar.edu.unlam.tallerweb1.modelo;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Cama {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private boolean plazaSimple;
	@ManyToOne
	private Habitacion habitacion;
	@OneToMany(mappedBy = "camaReservada")
	private List<Reservacion> reservacion= new ArrayList<>();
	
	private float precio;
	
	public Long getId(){
		return id;
	}
	public void setId(Long id){
		this.id=id;
	}

	public List<Reservacion> getReservacion(){
		return reservacion;
	}
	public void getReservacion(List<Reservacion> reservacion){
		this.reservacion=reservacion;
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
	public float getPrecio() {
		return precio;
	}
	public void setPrecio(float precio) {
		this.precio = precio;
	}
	
}
