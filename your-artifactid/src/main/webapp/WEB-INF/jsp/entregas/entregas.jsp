<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Entregas</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/menu/style.css"/>">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="<c:url value="/menu"/>">Casa Nova <i
				class="fas fa-pizza-slice"></i></a>
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="<c:url value="/entregas/pedidos"/>">Pedidos</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Pizzas<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="dropdown"><a
							href="<c:url value="/cadastroPizza"/>">Pizzas</a></li>
						<li class="dropdown"><a href="<c:url value="/tamanhoPizza"/>">
								Tamanhos Pizzas</a></li>
					</ul></li>
				<li class="dropdpwn"><a href="<c:url value="/menu"/>"><i
						class="fas fa-sign-out-alt"></i> Logout</a></li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid text-center col-xs-12 col-md-offset-2 col-md-8" style="min-height: 280px; margin-bottom:0;">
		<h3>Entregas Pendentes</h3>
		<br>
		<div class="table-responsive">
			<table class="table table-hover table-bordered table-striped">
				<tr>
					<th class="text-center">Pedido</th>
					<th class="text-center">Nome</th>
					<th class="text-center">Cidade</th>
					<th class="text-center">Bairro</th>
					<th class="text-center">Endereço</th>
					<th class="text-center">Numero</th>
					<th class="text-center">Finalizar</th>
				</tr>
				<c:forEach var="e" items="${entrega}">
					<tr>
						<td><a
							href="<c:url value = "/entregas/filtrapedidos/${e.codigoPedido}"/>">${e.codigoPedido}</a></td>
						<td>${e.nome}</td>
						<td>${e.cidade}</td>
						<td>${e.bairro}</td>
						<td>${e.endereco}</td>
						<td>${e.numero}</td>
						<td><a
							href="<c:url value = "/entregas/finalizar/${e.codigo}"/>"><button
									class="btn btn-success btn-sm">
									<i class="fas fa-check"></i>
								</button></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<c:import url="../header_footer/footer.jsp"></c:import>
	<script src=<c:url value="/resources/js/jquery-1.12.4.min.js"/>></script>
	<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>
</body>
</html>