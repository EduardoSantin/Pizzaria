package br.edu.unoesc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;

import br.edu.unoesc.model.Entrega;

public interface EntregaDAO  extends JpaRepository<Entrega, Long>{

	Entrega findByCodigo(Long codigo);
	
	@Query("select entrega from Entrega entrega where status = 'pendente'")
	List<Entrega> findByStatus();
	
	@Procedure
	void salvaStatusEntrega(Long codigo);
	
	@Transactional
	@Modifying
	@Query("UPDATE Entrega e SET e.status = ?1 WHERE e.codigo = ?2")
	void updateStatus(String status, Long codigo);
}
