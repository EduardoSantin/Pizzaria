package br.edu.unoesc.controller;

import javax.naming.spi.DirStateFactory.Result;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
//@WebServlet("/LoginController")
public class LoginController {

	private final Result result;
	
	protected LoginController() {
		this(null);
	}

	public LoginController(Result result) {
		
		
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