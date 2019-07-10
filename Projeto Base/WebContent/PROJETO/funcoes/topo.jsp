<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Painel</title>
	<link rel="stylesheet" href="../css/estilos.css">
</head>
<script type="text/javascript">
	window.onload = function(){
		inicio();
	}

	var azul = "rgb(255,255,0)";
	var amarelo = "rgb(0,0,204)";
	var arredondamento = "14px";
	var negrito = "bold";
	var normal = "normal";
	
	function inicio(){
		var pagina  = location.pathname;
		if(pagina == "/Projeto_Base/PROJETO/pages/inicio.jsp" || pagina == "/Projeto_Base/PROJETO/pages/social.jsp" || pagina == "/Projeto_Base/PROJETO/pages/tecnologico.jsp" || pagina == "/Projeto_Base/PROJETO/pages/ambiental.jsp"){
			padrao1("inicio");
		}
		
		if(pagina == "/Projeto_Base/PROJETO/pages/painel.jsp") padrao1("empresa");
		
		if(pagina == "/Projeto_Base/PROJETO/pages/noticias.jsp") padrao1("noticias");
		
		if(pagina == "/Projeto_Base/PROJETO/pages/produtos.jsp") padrao1("produtos");
		
		if(pagina == "/Projeto_Base/PROJETO/pages/contato.jsp") padrao1("contato");
		
		if(pagina == "/Projeto_Base/PROJETO/pages/sair.jsp") padrao1("sair");
	}
	function padrao1(a){
		var aFundo = document.getElementById(a).style.backgroundColor = azul;
		var aBorda = document.getElementById(a).style.borderRadius = arredondamento;
		var aLetra = document.getElementById(a).style.color = amarelo;
		var aFonte = document.getElementById(a).style.fontWeight = negrito;
	}
	function inicioIN(){
		padrao2("inicio","empresa","noticias","produtos","contato","sair");
	}
	function empresaIN(){
		padrao2("empresa","inicio","noticias","produtos","contato","sair");
	}
	function noticiasIN(){	
		padrao2("noticias","inicio","empresa","produtos","contato","sair");
	}
	function produtosIN(){	
		padrao2("produtos","inicio","empresa","noticias","contato","sair");
	}
	function contatoIN(){	
		padrao2("contato","inicio","empresa","noticias","produtos","sair");
	}
	function sairIN(){		
		padrao2("sair","inicio","empresa","noticias","produtos","contato");
	}
	
	function inicioOUT(){
		padrao3("inicio");		
	}
	function empresaOUT(){	
		padrao3("empresa");
	}
	function noticiasOUT(){
		padrao3("noticias");
	}
	function produtosOUT(){	
		padrao3("produtos");
	}
	function contatoOUT(){	
		padrao3("contato");
	}
	function sairOUT(){		
		padrao3("sair");
	}

	function padrao2(a, b, c, d, e, f){
		var aFundo = document.getElementById(a).style.backgroundColor = azul;
		var aBorda = document.getElementById(a).style.borderRadius = arredondamento;
		var aLetra = document.getElementById(a).style.color = amarelo;
		var aFonte = document.getElementById(a).style.fontWeight = negrito;

		var bFundo = document.getElementById(b).style.backgroundColor = amarelo;
		var bBorda = document.getElementById(b).style.borderRadius = arredondamento;
		var bLetra = document.getElementById(b).style.color = azul;
		var bFonte = document.getElementById(b).style.fontWeight = normal;
		
		var cFundo = document.getElementById(c).style.backgroundColor = amarelo;
		var cBorda = document.getElementById(c).style.borderRadius = arredondamento;
		var cLetra = document.getElementById(c).style.color = azul;
		var cFonte = document.getElementById(c).style.fontWeight = normal;
		
		var dFundo = document.getElementById(d).style.backgroundColor = amarelo;
		var dBorda = document.getElementById(d).style.borderRadius = arredondamento;
		var dLetra = document.getElementById(d).style.color = azul;
		var dFonte = document.getElementById(d).style.fontWeight = normal;
		
		var eFundo = document.getElementById(e).style.backgroundColor = amarelo;
		var eBorda = document.getElementById(e).style.borderRadius = arredondamento;
		var eLetra = document.getElementById(e).style.color = azul;
		var eFonte = document.getElementById(e).style.fontWeight = normal;
		
		var fFundo = document.getElementById(f).style.backgroundColor = amarelo;
		var fBorda = document.getElementById(f).style.borderRadius = arredondamento;
		var fLetra = document.getElementById(f).style.color = azul;
		var fFonte = document.getElementById(f).style.fontWeight = normal;
	}
	
	function padrao3(a){
		var aFundo = document.getElementById(a).style.backgroundColor = amarelo;
		var aLetra = document.getElementById(a).style.color = azul;
		var aFonte = document.getElementById(a).style.fontWeight = normal;
		inicio();
	}
	
</script>
<body>
	
	<% 
		String idioma = "portugues";
		
		//Verificar se existe alguma sessão
		try{
			idioma = session.getAttribute("idioma").toString();
		}catch(Exception e){}
	
		try{
			Object usuario = session.getAttribute("usuario");

			if(usuario == null){
				response.sendRedirect("index.jsp?mensagem=falhaSessao");	
			}
		}catch(Exception ex){
			//response.sendRedirect("index.jsp");
			out.print("Falha na sessão!");
		}
	
		
	%>
	
	<header>
		<!--<div class="frame">-->
			<img id="brasil" 	src="../imagens/200x50.jpg">
			<!-- <video id="vid" autoplay="autoplay">
		    	<source src="download.mp4" type="video/mp4">
			</video> -->
		<!--</div>-->
		<nav>
			<a id="inicio" href="inicio.jsp" onmouseenter="inicioIN()" onmouseleave="inicioOUT()">Início</a><a id="empresa" href="painel.jsp" onmouseenter="empresaIN()" onmouseleave="empresaOUT()">Empresa</a><a id="noticias" href="noticias.jsp" onmouseenter="noticiasIN()" onmouseleave="noticiasOUT()">Notícias</a><a id="produtos"href="produtos.jsp" onmouseenter="produtosIN()" onmouseleave="produtosOUT()">Produtos</a><a id="contato" href="contato.jsp" onmouseenter="contatoIN()" onmouseleave="contatoOUT()">Fale Conosco</a><a id="sair" 	href="sair.jsp" 	onmouseenter="sairIN()" 	onmouseleave="sairOUT()">Sair</a>
		</nav>
	</header>
	<div id="idiomas">
		<a id="linkIdioma" href="../funcoes/idiomas.jsp?lingua=portugues">
			<img id="brasil" 	src="../imagens/brasil.png" 		height="25" 	onclick="brasil()" 		title="Brasil">
		</a>
		<a id="linkIdioma" href="../funcoes/idiomas.jsp?lingua=eua">
			<img id="eua" 		src="../imagens/eua.png" 			height="25" 	onclick="eua()" 		title="Estados Unidos da América">
		</a>
		<a id="linkIdioma" href="../funcoes/idiomas.jsp?lingua=espanha">
			<img id="espanha" 	src="../imagens/espanha.png" 		height="25" 	onclick="espanha()" 	title="Espanha">
		</a>
		<a id="linkIdioma" href="../funcoes/idiomas.jsp?lingua=argentina">
			<img id="argentina"	src="../imagens/argentina.png" 		height="25" 	onclick="argentina()" 	title="Argentina">
		</a>
		<a id="linkIdioma" href="../funcoes/idiomas.jsp?lingua=mexico">
			<img id="mexico" 	src="../imagens/mexico.png" 		height="25" 	onclick="mexico()"		title="México">
		</a>
		<a id="linkIdioma" href="../funcoes/idiomas.jsp?lingua=portugal">
			<img id="portugal" 	src="../imagens/portugal.png" 		height="25" 	onclick="portugal()" 	title="Portugal">
		</a>
		<a id="linkIdioma" href="../funcoes/idiomas.jsp?lingua=reinounido">
			<img id="reinounido"src="../imagens/reinounido.png" 	height="25" 	onclick="reinounido()" 	title="Reino Unido">
		</a>
	</div>
