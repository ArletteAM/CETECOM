package cl.cetecom.web.ctrl.usuario;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import cl.cetecom.dto.AddFormFailureDTO;
import cl.cetecom.service.impl.SqlService;


public class AddFormFailureCtrl implements Controller {

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

		Integer rdFred = Integer.parseInt(arg0.getParameter("rdFred"));
		String btnNumeroSala = arg0.getParameter("btnNumeroSala");
		String btnNumPC = arg0.getParameter("btnNumPC");
		String txtDescripFalla = arg0.getParameter("txtDescripFalla");
		
		AddFormFailureDTO dto = new AddFormFailureDTO();
		dto.setRdFred(rdFred);
		dto.setBtnNumeroSala(btnNumeroSala);
		dto.setBtnNumPC(btnNumPC);
		dto.setTxtDescripFalla(txtDescripFalla);
		dto.setIdUsuario(1);
		
		Boolean retorno;
		try {
			sql_service.addFormulario(dto);
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ModelAndView("redirect:home.htm?exito=1");
	}

}
