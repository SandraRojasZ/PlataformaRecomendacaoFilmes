package filmes;

import filmes.Filme;

public class Busca {
	private String titulo;
	private String diretor;
	private String genero;
	private Double media;

	
	public Busca(String titulo, String diretor, String genero, Double media) {
		this.titulo = titulo;
		this.diretor = diretor;
		this.genero = genero;
		this.media = media;
	}

	
	@Override
	public String toString() {
		return "Busca [titulo=" + titulo + ", diretor=" + diretor + ", genero=" + genero + ", media=" + media + "]";
	}
	
	
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Double getMedia() {
		return media;
	}


	public void setMedia(Double media) {
		this.media = media;
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

}
	
	
	
	