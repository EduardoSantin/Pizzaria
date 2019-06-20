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
	private UsuarioDAO usuariodao;
	
	@RequestMapping(path = { "", "/" })
	public String loginForm(Model model) {
		return caregar(model);
	}
	
	private String caregar(Model model) {
		model.addAttribute("usuario", usuariodao.findAll());
		return "user/login";
	}
	
	
	@RequestMapping(path = "/salvar", method = RequestMethod.POST)
	public String salvar(Usuario usuario, Model model) {
		this.usuariodao.saveAndFlush(usuario);
		return caregar(model);
	}
	
	@RequestMapping(path = "/excluir/{codigo}", method = RequestMethod.GET)
	public String excluir(@PathVariable(name = "codigo") Long codigo, Model model) {
		Usuario user = usuariodao.findByCodigo(codigo);
		usuariodao.delete(user);
		
	 return "user/cadastro";
	}
}
