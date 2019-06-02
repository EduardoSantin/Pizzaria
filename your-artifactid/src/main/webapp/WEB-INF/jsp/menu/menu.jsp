<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Menu</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/menu/style.css"/>">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700|Roboto+Slab:400,700|Pacifico' rel='stylesheet' type='text/css'>
</head>
<body>	
	
	<nav class="navbar navbar-default">	
		<div class="row">
			<div class="navbar-header">
				<div class="logo">
					<img src=<c:url value="/resources/image/logo.jpg"/> class="img-responsive col-xs-2">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pedido<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="pedido"/>">Novo Pedido</a></li>
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
	<header>
		<div class="col-xs-5 col-sm-3 col-md-2">
			<img src=<c:url value="/resources/image/nome.png"/> class="img-responsive">
			<h3 class="text-center">Pizzaria</h3>
			<h3 class="text-center">Casa Nova</h3>
		</div>
	</header>

		<section class="col-xs-12">
			<div class="produtosDestaque" id="destaque">
				<div class="title text-center ">
					<h2 class=" text-capitalize">produtos em estaque</h2>
				</div>	
				<div class="box-produtos  col-sm-5 col-sm-offset-1">
					<div class="produto col-sm-12">
						<img src=<c:url value="/resources/image/pizza.jpg"/> class="img-responsive ">
					</div>
					<div class="text-center">
						<div class="descricao">
							<h3>Americana</h3>
							<h4>Tamanho: G</h4>
							<strong>R$ 40,00</strong>
						</div>
					</div>
				</div>
				<div class="box-produtos col-sm-5 ">
					<div class="produto col-sm-12">
						<img src=<c:url value="/resources/image/pizza.jpg"/> class="img-responsive ">
					</div>
					<div class="text-center">
						<div class="descricao">
							<h3>Familia</h3>
							<h4>Tamanho: GG</h4>
							<strong>R$ 52,00</strong>
						</div>
					</div>
				</div>
				<div class="box-produtos  col-sm-5 col-sm-offset-1">
					<div class="produto col-sm-12">
						<img src=<c:url value="/resources/image/pizza.jpg"/> class="img-responsive ">
					</div>
					<div class="text-center">
						<div class="descricao">
							<h3>Quatro Queijos</h3>
							<h4>Tamanho: G</h4>
							<strong>R$ 44,00</strong>
						</div>
					</div>
				</div>
				<div class="box-produtos col-sm-5 ">
					<div class="produto col-sm-12">
						<img src=<c:url value="/resources/image/pizza.jpg"/> class="img-responsive ">
					</div>
					<div class="text-center">
						<div class="descricao">
							<h3>Moda da Casa</h3>
							<h4>Tamanho: G</h4>
							<strong>R$ 40,00</strong>
						</div>
					</div>
				</div>
				<div class="box-produtos  col-sm-5 col-sm-offset-1">
					<div class="produto col-sm-12">
						<img src=<c:url value="/resources/image/pizza.jpg"/> class="img-responsive ">
					</div>
					<div class="text-center">
						<div class="descricao">
							<h3>Estrogonofe Frango</h3>
							<h4>Tamanho: G</h4>
							<strong>R$ 40,00</strong>
						</div>
					</div>
				</div>
				
				<div class="box-produtos col-sm-5">
					<div class="produto col-sm-12">
						<img src=<c:url value="/resources/image/pizza.jpg"/> class="img-responsive ">
					</div>
					<div class="text-center">
						<div class="descricao">
							<h3>Bacon</h3>
							<h4>Tamanho: G</h4>
							<strong>R$ 45,00</strong>
						</div>
					</div>
				</div>
				<div class="box-produtos hidden-sm hidden-md hidden-lg">
					<div class="produto col-sm-12">
						<img src=<c:url value="/resources/image/pizza.jpg"/> class="img-responsive ">
					</div>
					<div class="text-center">
						<div class="descricao">
							<h3>Pizza Familia</h3>
							<h4>Tamanho: G</h4>
							<strong>R$ 40,00</strong>
						</div>
					</div>
				</div>
			</div>	
		</section>

	<footer class="section footer-classic context-dark bg-image">
        <div class="container text-center">
          <div class="row">
            <div class="col-md-12" id="contato">
              <h5>Contacts</h5>
              <dl>
                <dt>Address:</dt>
                <dd>666 Centro, Xanxerê, Sc</dd>
              </dl>
              <dl>
                <dt>Email:</dt>
                <dd><a href="mailto:#">kasanovapizzaria@gmail.com</a></dd>
              </dl>
              <dl>
                <dt>Phones:</dt>
                <dd><a href="tel:#">+99 99966-6333</a> <span>or</span> <a href="tel:#">+99 22255-5888</a>
                </dd>
              </dl>
            </div>
          </div>
        </div>
        <div class="row  social-container">
          <div class="col"><a class="social-inner" href="#"><i class="fab fa-facebook"></i><span>Facebook</span></a></div>
          <div class="col"><a class="social-inner" href="#"><i class="fab fa-instagram"></i><span>instagram</span></a></div>
          <div class="col"><a class="social-inner" href="#"><i class="fab fa-twitter"></i><span>twitter</span></a></div>
          <p class="rights text-center"><span>©  </span><span >2019</span><span> </span><span>Academics</span><span>. </span><span>All Rights Reserved.</span></p>
        </div>
      </footer>
		
	
	<script src=<c:url value="/resources/js/jquery-1.12.4.min.js"/>></script>
	<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>

	
</body>
</html>