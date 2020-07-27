package cl.cetecom.web.ctrl.usuario;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import cl.cetecom.dto.AllFormularioDTO;
import cl.cetecom.dto.UsuarioDTO;
import cl.cetecom.dto.paramLogeoDTO;
import cl.cetecom.service.impl.SqlService;


public class MsgJefeCetecomCtrl implements Controller {

	private String view;
	
	private SqlService sql_service;

	public void setSql_service(SqlService sql_service) {
		this.sql_service = sql_service;
	}

	public void setView(String view) {
		this.view = view;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) {

		Map<String, Object> model = new HashMap<String, Object>();
		HttpSession miSesion = (HttpSession) arg0.getSession();
		
		UsuarioDTO sdto = (UsuarioDTO) miSesion.getAttribute("persona");
		
		model.put("nombre", sdto.getNombre());
		model.put("paterno", sdto.getPaterno());
		model.put("materno", sdto.getMaterno());
		
		try {
			List<AllFormularioDTO> listado = sql_service.getAllFormularioJefe();
			model.put("listado", listado);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ModelAndView(view, model);
	}

}
