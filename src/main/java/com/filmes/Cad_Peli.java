package com.filmes;

public class Cad_Peli {
	
	private int id;
	private String titulo;
	private String diretor;
	private String genero;
	private String fotoNome;
	
	public Cad_Peli() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Cad_Peli(String titulo, String diretor, String genero, String fotoNome) {
		super();
		this.titulo = titulo;
		this.diretor = diretor;
		this.genero = genero;
		this.fotoNome = fotoNome;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDiretor() {
		return diretor;
	}

	public void setDiretor(String diretor) {
		this.diretor = diretor;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getFotoNome() {
		return fotoNome;
	}

	public void setFotoNome(String fotoNome) {
		this.fotoNome = fotoNome;
	}

	@Override
	public String toString() {
		return "Cad_Peli [id=" + id + ", titulo=" + titulo + ", diretor=" + diretor + ", genero=" + genero
				+ ", fotoNome=" + fotoNome + "]";
	}
	

}
