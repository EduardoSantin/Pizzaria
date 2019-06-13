<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Finalizar</title>
</head>
<body>
	<div class="container col-xs-12 col-sm-10 col-md-4">
		<h3 class="carrinho text-center">Seu Carrinho</h3>
		<div class="table-responsive">
			<table class="table table-condensed">
				<thead>
					<th class="text-center">Sabores</th>
					<th class="text-center">Tamanho-Valor</th>
					<th class="text-center">Quantidade</th>
					<th class="text-center"></th>
				</thead>
				<c:forEach var="c" items="${carrinho}">
					<tr>
						<td>${c.sabor}</td>
						<td>${c.tamanho}</td>
						<td>${c.quantidade}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<button>Finalizar</button>
</body>
</html>