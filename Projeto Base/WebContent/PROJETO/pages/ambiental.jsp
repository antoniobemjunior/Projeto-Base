<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="../funcoes/topo.jsp" %>

<script>

	function funcao(){
		document.body.scrollTop = 500;
		document.documentElement.scrollTop = 500;
		//https://www.moura.com.br/sobre-nos/
	}
	
</script>

<div id="ambientalInterno">
	<h1>Ações ambientais</h1>
	<p>A Moura tem uma rigorosa estrutura de preservação do meio ambiente, que começa</p>
	<p>desde a fabricação dos nossos produtos até a conscientização dos nossos</p>
	<p>funcionários, clientes, vizinhos e fornecedores.</p>
	<h1></h1>
	<p>A partir do Programa Ambiental Moura - PAM, o sistema de gestão ambiental é</p>
	<p>padronizado e todos têm a responsabilidade de garantir a sua aplicação, disseminação</p>
	<p>e a busca da melhoria contínua do desempenho ambiental.</p>
	<h1></h1>
	<p>A Baterias Moura possui a certificação ISO 14001 e é reconhecida como uma</p>
	<p>companhia engajada com o bem-estar social e do planeta.</p>
	<div id="botons">
		<section>
			<div>
				<img class="img" src="../imagens/boton1.png" height="180px">
			</div>
			<p>Logística reversa</p>
			<br>
			<span class="spanColor">Moura tem capacidade para</span>
			<span class="spanColor">reciclar 100% das baterias</span>
			<span class="spanColor">produzidas no mercado. Para</span>
			<span class="spanColor">dar destino às suas baterias</span>
			<span class="spanColor">usadas, entre em contato</span>
			<span class="spanColor">conosco através do</span> 
			<a href="mailto:sustentabilidade.ambiental@grupomoura.com">
				<span class="spanColor2">sustentabilidade.ambiental@</span>
				<span class="spanColor2">grupomoura.com.</span>
			</a>
			<span id="espacamento">.</span>
			<span id="espacamento">.</span> 
			<span id="espacamento">.</span>  
			<span id="espacamento">.</span> 
		</section>
		<section>
			<div>
				<img id="imgAmbientalInterno" src="../imagens/boton2.png" height="180px">
			</div>
			<p>Redução de emissão de</p>
			<p>gases de efeito estufa</p>
			<br>
			<span class="spanColor">Redução de emissões dos gases</span>
			<span class="spanColor">de efeito estufa, através de</span>
			<span class="spanColor">mudanças tecnológicas em</span>
			<span class="spanColor">nossos processos fabris e</span>
			<span class="spanColor">investimentos em toda a cadeia</span>
			<span class="spanColor">produtiva. Desde a implantação</span>
			<span class="spanColor">do projeto, em 2009, já</span>
			<span class="spanColor">conseguimos reduzir 11% dos</span>
			<span class="spanColor">gases nocivos à atmosfera.</span>
			<span id="espacamento">.</span> 
			<span id="espacamento">.</span> 
			<span id="espacamento">.</span> 
		</section>
		<section>
			<div>
				<img class="img" src="../imagens/boton3.png" height="180px">
			</div>
			<p>Gestão hídrica</p>
			<h1></h1>
			<span class="spanColor">Nosso compromisso é garantir o</span>
			<span class="spanColor">uso sustentável dos recursos</span>
			<span class="spanColor">hídricos, promovendo a</span>
			<span class="spanColor">conscientização dos</span>
			<span class="spanColor">colaboradores, parceiros e</span>
			<span class="spanColor">comunidade, além de trabalhar</span>
			<span class="spanColor">fortemente em tecnologias de</span> 
			<span class="spanColor">ponta que garantem a economia</span> 
			<span class="spanColor">de água em nossos processos.</span> 
			<span class="spanColor">Nos últimos três anos, a Moura</span> 
			<span class="spanColor">reduziu 36% do consumo de</span> 
			<span class="spanColor">água na organização.</span>  
		</section>
	</div>
	<a onclick="funcao()" href="https://www.moura.com.br/wp-content/uploads/2016/09/Cartilha-Sustentabilidade-Folder-PAM.pdf" target="_blank">
		<img class="cartilha" src="../imagens/baixeAnossaCartilha.png">
	</a>
</div>

<footer>
	<a href="../pages/inicio.jsp">
		<p id="voltarP">VOLTAR</p>
		<img id="voltarImg" src="../imagens/voltar.png">
	</a>
</footer>

</body>
</html>