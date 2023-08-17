<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Cadastro de Sobremesas</title>
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	
		<form action="/sobremesa/incluir" method="post">
			<h3>Cadastro de Sobremesas</h3>
		
			<c:import url="/WEB-INF/jsp/produto/cadastro.jsp"/>
			
			<div class="form-group">
				<label>Características:</label>
			    <div class="form-check">
			      <label class="form-check-label">
			        <input type="checkbox" name="gelada" value="true" class="form-check-input" > Gelada
			      </label>
			    </div>
			</div>
			
			<div class="form-group">
				<label>Tamanho:</label> 	
				<input type="text" name="tamanho" value="300" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Marca:</label> 	
				<input type="text" name="sabor" value="morango" class="form-control">
			</div>

			<button type="submit" class="btn btn-success">Cadastrar</button>
		</form>
	</div>
</body>
</html>