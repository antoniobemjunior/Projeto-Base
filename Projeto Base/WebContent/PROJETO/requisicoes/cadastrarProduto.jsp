<%@page import="dao.ProdutoDao"%>
<%@page import="beans.ProdutoBean"%>
    <%
    	String produto = request.getParameter("produto");
    	double valor = Double.parseDouble(request.getParameter("valor"));
    	
    	ProdutoBean pb = new ProdutoBean();
    	pb.setNomeProduto(produto);
    	pb.setValorProduto(valor);
    	
    	ProdutoDao pd = new ProdutoDao();
    	boolean valida = pd.cadastrar(pb);
    	
    	if(valida == true){
    		response.sendRedirect("../produtos.jsp?mensagem=cadastroOk");
    	}else{
    		response.sendRedirect("../produtos.jsp?mensagem=cadastroFalha");
    	}
    %>