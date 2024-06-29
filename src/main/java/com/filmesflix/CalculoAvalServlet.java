package com.filmesflix;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import filmes.Filme;

/**
 * Servlet implementation class RegistroServlet
 */
@WebServlet("/CalculoAvalServlet")
public class CalculoAvalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Simulando um banco de dados com um mapa
	private Map<String, Filme> filmes = new HashMap<>();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String titulo = request.getParameter("titulo");

		int nota = Integer.parseInt(request.getParameter("nota"));

		Filme filme = filmes.get(titulo);

		if (filme == null) {
			filme = new Filme(titulo);
			filmes.put(titulo, filme);
		}

		filme.adicionarAvaliacao(nota);

		response.setContentType("text/html");
		response.getWriter().println("<html><body>");
		response.getWriter().println("<h1>Avaliação enviada com sucesso!</h1>");
		response.getWriter().println("<p>Título: " + filme.getTitulo() + "</p>");
		response.getWriter().println("<p>Média Atual: " + filme.getMediaAvaliacoes() + "</p>");
		response.getWriter().println("</body></html>");
				
		RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/filmes?useSSL=false", "root", "");

            // SQL para atualizar a média da avaliação
            String updateSQL = "UPDATE cad_peli SET media = ? WHERE titulo = ?";
            PreparedStatement pst = con.prepareStatement(updateSQL);
            
            pst.setDouble(1, filme.getMediaAvaliacoes());
            pst.setString(2, titulo);

            int rowCount = pst.executeUpdate();

            dispatcher = request.getRequestDispatcher("avaliar.jsp");

            if (rowCount > 0) {
                request.setAttribute("status", "success");               
            } else {
                request.setAttribute("status", "failed");
            }

            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

}