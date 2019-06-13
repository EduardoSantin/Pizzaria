package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.unoesc.dao.CadastroPizzaDAO;
import br.edu.unoesc.dao.TamanhoPizzaDAO;
@Controller
@RequestMapping("/pedido")
public class PedidoController {
	 @Autowired
	 private CadastroPizzaDAO cadastropizzaDao;
	 
	 @Autowired
	 private TamanhoPizzaDAO tamanhopizzaDao;


	@RequestMapping(path= {"", "/" })
	public String pedido(Model model) {
		model.addAttribute("pizzas", cadastropizzaDao.findAll());
		model.addAttribute("tamanhos", tamanhopizzaDao.findAll());
		
		return "pedido/pedido";
	}
	
}
