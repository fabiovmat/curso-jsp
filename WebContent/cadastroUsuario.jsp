<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Cadastro de usuários</title>
</head>
<body>
<div align="center">
	<h1>Cadastro de Usuário</h1>
	
	
	
	</div>

<div align="center">
	<form action="salvarUsuario" method="post" id="formUser">

		<table>
			<tr>
				<td>Codigo</td>
				<td><input type="text" readonly="readonly" id="id" name="id"
					value="${user.id}"></td>
			</tr>

			<tr>
				<td>Login</td>
				<td><input type="text" id="login" name="login"
					value="${user.login}"></td>
			</tr>

			<tr>
				<td>Senha</td>
				<td><input type="password" id="senha" name="senha"
					value="${user.senha}"></td>
			</tr>

			<tr>
				<td>Nome</td>
				<td><input type="text" id="nome" name="nome"
					value="${user.nome}"></td>
				
			</tr>
			
				<tr>
				<td>Telefone</td>
				<td><input type="text" id="telefone" name="telefone"
					value="${user.telefone}"></td>
				
			</tr>
			
			
			
			
			
		</table>
		
		<h3 style= "color:#ed0c05;">${msg}</h3>
		
		<br> <input type="submit" value="Salvar"> <br>
		<br> <input type="submit" value="Cancelar" onclick="document.getElementById('formUser').action = 'salvarUsuario?acao=reset'"> <br>
		<br>

	</form>
	</div>

	<table class="table">
		<thead class="thead-dark">
			<tr>

				<th scope="col">ID</th>
				<th scope="col">Login</th>
				<th scope="col">Nome</th>
				<th scope="col">Telefone</th>
				<th scope="col">Excluir</th>
				<th scope="col">Editar</th>


			</tr>
		</thead>
		<tbody>
			<c:forEach items="${usuarios}" var="user">
				<tr>

					<td style="width: 150px"><c:out value="${user.id}"></c:out></td>

					<td style="width: 150px"><c:out value="${user.login}"></c:out></td>

					<td style="width: 150px"><c:out value="${user.nome}"></c:out></td>

					<td style="width: 150px"><c:out value="${user.telefone}"></c:out></td>
					
					<td><a href="salvarUsuario?acao=delete&user=${user.id}"><img
							src="resources/assets/img/delete.png" alt="Excluir"
							title="Excluir" width=20px></a></td>

					<td><a href="salvarUsuario?acao=editar&user=${user.id}"><img
							src="resources/assets/img/edit.png" alt="Editar" title="Editar"
							width=20px></a></td>
				</tr>


			</c:forEach>
		</tbody>
	</table>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
</html>