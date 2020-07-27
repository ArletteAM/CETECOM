package cl.cetecom.web.ctrl.usuario;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import cl.cetecom.dto.AllFormularioDTO;
import cl.cetecom.dto.UsuarioDTO;
import cl.cetecom.service.impl.SqlService;


public class FormByIdCtrl implements Controller {

	private String view;
	private String viewJC;

	
	private SqlService sql_service;

	public void setSql_service(SqlService sql_service) {
		this.sql_service = sql_service;
	}



	public void setViewJC(String viewJC) {
		this.viewJC = viewJC;
	}



	public void setView(String view) {
		this.view = view;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) {

		Map<String, Object> model = new HashMap<String, Object>();
		HttpSession miSesion = (HttpSession) arg0.getSession();
		UsuarioDTO sdto = (UsuarioDTO) miSesion.getAttribute("persona");
		
		Integer idform = Integer.parseInt(arg0.getParameter("idform"));

		try {
			AllFormularioDTO dto = sql_service.getFormularioById(idform);
			model.put("dto", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		if(sdto.getId_tipo_usuario().equals(3)){
			return new ModelAndView(viewJC, model);
		}else{
			return new ModelAndView(view, model);
		}
		
	}

}
