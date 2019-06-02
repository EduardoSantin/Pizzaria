package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.CadastroPizza;

public interface CadastroPizzaDAO extends JpaRepository<CadastroPizza, Long> {

	CadastroPizza findByCodigo(Long codigo);

}
