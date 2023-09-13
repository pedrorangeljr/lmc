package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoUsuario;
import models.Login;

@WebServlet(urlPatterns = {"/principal/ServletUsuario","/ServletUsuario"})
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DaoUsuario daoUsuario = new DaoUsuario();

	public ServletUsuario() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String email = request.getParameter("email");
			String senha = request.getParameter("senha");
			String url = request.getParameter("url");

			if (email != null && !email.isEmpty() && senha != null && !senha.isEmpty()) {

				Login login = new Login();

				login.setEmail(email);
				login.setSenha(senha);

				if (daoUsuario.validarAutenticacao(login)) {

					request.getSession().setAttribute("usuario", login.getEmail());

					if (url == null || url.equals("null")) {

						url = "principal/principal.jsp";
					}

					RequestDispatcher dispatcher = request.getRequestDispatcher(url);
					dispatcher.forward(request, response);

				} else {

					RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
					request.setAttribute("msg", "Login e /ou Senha errado");
					dispatcher.forward(request, response);

				}
			} else {

				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				request.setAttribute("msg", "Login e /ou Senha errado");
				dispatcher.forward(request, response);
			}

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

}
