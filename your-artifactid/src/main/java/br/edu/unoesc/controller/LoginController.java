package br.edu.unoesc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

	@RequestMapping(path = { "", "/" })
	public String login() {
		return "login/login";
	}
}
