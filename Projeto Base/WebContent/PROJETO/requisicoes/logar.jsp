<%@page import="beans.UsuarioBean"%>
<%@page import="dao.UsuarioDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    	String email = request.getParameter("email");
    	String senha = request.getParameter("senha");
    	
	   	UsuarioDao u = new UsuarioDao();
    	int contador = u.verificarLogin(email, senha);
    	
    	if(contador == 0){
    		response.sendRedirect("../pages/index.jsp?mensagem=falhaLogin");
    	}else{
    		UsuarioBean ub = u.dadosUsuario(email, senha);
    		session.setAttribute("usuario", ub);
    		response.sendRedirect("../pages/inicio.jsp");
    	}
    %>