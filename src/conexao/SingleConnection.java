package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

/*Classe de conexão com banco de dados*/

public class SingleConnection {
	
	private static String url = "jdbc:postgresql://localhost:5432/lmc?autoReconnect=true";
	private static String user = "postgres";
	private static String password = "admin";
	private static Connection connection = null;
	
	static {
		
		conectar();
	}
	
	public SingleConnection() {
		
		conectar();
	}
	
	private static void conectar() {
		
		try {
			
			if(connection == null) {
				
				Class.forName("org.postgresql.Driver"); // Carrega o driver de conexão com banco
				connection = DriverManager.getConnection(url, user, password);
				connection.setAutoCommit(false);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	
	public static Connection getConnection() {
		
		return connection;
	}
}
