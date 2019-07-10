package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import beans.UsuarioBean;
import conexao.Conexao;

public class UsuarioDao {
	public int verificarLogin(String email, String senha) {
		Connection conexao = Conexao.obterConexao();
		int contador = 0;
		try {
			String sql = "SELECT COUNT(*) FROM usuarios WHERE emailUsuario = ? AND senhaUsuario = ?";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, senha);
			ResultSet rs = pstmt.executeQuery();
			rs.last();
			contador = rs.getInt(1);
		}catch(Exception ex) {
			System.out.println("Falha ao logar "+ex.getMessage());
		}
		
		return contador;
	}
	public UsuarioBean dadosUsuario(String email, String senha) {
		UsuarioBean ub = new UsuarioBean();
		Connection conexao = Conexao.obterConexao();
		try {
			String sql = "SELECT * FROM usuarios WHERE emailUsuario = ? AND senhaUsuario = ?";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, senha);
			ResultSet rs = pstmt.executeQuery();
			rs.last();
			ub.setIdUsuario(rs.getInt(1));
			ub.setNomeUsuario(rs.getString(2));
			ub.setEmailUsuario(rs.getString(3));
			ub.setSenhaUsuario(rs.getString(4));
		}catch(Exception ex) {
			System.out.println("Falha ao obter dados" +ex.getMessage());
		}
		return ub;
	}
}
