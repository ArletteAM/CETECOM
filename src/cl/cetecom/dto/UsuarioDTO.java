package cl.cetecom.dto;

import java.io.Serializable;

public class UsuarioDTO implements Serializable { 
		
	private static final long serialVersionUID = 4828219242362670827L;
	
	private Number id_usuario;
	private String login;
	private String clave;
	private String nombre;
	private String paterno;
	private String materno;
	private Integer id_tipo_usuario;
	private Boolean exito;
	
	public Number getId_usuario() {
		return id_usuario;
	}
	public void setId_usuario(Number id_usuario) {
		this.id_usuario = id_usuario;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
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
	public Integer getId_tipo_usuario() {
		return id_tipo_usuario;
	}
	public void setId_tipo_usuario(Integer id_tipo_usuario) {
		this.id_tipo_usuario = id_tipo_usuario;
	}
	public Boolean getExito() {
		return exito;
	}
	public void setExito(Boolean exito) {
		this.exito = exito;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	@Override
	public String toString() {
		return "UsuarioDTO [id_usuario=" + id_usuario + ", login=" + login
				+ ", clave=" + clave + ", nombre=" + nombre + ", paterno="
				+ paterno + ", materno=" + materno + ", id_tipo_usuario="
				+ id_tipo_usuario + ", exito=" + exito + "]";
	}
	
	
}
