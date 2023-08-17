<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!--   	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">	 -->
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Cadastro de Usuário</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	
		<form action="/cep" class="form-inline" method="post">
		
			<label>Cep:</label> 	
			<input type="text" name="cep" value="55014450" class="form-control">

			<button type="submit" class="btn btn-primary">Buscar</button>
		</form>
	
		<form action="/usuario/incluir" method="post">
			<h3>Cadastro de Usuário</h3>
		
			<div class="form-group">
				<label>Nome:</label> 	
				<input type="text" name="nome" value="Nivaldo Ferreira" class="form-control" required>
			</div>
			
			<div class="form-group">
				<label>Senha:</label>
				<input type="password" name="senha" value="123" class="form-control" required>
			</div>
			
			<div class="form-group">
				<label>E-mail:</label>
				<input type="email" name="email" value="nivaldo@gmail.com" class="form-control" required>
			</div>

			<div class="form-group">						
				<label>Tipo:</label>			
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" name="tipo" value="Administrador" class="form-check-input"> Administrador
				  </label>
				</div>			
				<div class="form-check">
				  <label class="form-check-label">
					<input type="radio" name="tipo" value="Diretor" class="form-check-input"> Diretor
				  </label>
				</div>			
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" name="tipo" value="Padrão" checked class="form-check-input"> Padrão
				  </label>
				</div>			
			</div>
			
			<div class="form-group">
				<label>Setor:</label>
				<select name="setor" class="form-control">
					<option value="Diretoria">Diretoria</option>
					<option value="Comercial" selected>Comercial</option>
					<option value="Desenvolvimento">Desenvolvimento</option>
				</select>
			</div>
			
			<c:import url="/WEB-INF/jsp/endereco/cadastro.jsp"/>
			
			<button type="submit">Cadastrar</button>
		</form>
	</div>
</body>
</html>