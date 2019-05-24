package br.edu.unoesc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class MenuController {
	@RequestMapping(path = { "", "/" })
	public String login() {
		return "menu/menu";
	}
}
