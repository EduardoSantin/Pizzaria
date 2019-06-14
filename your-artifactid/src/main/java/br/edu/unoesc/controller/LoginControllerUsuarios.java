package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.UsuarioDAO;
import br.edu.unoesc.model.Usuario;

@Controller
@RequestMapping("/usuario")
public class LoginControllerUsuarios {
	
	@Autowired
	private UsuarioDAO usuarioDAO;

	
	@RequestMapping(path = { "", "/" })
	public String loginForm() {
		return "usuario/login";
	}
	
	@RequestMapping(path=  "/cadastro")
	public String cadastro() {
		return "usuario/cadastro";
	}
	

	@RequestMapping(value = "/valida", method = RequestMethod.POST)
    public String valida(String email, String senha) {
        Usuario usuario = usuarioDAO.findByLoginSenha(email, senha);
        if (usuario != null) {
        	System.out.println(usuario + " logado");
            return "redirect:/pedido";
        } else {
        	System.out.println("nao logado");
            return "usuario/login";
        }
    }
	
}
