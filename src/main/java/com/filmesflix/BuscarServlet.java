package com.filmesflix;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import filmes.Filme;
import DAO.BuscaDAO;

@WebServlet("/BuscarServlet")
public class BuscarServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BuscaDAO buscaDAO;

    public void buscar (buscar) {
    	
    }
    
    
    public void init() throws ServletException {
        buscaDAO = new BuscaDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            buscarFilmes(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void buscarFilmes(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        String buscar = request.getParameter("buscar");
        try {
            List<Filme> listaFilme = buscaDAO.buscarFilmes(buscar);
            request.setAttribute("listaFilme", listaFilme);
            RequestDispatcher dispatcher = request.getRequestDispatcher("busca.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
