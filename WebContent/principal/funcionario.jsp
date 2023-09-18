<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>

<body class="">
	<div class="wrapper ">

		<!-- siderbar Início -->

		<jsp:include page="sidebar.jsp"></jsp:include>

		<!-- siderbar Fim -->

		<div class="main-panel">

			<!-- Navbar Início-->

			<jsp:include page="nav.jsp"></jsp:include>

			<!--Navbar Fim-->

			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card card-user">
							<div class="card-header">
								<h5 class="card-title">Cadastro de Funcionários</h5>
							</div>
							<div class="card-body">
								<form>
									<div class="row">
										<div class="col-md-5 pr-1">
											<div class="form-group">
												<label>ID</label> <input type="text" class="form-control"
													disabled="" placeholder="id" value="">
											</div>
										</div>
										<div class="col-md-3 px-1">
											<div class="form-group">
												<label>Nome</label> <input type="text" class="form-control"
													placeholder="name" name="nome" id="">
											</div>
										</div>
										<div class="col-md-4 pl-1">
											<div class="form-group">
												<label for="exampleInputEmail1">Telefone</label>
												<input type="text" class="form-control"
													placeholder="telefone" name="telefone" id="telefone">
											</div>
										</div>

									</div>

									<div class="row">
										<div class="col-md-6 pr-1">
											<div class="form-group">
												<label>Data Nascimento</label> <input type="date"
													class="form-control" placeholder="Data de Nascimento"
													name="dataNascimento" id="dataNascimento">
											</div>
										</div>
										<div class="col-md-6 pl-1">
											<div class="form-group">
												<label>E-mail</label> <input type="email"
													class="form-control" placeholder="email" name="email"
													id="email">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-4 pr-1">
											<div class="form-group">
												<label>Rg</label> <input type="text" class="form-control"
													placeholder="rg" name="rg" id="rg">
											</div>
										</div>
										<div class="col-md-4 px-1">
											<div class="form-group">
												<label>Sexo</label> 
												<select class="form-control" id="sexo"
													name="sexo">
													<option value="masculino">Masculino</option>
													<option value="feminino">Feminino</option>
												</select>

											</div>
										</div>
										<div class="col-md-4 pl-1">
											<div class="form-group">
												<label>Data de Cadastro</label> <input type="date" class="form-control"
													placeholder="dataCadastro" name="uf" id="dataCadastro">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-6 pr-1">
											<div class="form-group">
												<label>CPF</label> <input type="text" class="form-control"
													placeholder="cpf" name="cpf" id="cpf">
											</div>
										</div>
										<div class="col-md-6 pl-1">
											<div class="form-group">
												<label>Cep</label> <input type="text" class="form-control"
													placeholder="cep" name="cep" id="cep">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 pr-1">
											<div class="form-group">
												<label>Logradouro</label> <input type="text"
													class="form-control" placeholder="logradouro"
													name="logradouro" id="logradouro">
											</div>
										</div>
										<div class="col-md-6 pl-1">
											<div class="form-group">
												<label>Número</label> <input type="text"
													class="form-control" placeholder="numero" name="logradouro"
													id="logradouro">
											</div>
										</div>
									</div>


									<div class="row">
										<div class="col-md-4 pr-1">
											<div class="form-group">
												<label>Bairro</label> <input type="text"
													class="form-control" placeholder="bairro" name="bairro"
													id="bairro">
											</div>
										</div>
										<div class="col-md-4 px-1">
											<div class="form-group">
												<label>Cidade</label> <input type="text"
													class="form-control" placeholder="cidade" name="cidade"
													id="cidade">
											</div>
										</div>
										<div class="col-md-4 pl-1">
											<div class="form-group">
												<label>UF</label> <input type="text" class="form-control"
													placeholder="uf" name="uf" id="uf">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="update ml-auto mr-auto">
											<button type="submit" class="btn btn-primary btn-round">Cadastrar</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!--   Core JS Files   -->
	<jsp:include page="script.jsp"></jsp:include>
</body>

</html>
