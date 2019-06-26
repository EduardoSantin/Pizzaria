package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;

import br.edu.unoesc.model.Entrega;

public interface EntregaDAO  extends JpaRepository<Entrega, Long>{

	Entrega findByCodigo(Long codigo);
	
	@Procedure
	void salvaStatusEntrega(Long codigo);
}
