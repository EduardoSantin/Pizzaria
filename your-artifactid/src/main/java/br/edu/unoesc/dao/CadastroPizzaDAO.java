package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.CadastroPizza;

public interface CadastroPizzaDAO extends JpaRepository<CadastroPizza, Long> {

	CadastroPizza findByCodigo(Long codigo);
	
	@Query("select p from CadastroPizza p where p.nome like ?1%")
	List<CadastroPizza> listaPizza(String filtroPizza);
}
