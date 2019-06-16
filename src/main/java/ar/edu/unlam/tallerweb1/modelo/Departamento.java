package ar.edu.unlam.tallerweb1.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Departamento {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@OneToOne
	private Direccion direccion;
	private float precio;
	private String nombre;
	private String descripcion;
	private String habitacion;
	@Column(columnDefinition="LONGTEXT")
	private String masInfo;
	
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
	
	public float getPrecio(){
		return precio;
	}
	public void setPrecio(float precio){
		this.precio=precio;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getHabitacion() {
		return habitacion;
	}
	public void setHabitacion(String habitacion) {
		this.habitacion = habitacion;
	}
	public String getMasInfo() {
		return masInfo;
	}
	public void setMasInfo(String masInfo) {
		this.masInfo = masInfo;
	}
	
	
	
}
