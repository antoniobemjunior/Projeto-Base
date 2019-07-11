<%@page import="beans.ProdutoBean"%>
<%@page import="dao.ProdutoDao"%>
<%
	int idProduto = Integer.parseInt(request.getParameter("id"));
    String nomeProduto = request.getParameter("produto");
    double valorProduto = Double.parseDouble(request.getParameter("valor"));
	
    
    ProdutoBean pb = new ProdutoBean();
    pb.setIdProduto(idProduto);
    pb.setNomeProduto(nomeProduto);
    pb.setValorProduto(valorProduto);
    
    ProdutoDao pd = new ProdutoDao();
    
    if(pd.alterar(pb) == true){
    	response.sendRedirect("../produtos.jsp?mensagem=alterarOk");
    }else{
    	response.sendRedirect("../produtos.jsp?mensagem=alterarFalha");
    }
%>