package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.GerenteDAO;
import br.edu.unoesc.model.Gerente;


@Controller
@RequestMapping("/gerente")
public class GerenteController {

	@Autowired
	private GerenteDAO gerenteDao;

	@RequestMapping(path = { "", "/" })
	public String cadastro() {
		return "gerente/cadastro";
	}

	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String enviar(Gerente gerente, Model model) {
		gerenteDao.saveAndFlush(gerente);
		
		model.addAttribute("gerentes", gerenteDao.findAll());
		
		return "gerente/mostrar";
	}

}
