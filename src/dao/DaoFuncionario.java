package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conexao.SingleConnection;
import models.Funcionarios;

public class DaoFuncionario {

	private Connection connection;
	
	public DaoFuncionario() {
		
		connection = SingleConnection.getConnection();
	}
	
	/*metodo Salvar Funcionarios*/
	
	public void salvarFuncionarios(Funcionarios funcionario) {
		
		try {
			
			String sql = "INSERT INTO funcionario(nome,telefone,dataNascimento,email,rg,sexo,dataCadastro"
					+ "cpf,cep,logradouro,numero,bairro,cidade,uf)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement insert = connection.prepareStatement(sql);
			
			insert.setString(1, funcionario.getNome());
			insert.setString(2, funcionario.getTelefone());
			insert.setDate(3, funcionario.getDataNascimento());
			insert.setString(4, funcionario.getEmail());
			insert.setString(5, funcionario.getRg());
			insert.setString(6, funcionario.getSexo());
			insert.setDate(7, funcionario.getDataCadastro());
			insert.setString(8, funcionario.getCpf());
			insert.setString(9, funcionario.getCep());
			insert.setString(10, funcionario.getLogradouro());
			insert.setString(11, funcionario.getNumero());
			insert.setString(12, funcionario.getBairro());
			insert.setString(13, funcionario.getCidade());
			insert.setString(14, funcionario.getUf());
			insert.execute();
			
			connection.commit();
			
		} catch (Exception e) {
			
			try {
				
				connection.rollback();
				
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}
			
			e.printStackTrace(); // para imprimir a pilha de erro no console.
		}
	}
}
