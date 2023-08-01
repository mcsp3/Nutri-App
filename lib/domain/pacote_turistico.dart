class PacoteTuristico {
  final int desconto;
  final String cidade;
  final String validade;
  final String imagem;
  final String titulo;
  final String desc;
  final int numDiarias;
  final int numPessoas;
  final int precoatual;
  final int precoAnterior;

  const PacoteTuristico({
    required this.cidade,
    required this.validade,
    required this.desconto,
    required this.imagem,
    required this.titulo,
    required this.desc,
    required this.numDiarias,
    required this.numPessoas,
    required this.precoatual,
    required this.precoAnterior,
  });
}
