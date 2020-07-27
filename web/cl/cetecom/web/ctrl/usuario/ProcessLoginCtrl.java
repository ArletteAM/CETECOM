package cl.cetecom.web.ctrl.usuario;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import cl.cetecom.dto.SesionDTO;
import cl.cetecom.dto.UsuarioDTO;
import cl.cetecom.dto.paramLogeoDTO;
import cl.cetecom.service.impl.SqlService;


public class ProcessLoginCtrl implements Controller {

	private String view;
	private String viewMensajeria;
	private String viewMsgJefeCetecom;
	private String viewError;
	private String  viewEstadistica;
	
	private SqlService sql_service;

	public void setSql_service(SqlService sql_service) {
		this.sql_service = sql_service;
	}

	public void setViewError(String viewError) {
		this.viewError = viewError;
	}

	public void setView(String view) {
		this.view = view;
	}

	public void setViewMensajeria(String viewMensajeria) {
		this.viewMensajeria = viewMensajeria;
	}
	
	public void setViewMsgJefeCetecom(String viewMsgJefeCetecom) {
		this.viewMsgJefeCetecom = viewMsgJefeCetecom;
	}

	public void setViewEstadistica(String viewEstadistica) {
		this.viewEstadistica = viewEstadistica;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) {

		Map<String, Object> model = new HashMap<String, Object>();

		paramLogeoDTO param = new paramLogeoDTO();
		param.setLogin(arg0.getParameter("login"));
		param.setPassword(arg0.getParameter("password"));
		
		UsuarioDTO usuarioDTO;
		HttpSession session = arg0.getSession(true);
		
		try {
			
			usuarioDTO = sql_service.getLoginUsuario(param);
			session.setAttribute("persona", usuarioDTO);
			
			
			if (usuarioDTO.getId_tipo_usuario().equals(1)){
				return new ModelAndView("redirect:"+view+".htm");
			}else if(usuarioDTO.getId_tipo_usuario().equals(2)){
				return new ModelAndView("redirect:"+viewMensajeria+".htm");
			}else if(usuarioDTO.getId_tipo_usuario().equals(3)){
				return new ModelAndView("redirect:"+viewMsgJefeCetecom+".htm");	
			}else if(usuarioDTO.getId_tipo_usuario().equals(4)){
				return new ModelAndView("redirect:"+viewEstadistica+".htm");	
			}else{
				model.put("exito", "Login o password incorrectos.");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ModelAndView(viewError, model);

	}
}
