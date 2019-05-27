<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Pedido</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/pedido/style.css"/>">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700|Roboto+Slab:400,700|Pacifico' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="conteudo">
		<nav class="navbar navbar-inverse">	
			<div class="row menu">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pedido<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="">Novo Pedido</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Lista <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Pizzas</a></li>
								<li><a href="#destaque">Destaques</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#contato" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Contato</a>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Outros <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Sobre Nós</a></li>
								<li><a href="<c:url value="/login"/>">Login Administração</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- barra de progresso no pedido cliente -->
		<div class="progress">
		  <div class="progress-bar progress-bar-success" style="width: 35%">
		    <span class="sr-only">35% Complete (success)</span>
		  </div>
		</div> 
		<nav class="navbar bg-info">
			<div class="row col-xs-11">
				<ul class="list-inline">
					<li class="list text-center col-xs-offset-3 col-xs-3">ABERTO AGORA</li>
					<li class="list text-center col-xs-3 col-xs-offset-3">ENTREGA EM: 30-45 min</li>
				</ul>
			</div>
		</nav>
	</div>

	<script src=<c:url value="/resources/js/jquery-1.12.4.min.js"/>></script>
	<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>

	

</body>
</html>