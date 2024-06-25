package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.filmes.Cad_Peli;

@WebServlet("/add_filmes")
@MultipartConfig
public class FilmesAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String titulo=req.getParameter("tname");
			String diretor=req.getParameter("dname");
			String genero=req.getParameter("genero");
			Part part=req.getPart("imagem");
			String fileName=part.getSubmittedFileName();
			/*
			Cad_Peli f = new Cad_Peli(titulo, diretor, genero, fileName, "admin");
			System.out.println(f);
			*/
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
