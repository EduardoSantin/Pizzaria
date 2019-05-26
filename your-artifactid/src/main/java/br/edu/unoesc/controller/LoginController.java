package br.edu.unoesc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/login")
@WebServlet("/LoginController")
public class LoginController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	
	public LoginController() {
		super();
	}

	@RequestMapping(path = { "", "/" })
	public String login() {
		return "login/login";
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String admin = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		if(admin.equals("admin") && senha.equals("admin")) {
			request.getRequestDispatcher("menu").forward(request, response);
		} else {
			request.getRequestDispatcher("erro").forward(request, response);
		}
		
	}
}