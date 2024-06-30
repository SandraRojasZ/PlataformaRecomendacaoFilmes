package com.filmesflix;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/logins")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
		
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/filmes","root","");			
			
			PreparedStatement pst = con.prepareStatement("SELECT * FROM usuario WHERE email =? and senha =?");
			pst.setString(1, email);
			pst.setString(2, password);
			
			try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                	session.setAttribute("name", rs.getString("nome"));

                    String TipoUsuario = rs.getString("tipo_user");

                    if ("admin".equals(TipoUsuario)) {
                        dispatcher = request.getRequestDispatcher("/admin.jsp");
                    } else {
                        dispatcher = request.getRequestDispatcher("/user.jsp");
                    }
                } else {
                    request.setAttribute("status", "failed");
                    // se falhar enviará uma msg em login.jsp e continuará na página login.jsp
                    dispatcher = request.getRequestDispatcher("login.jsp");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "error");
            dispatcher = request.getRequestDispatcher("login.jsp");
        }

        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }
    }
}