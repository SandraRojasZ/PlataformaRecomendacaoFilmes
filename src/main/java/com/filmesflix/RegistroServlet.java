package com.filmesflix;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistroServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String nome = request.getParameter("name");
        String email = request.getParameter("email");
        String senha = request.getParameter("pass");
        String tipoUsuario = "usu�rio"; // Valor autom�tico
        RequestDispatcher dispatcher = null;
        Connection con = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/filmes?useSSL=false", "root", "");

            // Verificar se o email j� existe no banco de dados
            PreparedStatement checkEmailStmt = con.prepareStatement("SELECT * FROM usuario WHERE email = ?");
            checkEmailStmt.setString(1, email);
            ResultSet rs = checkEmailStmt.executeQuery();
            
            if (rs.next()) {
                // Email j� existe
                request.setAttribute("status", "email_exists");
                dispatcher = request.getRequestDispatcher("login.jsp");
            } else {
                // Email n�o existe, inserir novo registro
                PreparedStatement pst = con.prepareStatement("INSERT INTO usuario(nome, senha, email, tipo_user) VALUES(?,?,?,?)");
                pst.setString(1, nome);
                pst.setString(2, senha);
                pst.setString(3, email);
                pst.setString(4, tipoUsuario);

                int rowCount = pst.executeUpdate();
                
                dispatcher = request.getRequestDispatcher("registration.jsp");
                
                if (rowCount > 0) {
                    request.setAttribute("status", "success");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                } else {
                    request.setAttribute("status", "failed");
                }
            }

            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
