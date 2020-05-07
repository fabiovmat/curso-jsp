<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/estilo.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="alto">
<h1>Bem Vindo ao Curso de JSP</h1>
</div>

<div class="sucesso"><%out.print("Seu sucesso garantido"); %>
</div>



<div class="login">
    <h1>Login</h1>
    <form method="post" action="LoginServlet">
        <input type="text" name="login" id="login"placeholder="Username" required="required" />
        <input type="password" name="senha" id="senha" placeholder="Password" required="required" />
        <button type="submit" value="logar" class="btn btn-primary btn-block btn-large">Logar no sistema</button>
    </form>
</div>



</body>
</html>