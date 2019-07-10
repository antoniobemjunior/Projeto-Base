<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		//Mensagem
		String idioma = session.getAttribute("idioma").toString();
	
		switch(idioma){
		case "portugues":
		out.print("Oi");
		break;
		

		case "ingles":
		out.print("Hi");
		break;
		

		default:
		out.print("Holla");
		}
	%>

</body>
</html>