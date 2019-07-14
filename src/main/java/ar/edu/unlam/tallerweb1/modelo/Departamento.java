package ar.edu.unlam.tallerweb1.modelo;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@XmlRootElement
public class Departamento {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@OneToOne
	private Direccion direccion;
	private String descripcion;
	@Column(columnDefinition="LONGTEXT")
	private String masInfo;
//	@OneToMany(mappedBy = "departamento")
	@Transient
	private List<Habitacion> habitacion = new ArrayList<>();
	
	public Long getId(){
		return id;
	}
	public void setId(Long id){
		this.id=id;
	}
	
	public Direccion getDireccion(){
		return direccion;
	}
	public void setDireccion(Direccion direccion){
		this.direccion=direccion;
	}
	
	public List<Habitacion> getHabitacion(){
		return habitacion;
	}
	public void setHabitacion(List<Habitacion> habitacion){
		this.habitacion=habitacion;
	}
	
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	@JsonIgnore
	public String getMasInfo() {
		return masInfo;
	}
	public void setMasInfo(String masInfo) {
		this.masInfo = masInfo;
	}
	
	
	
}
