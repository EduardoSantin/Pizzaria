package br.edu.unoesc.dao;


import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Usuario;

public interface UsuarioDAO extends JpaRepository<Usuario, Long>{

	Usuario findByCodigo(Long codigo);
	
	@Query("select user from Usuario user where user.email = ?1 and user.senha = ?2")
	Usuario findByLoginSenha(String email, String senha);
	
	@Query("select user from Usuario user where user.email = ?1")
	Usuario finByLogin(String email);
	
	@Transactional
	@Modifying
	@Query("UPDATE Usuario u SET u.senha = ?1 WHERE u.codigo = ?2")
	void updateSenha(String senha, Long codigo);
	
	
}
