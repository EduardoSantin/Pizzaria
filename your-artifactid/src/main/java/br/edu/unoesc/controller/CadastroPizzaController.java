package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.protobuf.TextFormat.ParseException;

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
	public String cadastroPizza(Model model) {
		return caregar(model);
	}
	
	private String caregar(Model model) {
		model.addAttribute("pizza", cadastroPizzaDAO.findAll());
		model.addAttribute("tamanhos", tamanhoPizzaDAO.findAll());
		return "cadastroPizza/CadastroPizza";
	}

	@RequestMapping(path = "/listar", method = RequestMethod.POST)
	public String listar(CadastroPizza cadastroPizza, Model model) {
		cadastroPizzaDAO.saveAndFlush(cadastroPizza);
		return caregar(model);
	}

	@RequestMapping(path = "/editar/{codigo}", method = RequestMethod.GET)
	public String editar(@PathVariable(name = "codigo") Long codigo, Model model) throws ParseException {
		CadastroPizza pizza = cadastroPizzaDAO.findByCodigo(codigo);
		model.addAttribute("codigo", pizza.getCodigo());
		model.addAttribute("nome", pizza.getNome());
		return caregar(model);
	}

	@RequestMapping(path = "/excluir/{codigo}", method = RequestMethod.GET)
	public String excluir(@PathVariable(name = "codigo") Long codigo, Model model) {
		CadastroPizza pizza = cadastroPizzaDAO.findByCodigo(codigo);
		cadastroPizzaDAO.delete(pizza);
		return caregar(model);
	}

}