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
	<h1>A��es ambientais</h1>
	<p>A Moura tem uma rigorosa estrutura de preserva��o do meio ambiente, que come�a</p>
	<p>desde a fabrica��o dos nossos produtos at� a conscientiza��o dos nossos</p>
	<p>funcion�rios, clientes, vizinhos e fornecedores.</p>
	<h1></h1>
	<p>A partir do Programa Ambiental Moura - PAM, o sistema de gest�o ambiental �</p>
	<p>padronizado e todos t�m a responsabilidade de garantir a sua aplica��o, dissemina��o</p>
	<p>e a busca da melhoria cont�nua do desempenho ambiental.</p>
	<h1></h1>
	<p>A Baterias Moura possui a certifica��o ISO 14001 e � reconhecida como uma</p>
	<p>companhia engajada com o bem-estar social e do planeta.</p>
	<div id="botons">
		<section>
			<div>
				<img class="img" src="../imagens/boton1.png" height="180px">
			</div>
			<p>Log�stica reversa</p>
			<br>
			<span class="spanColor">Moura tem capacidade para</span>
			<span class="spanColor">reciclar 100% das baterias</span>
			<span class="spanColor">produzidas no mercado. Para</span>
			<span class="spanColor">dar destino �s suas baterias</span>
			<span class="spanColor">usadas, entre em contato</span>
			<span class="spanColor">conosco atrav�s do</span> 
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
			<p>Redu��o de emiss�o de</p>
			<p>gases de efeito estufa</p>
			<br>
			<span class="spanColor">Redu��o de emiss�es dos gases</span>
			<span class="spanColor">de efeito estufa, atrav�s de</span>
			<span class="spanColor">mudan�as tecnol�gicas em</span>
			<span class="spanColor">nossos processos fabris e</span>
			<span class="spanColor">investimentos em toda a cadeia</span>
			<span class="spanColor">produtiva. Desde a implanta��o</span>
			<span class="spanColor">do projeto, em 2009, j�</span>
			<span class="spanColor">conseguimos reduzir 11% dos</span>
			<span class="spanColor">gases nocivos � atmosfera.</span>
			<span id="espacamento">.</span> 
			<span id="espacamento">.</span> 
			<span id="espacamento">.</span> 
		</section>
		<section>
			<div>
				<img class="img" src="../imagens/boton3.png" height="180px">
			</div>
			<p>Gest�o h�drica</p>
			<h1></h1>
			<span class="spanColor">Nosso compromisso � garantir o</span>
			<span class="spanColor">uso sustent�vel dos recursos</span>
			<span class="spanColor">h�dricos, promovendo a</span>
			<span class="spanColor">conscientiza��o dos</span>
			<span class="spanColor">colaboradores, parceiros e</span>
			<span class="spanColor">comunidade, al�m de trabalhar</span>
			<span class="spanColor">fortemente em tecnologias de</span> 
			<span class="spanColor">ponta que garantem a economia</span> 
			<span class="spanColor">de �gua em nossos processos.</span> 
			<span class="spanColor">Nos �ltimos tr�s anos, a Moura</span> 
			<span class="spanColor">reduziu 36% do consumo de</span> 
			<span class="spanColor">�gua na organiza��o.</span>  
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