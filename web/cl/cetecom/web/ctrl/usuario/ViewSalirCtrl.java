package cl.cetecom.web.ctrl.usuario;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import cl.cetecom.dto.AddFormFailureDTO;
import cl.cetecom.dto.UsuarioDTO;
import cl.cetecom.dto.paramLogeoDTO;
import cl.cetecom.service.impl.SqlService;


public class ViewSalirCtrl implements Controller {

	private String view;

	public void setView(String view) {
		this.view = view;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) {

		Map<String, Object> model = new HashMap<String, Object>();

		
		HttpSession miSesion = (HttpSession) arg0.getSession();
		
		UsuarioDTO sdto = (UsuarioDTO) miSesion.getAttribute("persona");

		if(miSesion!=null) miSesion.invalidate();

		return new ModelAndView("redirect:login.htm", model);
	}

}
