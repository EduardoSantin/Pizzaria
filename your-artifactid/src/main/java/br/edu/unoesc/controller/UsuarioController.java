package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Usuario;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

	
	@Autowired
	private UsuarioDAO usuario;
	

	@RequestMapping(path = "/excluir/{codigo}", method = RequestMethod.GET)
	public String excluir(@PathVariable(name = "codigo") Long codigo, Model model) {
		Usuario user = usuario.findByCodigo(codigo);
		usuario.delete(user);
		
	 return "usuario/cadastro";
	}
}
