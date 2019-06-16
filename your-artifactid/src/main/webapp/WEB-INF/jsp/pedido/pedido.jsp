<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Pedido</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/pedido/style.css"/>">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700|Roboto+Slab:400,700|Pacifico'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="conteudo">
		<nav class="navbar navbar-inverse">
			<div class="row menu">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Pedido<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#pedido">Novo Pedido</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Lista <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Pizzas</a></li>
								<li><a href="#destaque">Destaques</a></li>
							</ul></li>
						<li class="dropdown"><a href="#contato"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">Contato</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Outros <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Sobre Nós</a></li>
								<li><a href="<c:url value="/login"/>">Login
										Administração</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- barra de progresso no pedido cliente -->
		<div class="progress">
			<div class="progress-bar progress-bar-success" style="width: 35%">
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
	</div>
	<div id="pedido" class="col-xs-12 col-sm-12 col-md-8">
		<h3 class="text-center">Faça seu Pedido</h3>
		<form action='<c:url value="/pedido/listar"/>' method="post">
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
			<input type="hidden" name="usuario_codigo" value="${usuario_codigo}">
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
					<th class="text-center">Sabores</th>
					<th class="text-center">Tamanho-Valor</th>
					<th class="text-center">Quantidade</th>
					<th class="text-center">Opções</th>
				</thead>
					<c:forEach var="c" items="${carrinho}">
						<tr>
							<td>${c.sabor}</td>
							<td>${c.tamanho}</td>
							<td>${c.quantidade}</td>
							<td><a href="<c:url value="/pedido/remover/${c.codigo}"/>"><button
										class="btn btn-danger btn-sm">Remover</button></a></td>
						</tr>
					</c:forEach>
			</table>
		</div>
	</div>
	<div class="finalizar col-xs-12 text-center">
			<a href="<c:url value="/pedido/finalizar"/>">Finalizar Pedido</a>
	</div>

	<script src="js/jquery-1.12.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script type="text/javascript">
		(function($) {
			$('.spinner .btn:first-of-type').on(
					'click',
					function() {
						$('.spinner input').val(
								parseInt($('.spinner input').val(), 10) + 1);
					});
			$('.spinner .btn:last-of-type').on(
					'click',
					function() {
						$('.spinner input').val(
								parseInt($('.spinner input').val(), 10) - 1);

					});
		})(jQuery);
	</script>

</body>
</html>