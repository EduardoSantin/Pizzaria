package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.CadastroPizzaDAO;
import br.edu.unoesc.dao.TamanhoPizzaDAO;
import br.edu.unoesc.model.CadastroPizza;

@Controller
@RequestMapping("/cadastroPizza")
public class CadastroPizzaController {
	
	
	@Autowired
	private CadastroPizzaDAO cadastroPizzaDAO;

	
	@Autowired
	private TamanhoPizzaDAO tamanhoPizzaDAO;

	@RequestMapping(path = { "", "/" })
	public String cadastroPizza() {
		return "cadastroPizza/CadastroPizza";
	}

	@RequestMapping(path = "/enviarPizza", method = RequestMethod.POST)
	public String enviar(CadastroPizza cadastroPizza, Model model) {
		cadastroPizzaDAO.saveAndFlush(cadastroPizza);
		
		model.addAttribute("pizza", cadastroPizzaDAO.findAll());
		model.addAttribute("tamanhos", tamanhoPizzaDAO.findAll());
		
		return "cadastroPizza/mostrarPizza";
	}

}
