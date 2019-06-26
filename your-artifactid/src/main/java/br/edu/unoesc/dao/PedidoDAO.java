package br.edu.unoesc.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;

import br.edu.unoesc.model.Pedido;

public interface PedidoDAO extends JpaRepository<Pedido, Long> {
		
	@Query("select pedido from Pedido pedido where dataPedido = ?1")
	List<Pedido> findByData(LocalDate data);
	
	@Query("select pedido from Pedido pedido where codigo = ?1")
	List<Pedido> findByCodigo(Long codigo);
	
	@Procedure
	void lancarIDTamanho(Long codigo);
	
	@Procedure
	void calculaValor(Long codigo);
	
	
}
