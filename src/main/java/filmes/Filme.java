package filmes;

public class Filme {
	private String titulo;
	private int totalAvaliacoes;
	private double somaAvaliacoes;
	private String diretor;
	private String genero;
	

	public Filme(String titulo) {
		this.titulo = titulo;		
		this.totalAvaliacoes = 0;
		this.somaAvaliacoes = 0;
		
	}
	
	public Filme(String titulo, String diretor, String genero, Double media) {
		super();
		this.titulo = titulo;
		this.diretor = diretor;
		this.genero = genero;
		//this.MediaAvaliacoes = media;
	}
	
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public double getMediaAvaliacoes() {
		if (totalAvaliacoes == 0) {
			return 0;
		}
		return somaAvaliacoes / totalAvaliacoes;
	}

	public void adicionarAvaliacao(int nota) {
		somaAvaliacoes += nota;
		totalAvaliacoes++;
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
