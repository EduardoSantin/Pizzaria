<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<c:import url="../header_footer/header.jsp"></c:import>
	<div class="container bg">	
		<div class="row jumbotron center-block">
			<div class="col-xs-12 col-sm-offset-1 col-sm-10">
				<form class="form-container" action="<c:url value="/usuario/salvar"/>" method="post">
					<div class="page-header text-center">
						<h2>Cadastro Usuário</h2>
					</div>
					<div class="form-group col-xs-4">
						<label>Nome</label>
						<input type="text" class="form-control" id="nome"  name="nome" placeholder="Nome" required="required">
					</div>
					<div class="form-group col-xs-4">
						<label>Sobrenome</label>
						<input type="text" class="form-control" id="sobrenome"  name="sobrenome"placeholder="Sobrenome" required="required">
					</div>
					<div class="form-group col-xs-4">
						<label>CPF</label>
						<input type="text" class="form-control" id="cpf" name="cpf" placeholder="CPF" required="required">
					</div>
					<div class="form-group col-xs-3">
						<label>Telefone</label>
						<input type="text" class="form-control" id="telefone" name="telefone" placeholder="Telefone" required="required">
					</div>	
					<div class="form-group col-xs-6">
						<label>Endereço</label>
						<input type="text" class="form-control" id="endereco" name="endereco" placeholder="Endereço" required="required">
					</div>
					<div class="form-group col-xs-3">
						<label>Número</label>
						<input type="text" class="form-control" id="numero" name="numero" placeholder="Número" required="required">
					</div>
					<div class="form-group col-xs-5">
						<label>Bairro</label>
						<input type="text" class="form-control" id="bairro" name="bairro" placeholder="Bairro" required="required">
					</div>
					<div class="form-group col-xs-4">
						<label>Cidade</label>
						<input type="text" class="form-control" id="cidade"  name="cidade"placeholder="Cidade" required="required">
					</div>
					<div class="form-group col-xs-3">
						<label>Uf</label>
						<input type="text" class="form-control" id="uf" name="uf" placeholder="Uf" required="required">
					</div>
					<div class="text-center">
						<ins><h3>Seus Dados de Acesso</h3></ins>
					</div>
					<div class="form-group col-xs-8">
						<label>Email</label>
						<input type="Email" class="form-control" id="email" name="email" placeholder="Email" required="required">
					</div>
					<div class="form-group col-xs-4">
						<label>Password</label>
						<input type="password" class="form-control" id="password" name="senha" placeholder="Password" required="required">
					</div>
					<div class="col-xs-4">
						<button type="submit" class="btn btn-success btn-block active">Cadastrar</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>

</body>
</html>