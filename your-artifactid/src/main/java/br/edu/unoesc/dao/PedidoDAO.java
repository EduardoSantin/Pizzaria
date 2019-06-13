package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.Pedido;

public interface PedidoDAO extends JpaRepository<Pedido, Long> {
	
	List<Pedido> findBySabor(String sabor);

}
