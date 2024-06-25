package filmes;

public class Filme {
	private String titulo;
	private int totalAvaliacoes;
	private double somaAvaliacoes;

	public Filme(String titulo) {
		this.titulo = titulo;
		this.totalAvaliacoes = 0;
		this.somaAvaliacoes = 0;
	}

	public String getTitulo() {
		return titulo;
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
}
