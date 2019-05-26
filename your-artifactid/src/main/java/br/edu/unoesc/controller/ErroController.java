package br.edu.unoesc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/erro")
public class ErroController {

	@RequestMapping(path= {"","/"})
	public String erro() {
		return "erro/erro";
	}
}
