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
	<nav class="navbar navbar-default fixed">
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
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Pedido<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/user"/>"> <i class="far fa-list-alt"></i> Novo Pedido</a></li>
						<li><a href="<c:url value="/menu#destaque"/>"><i class="fas fa-sort-amount-up"></i> Destaques</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Minha Conta <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/user"/>"><i
								class="fas fa-user"></i> Fazer Login</a></li>
						<li><a href="<c:url value="/user/cadastro"/>"><i
								class="fas fa-database"></i> Cadastre-se</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Outros <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/login"/>"><i
								class="fas fa-user-tie"></i> Login Adm</a></li>
					</ul></li>
				<li class="dropdown"><a href="#contato">Contato</a></li>
			</ul>
		</div>
	</nav>
	<script src=<c:url value="/resources/js/jquery-1.12.4.min.js"/>></script>
	<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>