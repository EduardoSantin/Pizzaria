package br.edu.unoesc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/login")
public class LoginController {
	
	@RequestMapping(path = { "", "/" })
	public String login() {
		return "login/login";
	}
	
	public String log(HttpServletRequest request, HttpServletResponse response) {
		String admin = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		if("admin".equals(admin) && "admin".equals(senha)) {
			return "menu/menu";
		}else {
			return "login/erro";
		}
		
	}
	
	
	
	
	
	

}
//	private static final long serialVersionUID = 1L;
//	public LoginController() {
//		super();
//	}
//	
//	@RequestMapping(path = { "", "/" })
//	public String login() {
//		return "login/login";
//	}
//	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		String login = request.getParameter("login");
//		String senha = request.getParameter("senha");
//		
//		if(login.equals("admin") && senha.equals("admin")) {
//			request.setAttribute("login", login);
//			request.getRequestDispatcher("lista.jsp").forward(request, response);
//		}else {
//			request.getRequestDispatcher("erro.jsp").forward(request, response);
//		}
//	}