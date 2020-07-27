package cl.cetecom.dao;

import java.util.HashMap;
import java.util.List;

import cl.cetecom.dto.AllFormularioDTO;
import cl.cetecom.dto.EstadisticaDTO;
import cl.cetecom.dto.UsuarioDTO;

public interface SqlDAO {

	public UsuarioDTO getLoginUsuario(HashMap<Object, Object> hashMapParameter);
	void addFormulario(HashMap<Object, Object> hashMapParameter) throws Exception;
	public Integer getSecuenciaFalla(HashMap<Object, Object> hashMapParameter);
	public List<AllFormularioDTO> getAllFormulario(HashMap<Object, Object> hashMapParameter);
	public AllFormularioDTO getFormularioById(HashMap<Object, Object> hashMapParameter);
	void updateFormularioById(HashMap<Object, Object> hashMapParameter) throws Exception;
	public List<AllFormularioDTO> getAllFormularioJefe(HashMap<Object, Object> hashMapParameter);
	void addCreateUser(HashMap<Object, Object> hashMapParameter) throws Exception;
	public Integer getSeqCreateUser(HashMap<Object, Object> hashMapParameter);
	
	public List<EstadisticaDTO> getCantidadEstadistica(HashMap<Object, Object> hashMapParameter);
}