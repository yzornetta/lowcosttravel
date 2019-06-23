package ar.edu.unlam.tallerweb1.modelo;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Cama {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private boolean plazaSimple;
	@ManyToOne
	private Habitacion habitacion;
	
	public Long getId(){
		return id;
	}
	public void setId(Long id){
		this.id=id;
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

}
