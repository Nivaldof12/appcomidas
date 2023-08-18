<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <!--  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/style.css">
	<link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon.png" type="image/x-icon">
    <meta charset="UTF-8">
    <title>AppLanche</title>
</head>
<body>

<c:import url="/WEB-INF/jsp/menu.jsp"/>

<div class="container">

    <h3>Listagem de Usuários</h3>

    <c:if test="${not empty mensagem}">
        <div class="alert alert-success">
            <strong>Atenção!</strong> ${mensagem}
        </div>
    </c:if>

    <c:if test="${empty usuarios}">
        <h5>Não existem usuários cadastrados!!!</h5>
    </c:if>

    <c:if test="${not empty usuarios}">
        <h5>Quantidade de usuários cadastrados: ${usuarios.size()}!!!</h5>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Senha</th>
                <th>E-mail</th>
                <th>Tipo</th>
                <th>Setor</th>
                <th>Admin</th>
                <th>Endereço</th>
                <th>Solicitantes</th>
                <th>Produtos</th>
                <th>Pedidos</th>
                <c:if test="${usuario.admin}">
                    <th>Editar</th>
                    <th></th>
                </c:if>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="u" items="${usuarios}">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.nome}</td>
                    <td>${u.senha}</td>
                    <td>${u.email}</td>
                    <td>${u.tipo}</td>
                    <td>${u.setor}</td>
                    <td>${u.admin}</td>
                    <!-- Aplicando a classe de estilo ao campo de endereço -->
                    <td class="endereco">${u.endereco.logradouro}, ${u.endereco.bairro} - ${u.endereco.localidade} - ${u.endereco.uf}, ${u.endereco.cep} - ${u.endereco.complemento}</td>
                    <td>${u.solicitantes.size()}</td>
                    <td>${u.produtos.size()}</td>
                    <td>${u.pedidos.size()}</td>
                    <c:if test="${usuario.admin}">
                        <td><a href="/usuario/${u.id}/editar"><span class="glyphicon glyphicon-pencil"></span></a></td>
                        <td><a href="/usuario/${u.id}/excluir"><span class="glyphicon glyphicon-remove"></span></a></td>
                    </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>

</body>
</html>
