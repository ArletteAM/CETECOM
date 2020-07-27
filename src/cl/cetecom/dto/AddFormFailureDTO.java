package cl.cetecom.dto;

import java.io.Serializable;

public class AddFormFailureDTO implements Serializable { 
	
	private static final long serialVersionUID = 4417411719275167003L;
	
	private Integer rdFred;
	private String btnNumeroSala;
	private String btnNumPC;
	private String txtDescripFalla;
	private Integer idUsuario;
	
	public Integer getRdFred() {
		return rdFred;
	}
	public void setRdFred(Integer rdFred) {
		this.rdFred = rdFred;
	}
	public String getBtnNumeroSala() {
		return btnNumeroSala;
	}
	public void setBtnNumeroSala(String btnNumeroSala) {
		this.btnNumeroSala = btnNumeroSala;
	}
	public String getBtnNumPC() {
		return btnNumPC;
	}
	public void setBtnNumPC(String btnNumPC) {
		this.btnNumPC = btnNumPC;
	}
	public String getTxtDescripFalla() {
		return txtDescripFalla;
	}
	public void setTxtDescripFalla(String txtDescripFalla) {
		this.txtDescripFalla = txtDescripFalla;
	}
	public Integer getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	



}
