package cl.cetecom.service.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import cl.cetecom.dao.SqlDAO;
import cl.cetecom.dto.AddFormFailureDTO;
import cl.cetecom.dto.AllFormularioDTO;
import cl.cetecom.dto.EstadisticaDTO;
import cl.cetecom.dto.UsuarioDTO;
import cl.cetecom.dto.paramLogeoDTO;

@Service
public class SqlServiceImpl implements SqlService{
	protected final Log logger = LogFactory.getLog(getClass());

	private SqlDAO	 dao_usuarios ;


	public void setDao_usuarios(SqlDAO dao_usuarios) {
		this.dao_usuarios = dao_usuarios;
	}


	@Override
	public UsuarioDTO getLoginUsuario(paramLogeoDTO param) throws Exception {
		
		logger.info("(CETECOM) getUsuario ");
		
		UsuarioDTO salida = null;
		
		
	    HashMap<Object, Object> map = new HashMap<Object, Object>();
	    map.put("login", param.getLogin());
	    map.put("clave", param.getPassword());				
		
	    try {
	    	salida = dao_usuarios.getLoginUsuario(map);
	    	if (salida == null){
	    		salida.setId_tipo_usuario(99);
	    	}else
	    	{
				if (salida.getLogin().equals(param.getLogin()) && salida.getClave().equals(param.getPassword())){
					salida.setId_tipo_usuario(salida.getId_tipo_usuario());
				
				}
			}    	
		} catch (Exception e) {
			logger.error("Error :" + e.getMessage());
			salida.setExito(false);
			//throw new Exception("Error :" + e.getMessage());
		}
	    
	    return salida;
		
	}


	@Override
	public void addFormulario(AddFormFailureDTO dto) throws Exception {
		logger.info("(CETECOM) addFormulario ");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		HashMap<Object, Object> map1 = new HashMap<Object, Object>();
		
		map.put("seq_falla", dao_usuarios.getSecuenciaFalla(map1));
		map.put("idtipofalla", dto.getRdFred());	
	    map.put("numsala", dto.getBtnNumeroSala());	
	    map.put("numpc", dto.getBtnNumPC());	
	    map.put("desfalla", dto.getTxtDescripFalla());	
	    map.put("idusario", dto.getIdUsuario());	
		
	    try {
			 dao_usuarios.addFormulario(map);
		} catch (Exception e) {
			logger.error("Error :" + e.getMessage());
		}
	}


	@Override
	public List<AllFormularioDTO> getFormularioByCriteria() throws Exception {
		logger.info("(CETECOM) getFormularioByCriteria ");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		List<AllFormularioDTO> salida = null;
		try {
			salida = dao_usuarios.getAllFormulario(map);
		} catch (Exception e) {
			logger.error("Error :" + e.getMessage());
		}
		return salida;
	}


	@Override
	public AllFormularioDTO getFormularioById(Integer idform) throws Exception {
		logger.info("(CETECOM) getFormularioById ");
		
		AllFormularioDTO retorno = new AllFormularioDTO();
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("idform", idform);
		
		try {
			retorno = dao_usuarios.getFormularioById(map);
		} catch (Exception e) {
			logger.error("Error :" + e.getMessage());
		}
		
		return retorno;
	}


	@Override
	public void updateFormularioById(Integer idform, Integer idestado) throws Exception {
		logger.info("(CETECOM) updateFormularioById ");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		
		map.put("idform", idform);
		map.put("idestado", idestado);
		
		try {
			dao_usuarios.updateFormularioById(map);
		} catch (Exception e) {
			logger.error("Error :" + e.getMessage());
		}
		
	}
	
	@Override
	public List<AllFormularioDTO> getAllFormularioJefe() throws Exception {
		logger.info("(CETECOM) getAllFormularioJefe ");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		List<AllFormularioDTO> salida = null;
		try {
			salida = dao_usuarios.getAllFormulario(map);
		} catch (Exception e) {
			logger.error("Error :" + e.getMessage());
		}
		return salida;
	}


	@Override
	public void addCreateUser(UsuarioDTO dto) throws Exception {
		logger.info("(CETECOM) addCreateUser ");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		HashMap<Object, Object> map1 = new HashMap<Object, Object>();
		
		map.put("sq_usuario", dao_usuarios.getSeqCreateUser(map1));
	    map.put("login", dto.getLogin());	
	    map.put("clave", dto.getClave());	
	    map.put("nombre", dto.getNombre());	
	    map.put("paterno", dto.getPaterno());	
	    map.put("materno", dto.getMaterno());	
	    map.put("id_tipo_usuario", dto.getId_tipo_usuario());
	    
	    paramLogeoDTO param = new paramLogeoDTO();
	    param.setLogin(dto.getLogin());
	    param.setPassword(dto.getClave());
	    
	    try {
			UsuarioDTO salida = null;
			
		    HashMap<Object, Object> map2 = new HashMap<Object, Object>();
		    map2.put("login", param.getLogin());
		    map2.put("clave", param.getPassword());	
		    
		    try {
		    	salida = dao_usuarios.getLoginUsuario(map2);
		    	if(salida != null && salida.getLogin().equals(dto.getLogin())){
		    		throw new Exception("El usuario ya se encuntra ingresado");
		    	}
			} catch (Exception e) {
				throw new Exception("El usuario ya existe.");
			}

	    	try {
				 dao_usuarios.addCreateUser(map);
			} catch (Exception e) {
				logger.error("Error :" + e.getMessage());
			}
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
	}

	public List<EstadisticaDTO> getCantidadEstadistica() throws Exception {
		logger.info("(CETECOM) getCantidadEstadistica ");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		List<EstadisticaDTO> salida = null;
		try {
			salida = dao_usuarios.getCantidadEstadistica(map);
		} catch (Exception e) {
			logger.error("Error :" + e.getMessage());
		}
		return salida;
	}
	
}
