package cl.cetecom.dto;

import java.io.Serializable;

public class SesionDTO implements Serializable { 
		
	private static final long serialVersionUID = 5502497626358549843L;
	
	
	private String nombre;
	private String paterno;
	private String materno;
	
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPaterno() {
		return paterno;
	}
	public void setPaterno(String paterno) {
		this.paterno = paterno;
	}
	public String getMaterno() {
		return materno;
	}
	public void setMaterno(String materno) {
		this.materno = materno;
	}
	
	
	
}
