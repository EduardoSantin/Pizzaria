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
				<li class="dropdown"><a href="<c:url value="/entregas"/>">
						Entregas</a></li>
				<li class="dropdown"><a href="<c:url value="/cadastroPizza"/>">Pizzas</a></li>
				<li class="dropdpwn"><a href="<c:url value="/menu"/>"><i
						class="fas fa-sign-out-alt"></i> Logout</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<div
		class="col-xs-12 col-md-6 col-lg-offset-1 col-lg-4 col-lg-offset-1">
		<h3 class="text-center">Novos Tamanhos Pizzas</h3>
		<form class="col-xs-offset-3"
			action='<c:url value="/tamanhoPizza/listar"/>' method="post">
			<input type="hidden" id="codigo" name="codigo" value="${codigo}" />
			<br> <label>Tamanho</label>
			<div class="col-xs-6 form-group input-group">
				<input class="form-control" type="text" id="tamanho" name="tamanho"
					placeholder="Tamanho:" value="${tamanho}" required="required" /><span
					class="input-group-addon">G</span>
			</div>
			<label>Valor</label>
			<div class="col-xs-6 form-group input-group">
				<input class="form-control" id="valor" type="text" name="valor"
					placeholder="Valor:" value="${valor}" required="required" /><span
					class="input-group-addon">$</span>
			</div>
			<div class="form-group">
				<div class="col-xs-offset-1">
					<button type="submit" class="btn btn-success btn-sm">Salvar</button>
				</div>
			</div>

		</form>
	</div>
	<br>
	<div
		class="container-fluid col-xs-12 col-md-6 col-lg-offset-1 col-lg-4 col-lg-offset-1 ">
		<h3 class="text-center">Lista de Tamanhos</h3>
		<br>
		<div class="table-responsive">
			<table class="table table-hover table-bordered table-striped">
				<tr>
					<th class="text-center">Tamanho</th>
					<th class="text-center">Valor</th>
					<th class="text-center">Editar</th>
					<th class="text-center">Excluir</th>
				</tr>
				<c:forEach var="t" items="${tamanhos}">
					<tr>
						<td class="text-center"><strong>${t.tamanho}</strong></td>
						<td class="text-center"><strong>${t.valor}</strong></td>
						<td class="text-center"><a
							href="<c:url value = "/tamanhoPizza/editartamanho/${t.codigo}"/>"><button
									class="btn btn-info btn-sm" id="btnEditar">
									<i class="far fa-edit"></i>
								</button></a></td>
						<td class="text-center"><a
							href="<c:url value = "/tamanhoPizza/excluirtamanho/${t.codigo}"/>"><button
									class="btn btn-danger btn-sm" id="btnEditar">
									<i class="fas fa-trash-alt"></i>
								</button></a></td>

					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<br>

	<c:import url="../header_footer/footer.jsp"></c:import>

	<script src=<c:url value="/resources/js/jquery-1.12.4.min.js"/>></script>
	<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>
</body>
</html>