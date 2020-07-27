package cl.cetecom.dto;

import java.io.Serializable;

public class AllFormularioDTO implements Serializable { 
		
	private static final long serialVersionUID = 741665327682124918L;
	
	private Integer id_formul;
	private String NOM_FALLA;
	private String NUM_SALA;
	private String NUM_PC;
	private String DESC_FALLA;
	private String nombre;
	private String nom_estado;
	
	public Integer getId_formul() {
		return id_formul;
	}
	public void setId_formul(Integer id_formul) {
		this.id_formul = id_formul;
	}
	public String getNOM_FALLA() {
		return NOM_FALLA;
	}
	public void setNOM_FALLA(String nOM_FALLA) {
		NOM_FALLA = nOM_FALLA;
	}
	public String getNUM_SALA() {
		return NUM_SALA;
	}
	public void setNUM_SALA(String nUM_SALA) {
		NUM_SALA = nUM_SALA;
	}
	public String getNUM_PC() {
		return NUM_PC;
	}
	public void setNUM_PC(String nUM_PC) {
		NUM_PC = nUM_PC;
	}
	public String getDESC_FALLA() {
		return DESC_FALLA;
	}
	public void setDESC_FALLA(String dESC_FALLA) {
		DESC_FALLA = dESC_FALLA;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getNom_estado() {
		return nom_estado;
	}
	public void setNom_estado(String nom_estado) {
		this.nom_estado = nom_estado;
	}
	
	@Override
	public String toString() {
		return "AllFormularioDTO [id_formul=" + id_formul + ", NOM_FALLA="
				+ NOM_FALLA + ", NUM_SALA=" + NUM_SALA + ", NUM_PC=" + NUM_PC
				+ ", DESC_FALLA=" + DESC_FALLA + ", nombre=" + nombre
				+ ", nom_estado=" + nom_estado + "]";
	}
	
	
}
