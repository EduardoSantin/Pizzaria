<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Pizza</title>
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
			<a class="navbar-brand" href="<c:url value="/menu"/>">Casa Nova <i class="fas fa-pizza-slice"></i></a>
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="<c:url value="/tamanhoPizza"/>"> Tamanhos Pizzas</a></li>
				<li class="dropdpwn"><a href="<c:url value="/menu"/>"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<div class="alert alert-success col-xs-offset-1 col-xs-10 col-md-4 col-lg-offset-1 col-lg-4 col-lg-offset-1 ">
		<form class="col-xs-offset-2" action='<c:url value="/cadastroPizza/filtrarPizza"></c:url>'
			method="get">
			<div class="col-xs-6 form-group">
			 	<input class="form-control" placeholder="Buscar Pizzas.." type="text" name="filtrarPizza">	
			</div>
				<button class="btn btn-primary " type="submit">Buscar</button>
		</form>
	</div>
	<br>
	<div id="formPizza" class="col-xs-12 col-md-7 col-lg-offset-1 col-lg-4 col-lg-offset-1">
		<h3 class="text-center">Adicionar Nova Pizza</h3>
		<br>
		<form class="col-xs-offset-2" action='<c:url value="/cadastroPizza/listar"/>' method="post">
			<input type="hidden" name="codigo" value="${codigo}" />
			<div class="col-xs-8 form-group">
			<label>Sabor</label>
				<input class="form-control" type="text" name="nome" placeholder="Sabor" value="${nome}" />
			</div>	
			<div class="col-xs-8 form-group">
					<button type="submit" class="btn btn-success btn-sm">Salvar</button>
			</div>
		</form>
	</div>
	<br>
	<div id="pizzas" class="container-fluid text-center col-xs-12 col-md-offset-2 col-md-8">
	<h3>Lista de Pizzas</h3>
	<br>
		<div class="table-responsive">
			<table class="table table-striped">
			<tr>
				<th class="text-center">Sabores</th>
				<th class="text-center">Editar</th>
				<th class="text-center">Excluir</th>
			</tr>
				<c:forEach var="p" items="${pizza}">
					<tr>
						<td>${p.nome}</td>
						<td><a
							href="<c:url value = "/cadastroPizza/editar/${p.codigo}"/>"><button
									class="btn btn-info btn-sm"><i class="far fa-edit"></i></button></a></td>
						<td><a
							href="<c:url value = "/cadastroPizza/excluir/${p.codigo}"/>"><button
									class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i></button></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
		<script src=<c:url value="/resources/js/jquery-1.12.4.min.js"/>></script>
	<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>
	</body>
	</html>