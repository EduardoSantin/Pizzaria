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
	<nav class="navbar navbar-default fixed">	
		<div class="navbar-header">
			<a class="navbar-brand" href="<c:url value="/menu"/>">Casa Nova</a>
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
						<li><a href="<c:url value="/user"/>">Novo Pedido</a></li>
						<li><a href="#destaque">Destaques</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Minha Conta <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/user"/>"><i class="fas fa-user"></i> Fazer Login</a></li>
						<li><a href="<c:url value="/user/cadastro"/>"><i class="fas fa-database"></i> Cadastre-se</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#chefes">Chefes</a>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Outros <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Sobre Nós</a></li>
						<li><a href="<c:url value="/login"/>"><i class="fas fa-user-tie"></i>  Login Adm</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#contato">Contato</a>
				</li>
				
			</ul>
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
			<div class="produtosDestaque col-sm-offset-1 col-sm-10 col-sm-offset-1" id="destaque">
				<h2 class="text-capitalize text-center">Produtos em Destaque</h2>
				<div class="row topo">
					<div class="col-sm-5 bloco">
						<h2>Americana</h2>
						 <h4>Ingredientes:</h4>
						 <br>
						 <p><i class="fas fa-check"></i> Molho, tomate, mussarela, pepperoni, orégano</p>
						 <p><i class="far fa-clock"></i> Tempo Preparo: 40 min</p>	
					</div>
					<div class="col-sm-5 col-sm-offset-2">
						<img src=<c:url value="/resources/image/americana.jpg"/> class="img-responsive img-thumbnail">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5 bloco">
						<h2>Calabresa</h2>
						 <h4>Ingredientes:</h4>
						 <br>
						 <p><i class="fas fa-check"></i> Molho, mussarela, calabresa, cebola fatiada e orégano.</p>
						 <p><i class="far fa-clock"></i> Tempo Preparo: 45 min</p>		
					</div>
					<div class="col-sm-5 col-sm-offset-2">
						<img src=<c:url value="/resources/image/pizza.jpg"/> class="img-responsive img-thumbnail">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5 bloco">
						<h2>Bacon e Milho</h2>
						 <h4>Ingredientes:</h4>
						 <br>
						 <p><i class="fas fa-check"></i> Molho, mussarela, milho, bacon, parmesão e orégano.…</p>
						 <p><i class="far fa-clock"></i> Tempo Preparo: 40 min</p>		
					</div>
					<div class="col-sm-5 col-sm-offset-2">
						<img src=<c:url value="/resources/image/BaconMilho.jpg"/> class="img-responsive img-thumbnail">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5 bloco">
						<h2>Frango</h2>
						 <h4>Ingredientes:</h4>
						 <br>
						 <p><i class="fas fa-check"></i> Molho, mussarela, Frango ao molho e orégano.</p>
						 <p><i class="far fa-clock"></i> Tempo Preparo: 40 min</p>		
					</div>
					<div class="col-sm-5 col-sm-offset-2">
						<img src=<c:url value="/resources/image/Frango.jpg"/> class="img-responsive img-thumbnail">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5 bloco">
						<h2>Portuguesa</h2>
						 <h4>Ingredientes:</h4>
						 <br>
						 <p><i class="fas fa-check"></i> Molho, mussarela, presunto, calabresa, ovos, cebola, azeitonas e orégano.</p>
						 <p><i class="far fa-clock"></i> Tempo Preparo: 40 min</p>		
					</div>
					<div class="col-sm-5 col-sm-offset-2">
						<img src=<c:url value="/resources/image/Portuguesa.jpg"/> class="img-responsive img-thumbnail">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5 bloco">
						<h2>Vegetariana</h2>
						 <h4>Ingredientes:</h4>
						 <br>
						 <p><i class="fas fa-check"></i> Molho, mussarela, brócolis, palmito, tomate, champignon, cebola e orégano.</p>
						 <p><i class="far fa-clock"></i> Tempo Preparo: 45 min.</p>		
					</div>
					<div class="col-sm-5 col-sm-offset-2">
						<img src=<c:url value="/resources/image/vegetariana.jpg"/> class="img-responsive img-thumbnail">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5 bloco">
						<h2>Chocolate com Morango</h2>
						 <h4>Ingredientes:</h4>
						 <br>
						 <p><i class="fas fa-check"></i> Mussarela, chocolate ao leite e morango.</p>
						 <p><i class="far fa-clock"></i> Tempo Preparo: 30 min.</p>		
					</div>
					<div class="col-sm-5 col-sm-offset-2">
						<img src=<c:url value="/resources/image/Chocolate.jpg"/> class="img-responsive img-thumbnail">
					</div>
				</div>
			</div>	
		</section>
		<section class="col-xs-12">
			<div class="produtosDestaque col-sm-12" id="chefes">
				<h2 class="text-capitalize text-center">Nossos Chefes</h2>
				<div class="row">
					<div class=" col-sm-4 bloco">
						<h2 class="text-center">Fogaça</h2>
						<br>
						<img src=<c:url value="/resources/image/fogaca.jpg"/> class="img-responsive img-rounded">
					</div>
					<div class=" col-sm-4 bloco">
						<h2 class="text-center">Paola</h2>
						<br>
						<img src=<c:url value="/resources/image/paola.jpg"/> class="img-responsive img-rounded">
					</div>
					<div class=" col-sm-4 bloco">
						<h2 class="text-center">Jacquin</h2>
						<br>
						<img src=<c:url value="/resources/image/jacan.jpg"/> class="img-responsive 	img-rounded">
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
          <p class="rights text-center"><span>©  </span><span >2019</span><span> </span><span>Academics</span><span>. </span><span>All Rights Reserved.</span></p>
        </div>
      </footer>
		
	
	<script src=<c:url value="/resources/js/jquery-1.12.4.min.js"/>></script>
	<script src=<c:url value="/resources/js/bootstrap.min.js"/>></script>

	
</body>
</html>