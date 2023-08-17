<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Cadastro de Comidas</title>
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
	
		<form action="/comida/incluir" method="post">
			<h3>Cadastro de Comidas</h3>
		
			<c:import url="/WEB-INF/jsp/produto/cadastro.jsp"/>
			
			<div class="form-group">
				<label>Características:</label>
			    <div class="form-check">
			      <label class="form-check-label">
			        <input type="checkbox" name="vegetariana" value="true" class="form-check-input" > vegetariana
			      </label>
			    </div>
			</div>
			
			<div class="form-group">
				<label>quantidade:</label> 	
				<input type="text" name="quantidade" value="1" class="form-control">
			</div>
			
			<div class="form-group">
				<label>ingredientes:</label> 	
				<input type="text" name="ingredientes" value="exemplo" class="form-control">
			</div>

			<button type="submit" class="btn btn-success">Cadastrar</button>
		</form>
	</div>
</body>
</html>