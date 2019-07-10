<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teste de idiomas</title>
</head>
<body>

<%

	String idioma = "Portugues";

	//Verificar se existe alguma sessão
	try{
		idioma = session.getAttribute("idioma").toString();
	}catch(Exception e){}
	
	//Exibir o idioma
	out.print("<h1>"+idioma+"</h1>");
%>

<hr>
<a href="idiomas.jsp?lingua=portugues">Português</a>
<a href="idiomas.jsp?lingua=ingles">Inglês</a>
<a href="idiomas.jsp?lingua=espanhol">Espanhol</a>

<hr>
<a href="index.jsp">Início</a>
<a href="teste.jsp">Teste</a>

</body>
</html>