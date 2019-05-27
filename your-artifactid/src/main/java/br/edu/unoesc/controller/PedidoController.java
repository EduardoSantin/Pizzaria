package br.edu.unoesc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pedido")
public class PedidoController {

	@RequestMapping(path= {"", "/" })
	public String pedido() {
		return "pedido/pedido";
	}
}
