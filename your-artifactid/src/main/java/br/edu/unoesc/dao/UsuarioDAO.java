package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Usuario;

public interface UsuarioDAO extends JpaRepository<Usuario, Long>{

	Usuario findByCodigo(Long codigo);
	
	@Query("select user from Usuario user where user.email = ?1 and user.senha = ?2")
	Usuario findByLoginSenha(String email, String senha);
	

}
