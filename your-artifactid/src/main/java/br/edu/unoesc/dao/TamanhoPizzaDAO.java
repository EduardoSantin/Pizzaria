package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.TamanhoPizza;

public interface TamanhoPizzaDAO extends JpaRepository<TamanhoPizza, Long> {

	List<TamanhoPizza> findByTamanho(String tamanho);

	TamanhoPizza findByCodigo(Long id);
}
