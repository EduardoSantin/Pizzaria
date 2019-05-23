package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.Gerente;

public interface GerenteDAO extends JpaRepository<Gerente, Long> {

	List<Gerente> findByNome(String nome);
}
