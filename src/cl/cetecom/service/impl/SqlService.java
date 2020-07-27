package cl.cetecom.service.impl;

import java.util.List;

import cl.cetecom.dto.AddFormFailureDTO;
import cl.cetecom.dto.AllFormularioDTO;
import cl.cetecom.dto.EstadisticaDTO;
import cl.cetecom.dto.UsuarioDTO;
import cl.cetecom.dto.paramLogeoDTO;

public interface SqlService {

	UsuarioDTO getLoginUsuario(paramLogeoDTO dto) throws Exception;
	
	void addFormulario(AddFormFailureDTO dto) throws Exception;
	List<AllFormularioDTO> getFormularioByCriteria() throws Exception;
	AllFormularioDTO getFormularioById(Integer idform) throws Exception;
	void updateFormularioById (Integer idform, Integer idestado) throws Exception;
	List<AllFormularioDTO> getAllFormularioJefe() throws Exception;
	void addCreateUser(UsuarioDTO dto) throws Exception;
	
	public List<EstadisticaDTO> getCantidadEstadistica() throws Exception;
}
