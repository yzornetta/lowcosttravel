package ar.edu.unlam.tallerweb1.modelo;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Precio {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "ID")
	private Long id;
	@Cascade(CascadeType.ALL)
	@OneToMany(mappedBy="precio")
	private List<Descuento> descuento = new ArrayList<>();
	
	
	public Long getId(){
		return id;
	}
	public void setId(Long id){
		this.id=id;
	}
	
	public void agregarDescuento(Descuento descuento){
		this.descuento.add(descuento);
		descuento.setPrecio(this);
	}
	
	
	public List<Descuento> getDescuento() {
		return descuento;
	}
	public void setDescuento(List<Descuento> descuento) {
		this.descuento = descuento;
	}
	
}
