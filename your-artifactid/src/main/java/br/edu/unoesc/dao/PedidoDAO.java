package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;

import br.edu.unoesc.model.Pedido;

public interface PedidoDAO extends JpaRepository<Pedido, Long> {
	
	Pedido findByCodigo(Long codigo);
	
	@Procedure
	void lancarIDTamanho(Long codigo);
	
	@Procedure
	void calculaValor(Long codigo);
}
