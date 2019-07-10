package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	public static Connection obterConexao() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/jsp","root","");
		}catch(Exception ex) {
			System.out.println("Falha ao conectar "+ex.getMessage());
		}
		return con;
	}
	
}
