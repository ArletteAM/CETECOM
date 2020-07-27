package cl.cetecom.web.ctrl.usuario;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import cl.cetecom.dto.AddFormFailureDTO;
import cl.cetecom.dto.UsuarioDTO;
import cl.cetecom.dto.paramLogeoDTO;
import cl.cetecom.service.impl.SqlService;


public class AddCreateUserCtrl implements Controller {

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

		String login = arg0.getParameter("login");
		String clave = arg0.getParameter("clave");
		String nombre = arg0.getParameter("nombre");
		String paterno = arg0.getParameter("paterno");
		String materno = arg0.getParameter("materno");
		Integer id_tipo_usuario = Integer.parseInt(arg0.getParameter("id_tipo_usuario"));
			
		
		UsuarioDTO dto = new UsuarioDTO();
		//dto.setId_usuario(id_usuario);
		dto.setLogin(login);
		dto.setClave(clave);
		dto.setNombre(nombre);
		dto.setPaterno(paterno);
		dto.setMaterno(materno);
		dto.setId_tipo_usuario(id_tipo_usuario);
		
		Boolean retorno;
		try {
			sql_service.addCreateUser(dto);
			model.put("exito", "1");
		} catch (Exception e) {
			model.put("exito", "2");
			e.printStackTrace();
		}

		return new ModelAndView("redirect:viewcreateuser.htm", model);
	}

}
