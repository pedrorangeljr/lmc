package dao;

import java.sql.Connection;

import conexao.SingleConnection;

public class DaoFuncionario {

	private Connection connection;
	
	public DaoFuncionario() {
		
		connection = SingleConnection.getConnection();
	}
	
	/*metodo Salvar Funcionarios*/
}
