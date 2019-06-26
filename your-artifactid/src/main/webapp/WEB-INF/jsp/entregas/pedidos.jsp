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
				<li class="dropdown"><a href="<c:url value="/entregas"/>"> Entregas</a></li>
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
	
	<div class="container-fluid text-center col-xs-12 col-md-offset-2 col-md-8">
	<h3>Pedidos de Hoje</h3>
	<br>
		<div class="table-responsive">
			<table class="table table-hover table-bordered table-striped">
			<tr>
				<th class="text-center">Quantidade</th>
				<th class="text-center">Sabor</th>
				<th class="text-center">Tamanho</th>
				<th class="text-center">Valor</th>
			</tr>
				<c:forEach var="p" items="${pedidos}">
					<tr>
						<td>${p.quantidade}</td>
						<td>${p.sabor}</td>
						<td>${p.tamanho}</td>
						<td>${p.valorTotal}</td>
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