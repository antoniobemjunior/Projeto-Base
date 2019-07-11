<%
	try{
		String mensagem = request.getParameter("mensagem");
	
		switch(mensagem){
			case "falhaLogin":
				out.print("<div class='mensagem'>Usuário ou senha incorretos</div>"+
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
							"if( counter == 2) {"+
									"clearInterval( timer ); "+
							"}"+
						"}, 1000); "+
					"</script>");
			break;
			case "falhaSessao":
				out.print("<div class='mensagem'>Realize o login</div>"+
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
							"if( counter == 2) {"+
									"clearInterval( timer ); "+
							"}"+
						"}, 1000); "+
					"</script>");
			break;
			case "cadastroOk":
				out.print("<div class='mensagem'>Produto cadastro com sucesso</div>"+
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
							"if( counter == 2) {"+
									"clearInterval( timer ); "+
							"}"+
						"}, 1000); "+
					"</script>");
			break;
			case "cadastroFalha":
				out.print("<div class='mensagem'>Falha ao cadastrar o produto</div>"+
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
							"if( counter == 2) {"+
									"clearInterval( timer ); "+
							"}"+
						"}, 1000); "+
					"</script>");
			break;
			case "excluirOk":
				out.print("<div class='mensagem'>Produto excluído com sucesso</div>"+
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
							"if( counter == 2) {"+
									"clearInterval( timer ); "+
							"}"+
						"}, 1000); "+
					"</script>");
			break;
			case "excluirFalha":
				out.print("<div class='mensagem'>Falha ao excluir o produto</div>"+
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
							"if( counter == 2) {"+
									"clearInterval( timer ); "+
							"}"+
						"}, 1000); "+
					"</script>");
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
								"if( counter == 2) {"+
										"clearInterval( timer ); "+
								"}"+
							"}, 1000); "+
						"</script>");
			break;
			case "alterarFalha":
				out.print(
						"<div class='mensagem'>Falha ao alterar o produto</div>"+
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
									"if( counter == 2) {"+
											"clearInterval( timer ); "+
									"}"+
								"}, 1000); "+
							"</script>");
			break;
		}
	}catch(Exception ex){}
%>