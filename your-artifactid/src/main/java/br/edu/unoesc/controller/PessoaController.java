package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.PessoaDAO;
import br.edu.unoesc.model.Pessoa;

@Controller
@RequestMapping("/pessoa")
public class PessoaController {

	@Autowired
	private PessoaDAO pessoaDao;
	
	@RequestMapping(path = { "", "/" })
	public String cadastro() {
		return "pessoa/cadastro";
	}

	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String enviar(Pessoa pessoa, Model model) {
		pessoaDao.saveAndFlush(pessoa);
		
		model.addAttribute("pessoas", pessoaDao.findAll());
		
		return "pessoa/mostrar";
	}

}
