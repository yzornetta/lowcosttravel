package ar.edu.unlam.tallerweb1.modelo;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class Habitacion {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	private Departamento departamento;
	//@OneToMany(mappedBy = "habitacionReservada")
	@Transient
	private List<Reservacion> reservacion;
//	@OneToMany(mappedBy = "habitacion")
	@Transient
	private List<Foto> foto = new ArrayList<>();
	private String status;
	private float precio;
	private String descripcionHab;
	private String masInfoHab;
	private int huespedes;
	
	
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

	public List<Reservacion> getReservacion(){
		return reservacion;
	}
	public void getReservacion(List<Reservacion> reservacion){
		this.reservacion=reservacion;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public float getPrecio() {
		return precio;
	}
	public void setPrecio(float precio) {
		this.precio = precio;
	}
	public String getDescripcionHab() {
		return descripcionHab;
	}
	public void setDescripcionHab(String descripcionHab) {
		this.descripcionHab = descripcionHab;
	}
	public String getMasInfoHab() {
		return masInfoHab;
	}
	public void setMasInfoHab(String masInfoHab) {
		this.masInfoHab = masInfoHab;
	}
	public int getHuespedes() {
		return huespedes;
	}
	public void setHuespedes(int huespedes) {
		this.huespedes = huespedes;
	}

	public List<Foto> getFoto(){
		return foto;
	}
	public void getFoto(List<Foto> foto){
		this.foto=foto;
	}
	
}
