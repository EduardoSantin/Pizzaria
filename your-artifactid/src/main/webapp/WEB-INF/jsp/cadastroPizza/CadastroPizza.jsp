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
</head>
<body>
	<div class="container-fluid text-center">
		<div class="col-xs-12 col-md-6 col-lg-6">
			<h3>Pizzas</h3>
			<div class="table-responsive">
				<table class="table table-striped">
					<c:forEach var="p" items="${pizza}">
						<tr>
							<td>${p.codigo}</td>
							<td>${p.nome}</td>
							<td><button class="btn btn-info btn-sm">Editar</button></td>
							<td><button class="btn btn-danger btn-sm">Excluir</button></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="col-xs-12 col-md-6 col-lg-6">
			<h4>Nova Pizza</h4>
			<form action='<c:url value="/cadastroPizza/listar"/>'
				method="post">
				Nome: <input type="text" name="nome" />
				<button type="submit" class="btn btn-success btn-sm">Salvar</button>
			</form>
		</div>
	</div>
</body>
</html>