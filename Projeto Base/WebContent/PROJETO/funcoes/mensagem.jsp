<%
	try{
		String mensagem = request.getParameter("mensagem");
	
		switch(mensagem){
			case "falhaLogin":
				out.print("<div class='mensagem'>Usu�rio ou senha incorretos</div>");
			break;
			case "falhaSessao":
				out.print("<div class='mensagem'>Realize o login</div>");
			break;
			case "cadastroOk":
				out.print("<div class='mensagem'>Produto cadastro com sucesso</div>");
			break;
			case "cadastroFalha":
				out.print("<div class='mensagem'>Falha ao cadastrar o produto</div>");
			break;
			case "excluirOk":
				out.print("<div class='mensagem'>Produto excluido com sucesso</div>");
			break;
			case "excluirFalha":
				out.print("<div class='mensagem'>Falha ao excluir o produto</div>");
			break;
			case "alterarOk":
				out.print("<div class='mensagem'>Produto alterado com sucesso</div>"+
						"<script> "+
							"var counter = 0; "+
							"var timer = setInterval(function() {"+
								"if( counter % 2 == 1 ) { "+
									"document.getElementsByClassName('mensagem')[0].style.display='none';"+
									"counter++; "+
								"}else{ "+
									"counter++; "+
									"document.getElementsByClassName('mensagem')[0].style.display='block';"+
								"} "+
								"if( counter == 30) {"+
										"clearInterval( timer ); "+
								"}"+
							"}, 1000); "+
						"</script>");
			break;
			case "alterarFalha":
				out.print(
						"<div class='mensagem'>Falha ao alterar o produto</div>");
			break;
		}
	}catch(Exception ex){}
%>