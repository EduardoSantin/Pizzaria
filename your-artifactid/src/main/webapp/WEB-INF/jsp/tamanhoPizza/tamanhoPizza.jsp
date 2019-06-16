<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tamanhos e Preços</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/menu/style.css"/>">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="row">
			<div class="navbar-header">
				<div class="logo">
					<img src=<c:url value="/resources/image/logo.jpg"/>
						class="img-responsive col-xs-2">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="<c:url value="/cadastroPizza"/>">Pizzas</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/menu"/>">Sair</a></li>
						</ul>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container-fluid text-center col-xs-12 col-md-6 col-lg-offset-1 col-lg-4 col-lg-offset-1">
		<h3>Tamanhos</h3>
		<div class="table-responsive">
			<table class="table table-striped">
				<c:forEach var="t" items="${tamanhos}">
					<tr>
						<td>${t.tamanho}</td>
						<td>${t.valor}</td>
						<td><a
							href="<c:url value = "/tamanhoPizza/editartamanho/${t.codigo}"/>"><button
									class="btn btn-info btn-sm" id="btnEditar">Editar</button></a></td>
						<td><a
							href="<c:url value = "/tamanhoPizza/excluirtamanho/${t.codigo}"/>"><button
									class="btn btn-danger btn-sm" id="btnEditar">Excluir</button></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div class="col-xs-12 col-md-6 col-lg-offset-1 col-lg-4 col-lg-offset-1">
		<h4>Tamanhos</h4>
			<form action='<c:url value="/tamanhoPizza/listar"/>' method="post">
			<input type="hidden" name="codigo" value="${codigo}" />
			<div class="form-group">
				<input type="text" name="tamanho" placeholder="Tamanho:" value="${tamanho}"/>
			</div>
			<div class="form-group">
				<input type="text" name="valor" placeholder="Valor:" value="${valor}" />
			</div>
				<button type="submit" class="btn btn-success btn-sm">Salvar</button>
			</form>
	</div>

	<script src=<c:url value="/resources/js/jquery-1.12.4.min.js"/>></script>
	<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>
</body>
</html>