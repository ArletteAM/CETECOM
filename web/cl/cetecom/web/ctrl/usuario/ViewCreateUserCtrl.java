package cl.cetecom.web.ctrl.usuario;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import cl.cetecom.dto.UsuarioDTO;
import cl.cetecom.service.impl.SqlService;


public class ViewCreateUserCtrl implements Controller {

	private String view;

	public void setView(String view) {
		this.view = view;
	}
	
	private SqlService sql_service;

	public void setSql_service(SqlService sql_service) {
		this.sql_service = sql_service;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) {

		Map<String, Object> model = new HashMap<String, Object>();
		String exito = arg0.getParameter("exito");
		
		HttpSession miSesion = (HttpSession) arg0.getSession();
		
		UsuarioDTO sdto = (UsuarioDTO) miSesion.getAttribute("persona");
		
		model.put("nombre", sdto.getNombre());
		model.put("paterno", sdto.getPaterno());
		model.put("materno", sdto.getMaterno());
		
		if(exito != null  && (exito.equals("1") || exito.equals("2"))){
			model.put("exito", exito);
		}

		return new ModelAndView(view, model);
	}
}
