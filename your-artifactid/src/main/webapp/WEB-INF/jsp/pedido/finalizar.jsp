<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src=<c:url value="/resources/js/escondeDiv.js"/>></script>
<c:import url="../header_footer/header.jsp"></c:import>

<div
	class="container col-xs-ofsset-1 col-xs-10 col-md-offset-2 col-md-8">
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


<div class="container col-xs-12">
	<form action='<c:url value="/pedido/finalizar"/>' method="post">
		<h3 class="text-center">Dados Cliente de Finalização</h3>
		<br>
		<div class="col-xs-offset-1 col-xs-8 col-md-4 text-center form-group">
			<label>Cliente</label> <input disabled class="form-control"
				type="text" name="nome" placeholder="Cliente" value="${c.nome}" />
		</div>
		<div class="col-xs-offset-1 col-xs-8 col-md-4 text-center form-group">
			<label>CPF</label> <input disabled class="form-control" type="text"
				name="cpf" placeholder="Cpf" value="${c.cpf}" />
		</div>
		<div class="col-xs-offset-1 col-xs-8 col-md-4 text-center">
			<label>Opções de pagamento</label> <select class="form-control"
				name="sabor" required>
				<option disabled selected="selected" value="">Selecione</option>
				<option id="dinheiro" value="dinheiro">Dinheiro</option>
				<option id="cartao" value="cartao">Cartão</option>
			</select>
		</div>
		<div class="col-xs-offset-1 col-xs-8 col-md-4 radio text-center">
			<strong><label>Retirada/Entrega</label></strong>
			<br>
			<input type="checkbox" id="local" name="local" onclick="bloqueio()">No local</label>
		</div>
		<div id="opcao">
			<br>
			<div class="col-xs-offset-1 col-xs-8 col-md-4 text-center form-group">
				<label>Endereço</label> <input class="form-control" type="text"
					name="endereço" placeholder="Endereço" value="${c.endereco}" />
			</div>
			<div class="col-xs-offset-1 col-xs-8 col-md-4 text-center form-group">
				<label>Bairro</label> <input class="form-control" type="text"
					name="bairro" placeholder="Bairro" value="${c.bairro}" />
			</div>
			<div class="col-xs-offset-1 col-xs-8 col-md-4 text-center form-group">
				<label>Cidade</label> <input class="form-control" type="text"
					name="cidade" placeholder="Cidade" value="${c.cidade}" />
			</div>
			<div class="col-xs-offset-1 col-xs-8 col-md-4 text-center form-group">
				<label>Complemento</label> <input class="form-control" type="text"
					name="complemento" placeholder="Complemento" />
			</div>
			<br>
		</div>
		<div class="col-xs-offset-1 col-xs-8 text-center">
			<br>
			<button type="submit" class="btn btn-info ">Finalizar/Salvar Pedido</button>
		</div>
	</form>
</div>



	