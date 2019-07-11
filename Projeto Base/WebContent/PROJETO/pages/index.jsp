<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Projeto Base</title>
		<link rel="stylesheet" href="../css/estilos.css">
	</head>
	<body>
		<%@include file="../funcoes/mensagem.jsp"%>
		<div class="imagemDiv">
			<img class="imagem" src="../imagens/logo.png" title="X" alt="Caso a imagem não carregue">
		</div>
		<form class="formularioLogin" action="../requisicoes/logar.jsp" method="post">
			<p id="titulo2">Por favor entre com o seu e-mail e senha.</p>
			<input type="email" placeholder="E-mail" name="email">
			<input type="password" placeholder="Senha" name="senha">
			<input type="submit" id="enviar" value="Entrar">
		</form>
	</body>
</html>