<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.png" type="image/x-icon">
	<meta charset="UTF-8">
	<title>Atualizar Usuário</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	
		<form action="/usuario/${id}/alterar" method="post">
			<h3>Atualizar Usuário</h3>
		
			<div class="form-group">
				<label>Nome:</label> 	
				<input type="text" name="nome" value="${usuarioss.nome}" class="form-control" required>
			</div>
			
			<div class="form-group">
				<label>Senha:</label>
				<input type="password" name="senha" value="${usuarioss.senha}" class="form-control" required>
			</div>
			
			<div class="form-group">
				<label>E-mail:</label>
				<input type="email" name="email" value="${usuarioss.email}" class="form-control" required>
			</div>

			<div class="form-group">						
				<label>Tipo:</label>
				<div class="form-check">
					<label class="form-check-label">
						<input type="radio" name="tipo" value="Padrão" class="form-check-input" ${usuarioss.tipo == 'Padrão' ? 'checked' : ''}> Padrão
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label">
						<input type="radio" name="tipo" value="Diretor" class="form-check-input" ${usuarioss.tipo == 'Diretor' ? 'checked' : ''}> Diretor
					</label>
				</div>
				<div class="form-check">
					<label class="form-check-label">
						<input type="radio" name="tipo" value="Administrador" class="form-check-input" ${usuarioss.tipo == 'Administrador' ? 'checked' : ''}> Administrador
					</label>
				</div>
			</div>
			
			<div class="form-group">
				<label>Setor:</label>
				<select name="setor" class="form-control">
					<option value="Diretoria" ${usuarioss.setor == 'Diretoria' ? 'selected' : ''}>Diretoria</option>
					<option value="Comercial" ${usuarioss.setor == 'Comercial' ? 'selected' : ''}>Comercial</option>
					<option value="Desenvolvimento" ${usuarioss.setor == 'Desenvolvimento' ? 'selected' : ''}>Desenvolvimento</option>
				</select>
			</div>			
			
			<button type="submit" class="btn btn-success">Atualizar</button>
		</form>
	</div>
</body>
</html>
