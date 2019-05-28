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
						<span class="sr-only"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
				</div>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a id="btn-mostrar"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">Ver Preços</a></li>
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
	<div class="container-fluid text-center">
		<div class="col-xs-12 col-md-6 col-lg-6">
			<h3>Pizzas</h3>
			<div class="table-responsive">
				<table class="table table-striped">
					<c:forEach var="p" items="${pizza}">
						<tr>
							<td>${p.codigo}</td>
							<td>${p.nome}</td>
							<td><a
								href="<c:url value = "/cadastroPizza/editar/${p.codigo}"/>"><button
										class="btn btn-info btn-sm">Editar</button></a></td>
							<td><a
								href="<c:url value = "/cadastroPizza/excluir/${p.codigo}"/>"><button
										class="btn btn-danger btn-sm">Excluir</button></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div id="novaPizza"
			class="col-xs-12 col-md-6 col-lg-offset-1 col-lg-4 col-lg-offset-1">
			<h4>Nova Pizza</h4>
			<form action='<c:url value="/cadastroPizza/listar"/>' method="post">
				Nome: <input type="text" name="nome" />
				<button type="submit" class="btn btn-success btn-sm">Salvar</button>
			</form>
		</div>

		<div id="tamanhos"
			class="col-xs-12 col-md-6 col-lg-offset-1 col-lg-4 col-lg-offset-1"
			style="display: none;">
			<h3>Preços</h3>
			<div class="table-responsive">
				<table class="table table-striped">
					<c:forEach var="t" items="${tamanhos}">
						<tr>
							<td>${t.tamanho}</td>
							<td>${t.valor}</td>
							<td><button class="btn btn-info btn-sm">Editar</button></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script type="text/javascript">
		$("#btn-mostrar").click(function() {
			if ($('#btn-mostrar').text() == 'Ver Preços') {
				$("#tamanhos").show();
				$("#novaPizza").hide();
				$("#btn-mostrar").text("Nova Pizza");
			} else {
				$("#novaPizza").show();
				$("#tamanhos").hide();
				$("#btn-mostrar").text("Ver Preços");
			}
		});
	</script>
	<script src=<c:url value="/resources/js/jquery-1.12.4.min.js"/>></script>
	<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>
</body>
</html>