package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.CadastroPizza;

public interface CadastroPizzaDAO extends JpaRepository<CadastroPizza, Long> {

	List<CadastroPizza> findByNome(String nome);

}
