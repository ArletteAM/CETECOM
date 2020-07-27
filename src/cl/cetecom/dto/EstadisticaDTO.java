package cl.cetecom.dto;

import java.io.Serializable;

public class EstadisticaDTO implements Serializable { 
	
	
	private static final long serialVersionUID = 1130170561712999092L;
	
	private Integer cantidad;
	private Integer id_estado;
	private String nombre;
	
	public Integer getCantidad() {
		return cantidad;
	}
	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}
	public Integer getId_estado() {
		return id_estado;
	}
	public void setId_estado(Integer id_estado) {
		this.id_estado = id_estado;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	


}
