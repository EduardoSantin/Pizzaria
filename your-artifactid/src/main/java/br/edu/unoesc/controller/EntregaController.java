package br.edu.unoesc.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.EntregaDAO;
import br.edu.unoesc.dao.PedidoDAO;

@Controller
@RequestMapping("/entregas")
public class EntregaController {

	@Autowired
	private EntregaDAO entregaDao;
	
	@Autowired
	private PedidoDAO pedidoDao;
	
	private String caregar(Model model) {
		model.addAttribute("entrega", entregaDao.findByStatus());
		return "entregas/entregas";		
	}
	@RequestMapping(path = { "", "/" })
	public String entrega(Model model) {
		return caregar(model);
	}
	
	@RequestMapping(path = "/finalizar/{codigo}", method = RequestMethod.GET)
	public String finalizar(@PathVariable(name = "codigo") Long codigo, Model model) {
		entregaDao.updateStatus("finalizado", codigo);
		return caregar(model);
	}
	
	@RequestMapping(path = "/pedidos")
	public String pedidos(Model model) {
		model.addAttribute("pedidos", pedidoDao.findByData(LocalDate.now()));
		return "entregas/pedidos";
	}
	
	@RequestMapping(path = "/filtrapedidos/{codigo}", method = RequestMethod.GET)
	public String filtrapedidos(@PathVariable(name = "codigo") Long codigo, Model model) {
		model.addAttribute("pedidos", pedidoDao.findByCodigo(codigo));
		return "entregas/pedidos";
	}
}
