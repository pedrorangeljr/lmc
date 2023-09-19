package servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Funcionarios;


@WebServlet("/ServletFuncionario")
public class ServletFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServletFuncionario() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			String id = request.getParameter("id");
			String nome = request.getParameter("nome");
			String telefone  = request.getParameter("telefone");
			String dataNascimento = request.getParameter("dataNascimento");
			String email = request.getParameter("email");
			String rg = request.getParameter("rg");
			String sexo = request.getParameter("sexo");
			String dataCadastro = request.getParameter("dataCadastro");
			String cpf = request.getParameter("cpf");
			String cep = request.getParameter("cep");
			String logradouro = request.getParameter("logradouro");
			String numero = request.getParameter("numero");
			String bairro = request.getParameter("bairro");
			String cidade = request.getParameter("cidade");
			String uf = request.getParameter("uf");
			
			Funcionarios funcionario = new Funcionarios();
			
			funcionario.setIdFuncionario(id != null && !id.isEmpty() ? Long.parseLong(id) : null);
			funcionario.setNome(nome);
			funcionario.setTelefone(telefone);
			funcionario.setDataNascimento(new SimpleDateFormat("dd/mm/YYY").parse(dataNascimento));
			funcionario.setEmail(email);
			funcionario.setRg(rg);
			funcionario.setSexo(sexo);
			funcionario.setDataCadastro(new SimpleDateFormat("dd/mm/YYYY").parse(dataCadastro));
			funcionario.setCpf(cpf);
			funcionario.setCep(cep);
			funcionario.setLogradouro(logradouro);
			funcionario.setNumero(numero);
			funcionario.setBairro(bairro);
			funcionario.setCidade(cidade);
			funcionario.setUf(uf);
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
