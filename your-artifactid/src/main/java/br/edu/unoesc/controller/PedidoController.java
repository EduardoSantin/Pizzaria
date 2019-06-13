package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.banco.Banco;
import br.edu.unoesc.dao.CadastroPizzaDAO;
import br.edu.unoesc.dao.PedidoDAO;
import br.edu.unoesc.dao.TamanhoPizzaDAO;
import br.edu.unoesc.model.Pedido;

@Controller
@RequestMapping("/pedido")
public class PedidoController {
	
	 @Autowired
	 private CadastroPizzaDAO cadastropizzaDao;
	 
	 @Autowired
	 private TamanhoPizzaDAO tamanhopizzaDao;
	 
	 @Autowired
	 private PedidoDAO pedidoDao;

	@RequestMapping(path= {"", "/" })
	public String pedido(Model model) {
		model.addAttribute("pizzas", cadastropizzaDao.findAll());
		model.addAttribute("tamanhos", tamanhopizzaDao.findAll());
		return "pedido/pedido";
	}
	
	@RequestMapping(path = "/listar", method = RequestMethod.POST)
	public String listar(Pedido pedido, Model model) {
		pedidoDao.saveAndFlush(pedido);
		Banco.pedidos.add(pedido);
		model.addAttribute("pizzas", cadastropizzaDao.findAll());
		model.addAttribute("tamanhos", tamanhopizzaDao.findAll());
		model.addAttribute("carrinho", Banco.pedidos);
		return "pedido/pedido";
		
	}
	
	@RequestMapping(path = "/finalizar")
	public String finalizar(Pedido pedido, Model model) {
		model.addAttribute("carrinho", Banco.pedidos);
		return "pedido/finalizar";
	}
}
