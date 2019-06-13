package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.protobuf.TextFormat.ParseException;

import br.edu.unoesc.dao.TamanhoPizzaDAO;
import br.edu.unoesc.model.TamanhoPizza;

@Controller
@RequestMapping("/tamanhoPizza")
public class TamanhoController {
	
	@Autowired 
	private TamanhoPizzaDAO tamanhoPizzaDao;
	
	@RequestMapping(path = { "", "/" })
	public String tamanhoPizza(Model model) {
		model.addAttribute("tamanhos", tamanhoPizzaDao.findAll());
		return "tamanhoPizza/tamanhoPizza";
	}

	@RequestMapping(path = "/listar", method = RequestMethod.POST)
	public String listar(TamanhoPizza tamanhoPizza, Model model) {
		tamanhoPizzaDao.saveAndFlush(tamanhoPizza);
		model.addAttribute("tamanhos", tamanhoPizzaDao.findAll());
		return "tamanhoPizza/tamanhoPizza";
	}

	@RequestMapping(path = "/editartamanho/{codigo}", method = RequestMethod.GET)
	public String editartamanho(@PathVariable(name = "codigo") Long codigo, Model model) throws ParseException {
		TamanhoPizza tamanhopizza = tamanhoPizzaDao.findByCodigo(codigo);
		model.addAttribute("codigo", tamanhopizza.getCodigo());
		model.addAttribute("tamanhoPizza", tamanhopizza);
		model.addAttribute("tamanhos", tamanhoPizzaDao.findAll());
		return "tamanhoPizza/tamanhoPizza";
	}
	

	@RequestMapping(path = "/excluirtamanho/{codigo}", method = RequestMethod.GET)
	public String excluirtamanho(@PathVariable(name = "codigo") Long codigo, Model model) {
		TamanhoPizza tamanhoPizza = tamanhoPizzaDao.findByCodigo(codigo);
		tamanhoPizzaDao.delete(tamanhoPizza);
		model.addAttribute("tamanhos", tamanhoPizzaDao.findAll());
		return "tamanhoPizza/tamanhoPizza";
	}
}
