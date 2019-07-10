package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.ProdutoBean;
import conexao.Conexao;

public class ProdutoDao {
	
	public boolean cadastrar(ProdutoBean obj) {
		boolean situacao = false;
		Connection conexao = Conexao.obterConexao();
		try {
			String sql = "INSERT INTO produtos (nomeProduto, valorProduto) VALUES (?,?)";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, obj.getNomeProduto());
			pstmt.setDouble(2, obj.getValorProduto());
			pstmt.execute();
			situacao = true;
			pstmt.close();
			conexao.close();
		}catch(Exception ex) {
			System.out.println("Falha ao cadastrar "+ex.getMessage());
		}
		return situacao;
	}
	
	public String selecionar() {
		String estrutura = "<table class=\"tabelaProduto\">"; 
				   estrutura+= "<tr>"; 
					   estrutura+= "<td>Código</td>"; 
					   estrutura+= "<td>Produto</td>"; 
					   estrutura+= "<td>Valor</td>"; 
					   estrutura+= "<td>Alterar</td>"; 
					   estrutura+= "<td>Excluir</td>"; 
				   estrutura+= "</tr>";
				   
				   Connection conexao = Conexao.obterConexao();
				   
				   try{
					   String sql = "SELECT * FROM produtos";
					   Statement stmt = conexao.createStatement();
					   ResultSet rs = stmt.executeQuery(sql);
					   while(rs.next()) {
						   	estrutura+= "<tr>"; 
						   		estrutura+= "<td>"+rs.getInt(1)+"</td>";
						   		estrutura+= "<td>"+rs.getString(2)+"</td>";
						   		estrutura+= "<td>"+rs.getDouble(3)+"</td>";
						   		estrutura+= "<td><a class='link' href='produtos.jsp?idProduto="+rs.getInt(1)+"'>Alterar</a></td>";
						   		estrutura+= "<td><a class='link' href='requisicoes/excluirProduto.jsp?idProduto="+rs.getInt(1)+"'>Excluir</a></td>";
					   		estrutura+= "</tr>";
					   }
					   stmt.close();
					   conexao.close();
				   }catch(Exception ex) {
					   
				   }
				   
			       estrutura+= "</table>";
		return estrutura;
	}
	
	public boolean excluir(int idProduto) {
		boolean situacao = false;
		Connection conexao = Conexao.obterConexao();
		try {
			String sql = "DELETE FROM produtos WHERE idProduto = ?";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setInt(1, idProduto);
			pstmt.execute();
			situacao = true;
			pstmt.close();
			conexao.close();
		}catch(Exception ex) {
			
		}
		return situacao;
	}
	
	public ProdutoBean especificarProduto(int idProduto) {
		ProdutoBean pb = new ProdutoBean();
		Connection conexao = Conexao.obterConexao();
		try {
			String sql = "SELECT * FROM produtos WHERE idProduto = ?";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setInt(1, idProduto);
			ResultSet rs = pstmt.executeQuery();
			rs.last();
			pb.setIdProduto(rs.getInt(1));
			pb.setNomeProduto(rs.getString(2));
			pb.setValorProduto(rs.getDouble(3));
		}catch(Exception ex) {
			
		}
		return pb;
	}
	
	public boolean alterar(ProdutoBean pb) {
		boolean situacao = false;
		Connection conexao = Conexao.obterConexao();
		try {
			String sql = "UPDATE produtos SET nomeProduto=?,valorProduto=? WHERE idProduto=?";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, pb.getNomeProduto());
			pstmt.setDouble(2, pb.getValorProduto());
			pstmt.setInt(3, pb.getIdProduto());
			pstmt.execute();
			situacao = true;
			pstmt.close();
			conexao.close();
		}catch(Exception ex) {
			
		}
		return situacao;
	}
}
