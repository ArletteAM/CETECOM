package cl.cetecom.web.ctrl.usuario;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import cl.cetecom.dto.AddFormFailureDTO;
import cl.cetecom.dto.paramLogeoDTO;
import cl.cetecom.service.impl.SqlService;


public class UpdateFormCtrl implements Controller {

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

		Integer idform = Integer.parseInt(arg0.getParameter("idform"));
		Integer idestado = Integer.parseInt(arg0.getParameter("idestado"));
		
		Boolean retorno;
		try {
			sql_service.updateFormularioById(idform, idestado);
			model.put("exito", true);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ModelAndView(view, model);
	}

}
