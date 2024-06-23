package com.filmesflix;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistroServlet
 */
@WebServlet("/register")
public class RegistroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("name");
		String email = request.getParameter("email");
		String senha = request.getParameter("pass");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/filmes?useSSL=false","root","");
			/*Colocar as mesmas colunas da tabela criada no mysql e na mesma ordem*/
			PreparedStatement pst = con.prepareStatement("INSERT INTO usuario(nome, senha, email) VALUES(?,?,?)");
			pst.setString(1, nome);
			pst.setString(2, senha);
			pst.setString(3, email);
			
			int rowCount = pst.executeUpdate();
			
			dispatcher = request.getRequestDispatcher("registration.jsp");
			
			if(rowCount > 0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
