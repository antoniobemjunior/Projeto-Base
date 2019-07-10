<%@page import="beans.ProdutoBean"%>
<%@page import="dao.ProdutoDao"%>
<%@include file="../funcoes/topo.jsp" %>
<%@include file="../funcoes/mensagem.jsp"%>

	<%
		int idProduto = 0;
		try{
			idProduto = Integer.parseInt(request.getParameter("idProduto"));
		}catch(Exception ex){
			
		}
		if(idProduto == 0){
			
		%>
			<form action="requisicoes/cadastrarProduto.jsp" method="post" class="formularioProduto">
				<input type="text" placeholder="Produto" name="produto" required>
				<input type="text" placeholder="Valor" name="valor" required>
				<input type="submit" value="Cadastrar">
			</form>
			
		<% }else{ 
		
			ProdutoDao pd = new ProdutoDao();
			ProdutoBean pb = pd.especificarProduto(idProduto);
			
		%>
		
			<form action="requisicoes/alterarProduto.jsp" method="post" class="formularioProduto">
				<input type="hidden" name="id" value="<% out.print(idProduto); %>">
				<input type="text" placeholder="Produto" name="produto" value="<% out.print(pb.getNomeProduto()); %>">
				<input type="text" placeholder="Valor" name="valor" value="<% out.print(pb.getValorProduto()); %>">
				<input type="submit" value="Alterar">
				<a href="produtos.jsp">Cancelar</a>
			</form>
		
		<% } %>
		
	<%
		ProdutoDao pd = new ProdutoDao();
		out.print(pd.selecionar());
	%>

</body>
</html>