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
public class Habitacion {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	private Departamento departamento;
	@OneToMany(mappedBy = "habitacion")
	private List<Cama> cama = new ArrayList<>();
	
	private String tipo;
	
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
	public List<Cama> getCama(){
		return cama;
	}
	public void setCama(List<Cama> cama){
		this.cama=cama;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	
}
