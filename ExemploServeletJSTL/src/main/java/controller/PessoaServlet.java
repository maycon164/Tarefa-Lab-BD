package controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Pessoa;


@WebServlet("/pessoa")
public class PessoaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PessoaServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entrou no servlet");
		
		/*Map<String, String[]> parameterMap = request.getParameterMap();
		Set<String> keySet = parameterMap.keySet();
		
		for(String key: keySet) {
			String[] param = parameterMap.get(key);
			System.out.println(param[0]);
		}*/
				
		String idParam = request.getParameter("id");
		String nomeParam = request.getParameter("nome");
		
		Pessoa pessoa = new Pessoa();
		pessoa.setId(Integer.parseInt(idParam));
		pessoa.setNome(nomeParam);

		List<Pessoa> pessoas = new ArrayList<>();
		Pessoa p1 = new Pessoa();
		p1.setId(2);
		p1.setNome("FULANO");
		Pessoa p2 = new Pessoa();
		p2.setId(19);
		p2.setNome("CICRANO");
		
		pessoas.add(pessoa);
		pessoas.add(p1);
		pessoas.add(p2);
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		request.setAttribute("pessoa", pessoa);
		request.setAttribute("pessoas", pessoas);
		rd.forward(request, response);

	}

}
