package br.edu.unoesc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/login")
public class LoginController {

	@RequestMapping(path = { "", "/" })
	public String login() {
		return "login/login";
	}
	@RequestMapping(value = "/acessar", method = RequestMethod.POST)
	public String acessar(String login, String senha, Model model) {
		if(login.equals("admin") && senha.equals("admin")) {
			return "redirect:/cadastroPizza";
		} else {
			model.addAttribute("Erro", "Email ou senha Incorreta!");
			return "login/login";
		}
	}

}