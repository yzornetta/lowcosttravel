package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Habitacion {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	private Departamento departamento;
	
	public Long getId(){
		return id;
	}
	public void setId(Long id){
		this.id=id;
	}
	public Departamento getDepartamento(){
		return departamento;
	}
	public void setDepartamento(Departamento departamento){
		this.departamento=departamento;
	}
	
}
