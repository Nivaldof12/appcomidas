<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="form-group">
	<label>Cep:</label> 	
	<input type="text" name="cep" value="${endereco.cep}" class="form-control" required>
</div>

<div class="form-group">
	<label>Logradouro:</label> 	
	<input type="text" name="logradouro" value="${endereco.logradouro}" class="form-control" required>
</div>

<div class="form-group">
	<label>Complemento:</label> 	
	<input type="text" name="complemento" value="${endereco.complemento}" class="form-control">
</div>

<div class="form-group">
	<label>Bairro:</label> 	
	<input type="text" name="bairro" value="${endereco.bairro}" class="form-control" required>
</div>

<div class="form-group">
	<label>Localidade:</label> 	
	<input type="text" name="localidade" value="${endereco.localidade}" class="form-control" required>
</div>

<div class="form-group">
	<label>UF:</label> 	
	<input type="text" name="uf" value="${endereco.uf}" class="form-control" required>
</div>