<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<c:import url="../header_footer/header.jsp"></c:import>
		<!-- barra de progresso no pedido cliente -->
		<div class="progress">
			<div class="progress-bar progress-bar-success" style="width: 50%">
				<span class="sr-only">50% Complete (success)</span>
			</div>
		</div>
		<nav class="navbar bg-info">
			<div class="row col-xs-11">
				<ul class="list-inline">
					<li class="list text-center col-xs-offset-3 col-xs-3">ABERTO
						AGORA</li>
					<li class="list text-center col-xs-3 col-xs-offset-3">ENTREGA
						EM: 30-45 min</li>
				</ul>
			</div>
		</nav>
		<div>
			<span>${logado}</span>
		</div>
	<div id="pedido" class="col-xs-12 col-sm-12 col-md-8">
		<h3 class="text-center">Faça seu Pedido</h3>
		<form action='<c:url value="/pedido/listar"/>' method="post">
			<% // input para salvar o codigo do usuario %>
			<input type="hidden" name="usuario_codigo" value="${usuario_codigo}" />
			<div class="box col-xs-4 col-sm-3 col-md-3 text-center">
				<h4>Sabores</h4>
				<select name="sabor" required="required">
					<option disabled selected="selected">Selecione</option>
					<c:forEach items="${pizzas}" var="p">
						<option id="sabor" value="${p.nome}">${p.nome}</option>
					</c:forEach>
				</select>
			</div>
			<div class="box col-xs-4 col-sm-3 col-md-3 text-center">
				<h4>Tamanhos</h4>
				<select name="tamanho" required="required">
					<option disabled selected="selected">Selecione</option>
					<c:forEach items="${tamanhos}" var="t">
						<option id="tamanho" value="${t.tamanho}">${t.tamanho}
							- ${t.valor}</option>
					</c:forEach>
				</select>
			</div>
			<div class="box col-xs-4 col-sm-3 col-md-2">
				<h4>Quantidade</h4>
				<div class="input-group spinner text-center">
					<input type="number" class="form-control " value="1" max="4"
						min="1" name="quantidade">
					<div class="input-group-btn-vertical">
						<button class="btn btn-success" type="button">
							<i class="fa fa-caret-up"></i>
						</button>
						<button class="btn btn-danger" type="button">
							<i class="fa fa-caret-down"></i>
						</button>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-3 col-md-10 text-center">
				<button type="submit" class="btn btn-info">Adicionar ao
					Carrinho</button>
			</div>
		</form>
	</div>
	<div class="container col-xs-12 col-sm-10 col-md-4">
		<h3 class="carrinho text-center">Seu Carrinho</h3>
		<div class="table-responsive">
			<table class="table table-condensed">
				<thead>
					<th class="text-center">Codigo</th>
					<th class="text-center">Sabores</th>
					<th class="text-center">Tamanho</th>
					<th class="text-center">Quantidade</th>
					<th class="text-center">Valor</th>
					<th class="text-center">Opção</th>
				</thead>
					<c:forEach var="c" items="${carrinho}">
						<tr>
							<td>${c.codigo}</td>
							<td>${c.sabor}</td>
							<td>${c.tamanho}</td>
							<td>${c.quantidade}</td>
							<td>${c.valorTotal}</td>
							<td><a href='<c:url value="/pedido/excluir/${c.codigo}"></c:url>'>Excluir</a></td>
						</tr>
					</c:forEach>
			</table>
		</div>
	</div>
	<div class="finalizar col-xs-12 text-center">
			<a href="<c:url value="/pedido/finalizar"/>">Finalizar Pedido</a>
	</div>