package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.Pessoa;

public interface PessoaDAO extends JpaRepository<Pessoa, Long> {

	List<Pessoa> findByNome(String nome);

}
