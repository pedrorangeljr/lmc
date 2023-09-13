package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexao.SingleConnection;
import models.Login;

public class DaoUsuario {
	
	private Connection connection;
	
	public DaoUsuario() {
		
		connection = SingleConnection.getConnection();
	}
	
	/*Metodo para validar Login e Senha*/
	
	public boolean validarAutenticacao(Login login) throws Exception {
		
		String sql = "SELECT * FROM usuario WHERE upper(email) = upper(?) AND upper(senha) = upper(?)";
		PreparedStatement validar = connection.prepareStatement(sql);
		
		validar.setString(1, login.getEmail());
		validar.setString(2, login.getSenha());
		
		ResultSet resultado = validar.executeQuery();
		
		if(resultado.next()) {
			
			return true;
		}
		
		return false;
	}

}
