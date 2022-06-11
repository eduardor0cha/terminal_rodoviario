class Viagem {
  final String destino;
  final String data;
  String? dataAntiga;
  final String horario;
  String? horarioAntigo;
  final double valor;
  final String viacao;

  Viagem({
    required this.destino,
    required this.data,
    required this.horario,
    required this.valor,
    required this.viacao,
    String? dataAntiga,
    String? horarioAntigo,
  });
}
