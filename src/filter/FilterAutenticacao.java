package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns = { "/principal/*" }) // intercepta todas as requisições do projeto
public class FilterAutenticacao implements Filter {

	public FilterAutenticacao() {

	}

	// Encerra os processo quando o servidor é paradado
	// Mataria os processo de conexão com banco
	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		try {
			
			HttpServletRequest req = (HttpServletRequest) request;
			HttpSession session = req.getSession();
			
			String usuarioLogado = (String) session.getAttribute("usuario");
			
			String urlparaAutenticar = req.getServletPath(); // URL que está sendo acessada
			
			/*Validar se está logado senão redireciona para tela de login(index.jsp)*/
			
			if(usuarioLogado == null && !urlparaAutenticar.equalsIgnoreCase("/principal/ServletUsuario")) {
				
				RequestDispatcher redireciona = request.getRequestDispatcher("/index.jsp?url=" + urlparaAutenticar);
				request.setAttribute("msg", "Por favor realize o login!");
				redireciona.forward(request, response);
				
				return;
			}
			else {
				
				chain.doFilter(request, response);
			}
			
			// connection.comit();
			
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
