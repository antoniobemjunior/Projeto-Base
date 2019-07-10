<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

	//Obter o idioma
	String lingua = request.getParameter("lingua");

	//Criar a sessão
	session.setAttribute("idioma", lingua);

%>































<Script>
	function idiomaSelecionado(){
		switch(lingua){
			case portugues:	
				padrao4("Empresa","Notícias","Produtos","Fale Conosco","Sair","Brasil","Estados Unidos da América","Espanha","Argentina","México","Portugal","Reino Unido");
			break;
			case eua:
				padrao4("Company","News","Products","Contact us","Exit","Brazil","United States of America","Spain","Argentina","Mexico","Portugal","United Kingdom");
			break;
			case espanha:
				padrao4("Empresa","Noticias","Productos","Hable con Nosotros","Salir","Brasil","Estados Unidos de América","España","Argentina","México","Portugal","Reino Unido");
			break;
			case argentina:
				padrao4("Empresa","Noticias","Productos","Hable con Nosotros","Salir","Brasil","Estados Unidos de América","España","Argentina","México","Portugal","Reino Unido");
			break;
			case mexico:
				padrao4("Empresa","Noticias","Productos","Hable con Nosotros","Salir","Brasil","Estados Unidos de América","España","Argentina","México","Portugal","Reino Unido");
	}	
	
	function portugal(){
		padrao4("Empresa","Notícias","Produtos","Fale Conosco","Sair","Brasil","Estados Unidos da América","Espanha","Argentina","México","Portugal","Reino Unido");
	}
	
	function reinounido(){
		padrao4("Company","News","Products","Contact us","Exit","Brazil","United States of America","Spain","Argentina","Mexico","Portugal","United Kingdom");
	}	
	
	function padrao4(a, b, c, d, e, f, g, h, i, j, k, l){
		var a = document.getElementById("empresa").innerText = a;
		var b = document.getElementById("noticias").innerText = b;
		var c = document.getElementById("produtos").innerText = c;
		var d = document.getElementById("contato").innerText = d;
		var e = document.getElementById("sair").innerText = e;
		document.getElementById("brasil").title = f;
		document.getElementById("eua").title = g;
		document.getElementById("espanha").title = h;
		document.getElementById("argentina").title = i;
		document.getElementById("mexico").title = j;
		document.getElementById("portugal").title = k;
		document.getElementById("reinounido").title = l;
	}
</Script>

<%	
	//Redirecionamento
	response.sendRedirect("../pages/painel.jsp");

%>