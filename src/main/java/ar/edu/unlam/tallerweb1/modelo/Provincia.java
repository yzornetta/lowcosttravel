package ar.edu.unlam.tallerweb1.modelo;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Provincia {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String nombre;
//	@OneToMany(mappedBy = "provincia")
	@Transient
	private List<Ciudad> ciudad = new ArrayList<>();
	
	public Long getId(){
		return id;
	}
	
	public void setId(Long id){
		this.id= id;
	}
	
	public String getNombre(){
		return nombre;
		
	}
	
	public void setNombre(String nombre){
		this.nombre=nombre;
	}
	
	public List<Ciudad> getCiudad() {
		return ciudad;
	}
	
	public void setCiudad(List<Ciudad> ciudad) {
		this.ciudad=ciudad;
	}
}
