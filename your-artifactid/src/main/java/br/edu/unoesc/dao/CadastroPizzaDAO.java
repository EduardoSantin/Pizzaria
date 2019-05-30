package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.CadastroPizza;

public interface CadastroPizzaDAO extends JpaRepository<CadastroPizza, Long> {

//	void pizzaSelecionada(Long codigo);

//	 @Query(name="pizzaSelecionada", value = "Select p from cadastroPizza p where codigo = ?1")
//	 Page<CadastroPizza> pizzaSelecionada(Long id);

}
