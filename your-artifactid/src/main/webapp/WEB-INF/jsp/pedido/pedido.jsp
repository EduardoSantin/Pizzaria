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
					<li class="list text-center col-xs-3 col-xs-offset-3">Entrega
						Entre: 45min - 1h</li>
				</ul>
			</div>
		</nav>
	<div id="pedido" class="col-xs-offset-1 col-xs-10 col-sm-offset-2 col-md-offset-2 col-md-10 col-lg-offset-1 col-lg-6">
		<h3 class="text-center">Fa�a seu Pedido</h3>
		<form action='<c:url value="/pedido/listar"/>' method="post">
			<!-- input para salvar o codigo do usuario -->
			<input type="hidden" name="idUsuario" value="${idUsuario}" />
			<div class="box col-xs-4 col-sm-3 col-md-3 text-center">
				<h4>Sabores</h4>
				<select class="form-control" name="sabor" required>
					<option disabled selected="selected" value="">Selecione</option>
					<c:forEach items="${pizzas}" var="p">
						<option id="sabor" value="${p.nome}">${p.nome}</option>
					</c:forEach>
				</select>
			</div>
			<div class="box col-xs-4 col-sm-3 col-md-3 text-center">
				<h4>Tamanhos</h4>
				<select class="form-control" name="tamanho" required>
					<option disabled selected="selected" value="">Selecione</option>
					<c:forEach items="${tamanhos}" var="t">
						<option id="tamanho" value="${t.tamanho}">${t.tamanho}
							- ${t.valor}</option>
					</c:forEach>
				</select>
			</div>
			<div class="box col-xs-4 col-sm-3 col-md-2">
				<h4>Quantidade</h4>
				<div class="input-group form-group text-center">
					<input class="form-control" type="number" class="form-control " value="1"
						min="1" name="quantidade" >	
				</div>
			</div>
			<br>
			<br>
			<br>
			<div class="col-xs-12 col-md-10 text-center">
				<button type="submit" class="btn btn-info"><i class="fas fa-cart-arrow-down"></i> Adicionar ao
					Carrinho</button>
			</div>
		</form>
	</div>
	<div class="col-xs-offset-1 col-xs-10 col-md-offset-1 col-md-10 col-lg-offset-0 col-lg-5">
		<h3 class="carrinho text-center">Seu Carrinho</h3>
		<div class="table-responsive">
			<table class="table table-hover table-bordered table-striped">
				<thead>
					<th class="text-center hidden">Codigo</th>
					<th class="text-center">Sabores</th>
					<th class="text-center">Tamanho</th>
					<th class="text-center">Quantidade</th>
					<th class="text-center">Valor</th>
					<th class="text-center">Op��o</th>
				</thead>
					<c:forEach var="c" items="${carrinho}">
						<tr>
							<td class=" hidden">${c.codigo}</td>
							<td class="text-center">${c.sabor}</td>
							<td class="text-center">${c.tamanho}</td>
							<td class="text-center">${c.quantidade}</td>
							<td class="text-center">${c.valorTotal}</td>
							<td class="text-center"><a href='<c:url value="/pedido/excluir/${c.codigo}"/>'><button
									class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i></button></a></td>
						</tr>
					</c:forEach>
			</table>
			<strong>Valor Total: ${total}</strong>
		</div>
	</div>
	<div class="finalizar col-xs-12 text-center" style="margin-bottom: 20px;">
		<br>
		<button type="submit" class="btn btn-success">
			<a style="text-decoration: none; color: white;" href="<c:url value="/pedido/finalizar"/>"><i class="fas fa-map-marked-alt"></i> Endere�o</a></button>
		<br>
	</div>
	<c:import url="../header_footer/footer.jsp"></c:import>