package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		popular(model);
		return "cadastroPizza/CadastroPizza";
	}

	@RequestMapping(path = "/listar", method = RequestMethod.POST)
	public String listar(CadastroPizza cadastroPizza, Model model) {
		cadastroPizzaDAO.saveAndFlush(cadastroPizza);

		popular(model);

		return "cadastroPizza/CadastroPizza";
	}

	@RequestMapping(path = "/editar/{codigo}", method = RequestMethod.GET)
	public String editar(CadastroPizza cadastroPizza, Model model) throws ParseException {
		this.cadastroPizzaDAO.saveAndFlush(cadastroPizza);
		return "cadastroPizza/CadastroPizza";
	}

	@RequestMapping(path = "/excluir/{codigo}", method = RequestMethod.GET)
	public String excluir(Long id, Model model) {
//		CadastroPizza pizza = cadastroPizzaDAO.pizzaSelecionada(id);
//		cadastroPizzaDAO.delete(pizza);
		popular(model);
		return "cadastroPizza/CadastroPizza";
	}

	public void popular(Model model) {
		model.addAttribute("pizza", cadastroPizzaDAO.findAll());
		model.addAttribute("tamanhos", tamanhoPizzaDAO.findAll());
	}

}