<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script src=<c:url value="/resources/js/escondeDiv.js"/>></script>

<c:import url="../header_footer/header.jsp"></c:import>

<div class="progress">
	<div class="progress-bar progress-bar-success" style="width: 90%">
		<span class="sr-only">90% Complete (success)</span>
	</div>
</div>
<div class="container col-xs-offset-1 col-xs-10 col-md-offset-2 col-md-8">
	<h3 class="carrinho text-center">Seu Carrinho</h3>
	<div class="table-responsive">
		<table class="table table-hover table-bordered table-striped">
			<thead>
				<th class="text-center">Sabores</th>
				<th class="text-center">Tamanho</th>
				<th class="text-center">Quantidade</th>
			</thead>
			<c:forEach var="c" items="${carrinho}">
				<tr>
					<td class="text-center">${c.sabor}</td>
					<td class="text-center">${c.tamanho}</td>
					<td class="text-center">${c.quantidade}</td>
				</tr>
			</c:forEach>
		</table>
		<strong>Valor Total: ${total}</strong>
	</div>
</div>

<div class="container col-xs-12" style="margin-bottom: 20px;">
	<form action='<c:url value="/pedido/finalizar"/>' method="post">
		<h3 class="text-center">Dados Do Cliente Para Finalização</h3>
		<br>
		<div class="col-xs-offset-2 col-xs-8 col-md-4 text-center form-group">
			<label>Cliente</label> <input disabled class="form-control"
				type="text" name="nome" placeholder="Cliente" value="${nome}" />
		</div>
		<div class="col-xs-offset-2 col-xs-8 col-md-offset-1 col-md-4 text-center form-group">
			<label>CPF</label> <input disabled class="form-control" type="text"
				name="cpf" placeholder="Cpf"  value="${cpf}"/>
		</div>
		<div class="col-xs-offset-2 col-xs-8 col-md-4 text-center">
			<label>Opções de pagamento</label> <select class="form-control"
				name="sabor" required>
				<option disabled selected="selected" value="">Selecione</option>
				<option id="dinheiro" value="dinheiro">Dinheiro</option>
				<option id="cartao" value="cartao">Cartão</option>
			</select>
		</div>
		<div class="col-xs-offset-2 col-xs-8 col-md-offset-1 col-md-4 radio text-center">
			<strong><label>Retirada/Entrega</label></strong>
			<br>
			<input type="checkbox" id="local" name="local" onclick="bloqueio()">No local</label>
		</div>
		<div id="opcao">
			<br>
			<div class="col-xs-offset-2 col-xs-8 col-md-4 text-center form-group">
				<label>Endereço</label> <input class="form-control" type="text"
					name="endereço" placeholder="Endereço" value="${endereco}" required="required" />
			</div>
			<div class="col-xs-offset-2 col-xs-8  col-md-offset-1 col-md-4 text-center form-group">
				<label>Bairro</label> <input class="form-control" type="text"
					name="bairro" placeholder="Bairro" value="${bairro}" required="required"/>
			</div>
			<div class="col-xs-offset-2 col-xs-8 col-md-4 text-center form-group">
				<label>Cidade</label> <input class="form-control" type="text"
					name="cidade" placeholder="Cidade" value="${cidade}" required="required" />
			</div>
			<div class="col-xs-offset-2 col-xs-8 col-md-offset-1 col-md-4 text-center form-group">
				<label>Complemento</label> <input class="form-control" type="text"
					name="complemento" placeholder="Complemento"/>
			</div>
			<br>
		</div>
		<div class="col-xs-offset-2 col-xs-8 text-center">
			<br>
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Salvar Pedido</button>
		</div>
		<div class="col-xs-offset-2 col-xs-8 text-center">
			<br>
			<button type="submit" class="btn btn-success">
			<a style="text-decoration: none; color: white" href="<c:url value="/menu"/>">Enviar Pedido</a></button>
		</div>
	</form>
</div>

<c:import url="../header_footer/footer.jsp"></c:import>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Sucesso</h4>
      </div>
      <div class="modal-body">
        <h4>Seu Pedido foi enviado com Sucesso!</h4>
        <label>Obrigado pela preferencia!</label>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" data-dismiss="modal">Confirmar</button>  
      </div>
    </div>
  </div>
</div>