<%@page import="dao.ProdutoDao"%>
<%
	int idProduto = Integer.parseInt(request.getParameter("idProduto"));
    ProdutoDao pd = new ProdutoDao();
    
    if(pd.excluir(idProduto) == true){
    	response.sendRedirect("../produtos.jsp?mensagem=excluirOk");
    }else{
    	response.sendRedirect("../produtos.jsp?mensagem=excluirFalha");
    }
%>